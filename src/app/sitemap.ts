import type { MetadataRoute } from "next";
import { createClient } from "@supabase/supabase-js";

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!
);

const BASE = "https://bandup.uz";

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const [{ data: readingPassages }, { data: listeningSections }, { data: writingTasks }] =
    await Promise.all([
      supabase
        .from("reading_passages")
        .select("test_id, tests!inner(id, updated_at, is_published)")
        .eq("tests.is_published", true),
      supabase
        .from("listening_sections")
        .select("test_id, tests!inner(id, updated_at, is_published)")
        .eq("tests.is_published", true),
      supabase
        .from("writing_tasks")
        .select("test_id, tests!inner(id, updated_at, is_published)")
        .eq("tests.is_published", true),
    ]);

  const staticRoutes: MetadataRoute.Sitemap = [
    { url: BASE, lastModified: new Date(), changeFrequency: "weekly", priority: 1 },
    { url: `${BASE}/faq`, lastModified: new Date(), changeFrequency: "monthly", priority: 0.6 },
    { url: `${BASE}/about`, lastModified: new Date(), changeFrequency: "monthly", priority: 0.6 },
    { url: `${BASE}/for-business`, lastModified: new Date(), changeFrequency: "monthly", priority: 0.5 },
  ];

  const seen = new Set<string>();

  const addTestRoutes = (
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    data: any[] | null,
    module: string
  ): MetadataRoute.Sitemap => {
    if (!data) return [];
    const routes: MetadataRoute.Sitemap = [];
    for (const row of data) {
      const key = `${module}/${row.test_id}`;
      if (seen.has(key)) continue;
      seen.add(key);
      const test = row.tests as { id: string; updated_at: string };
      routes.push({
        url: `${BASE}/dashboard/${module}/${test.id}`,
        lastModified: new Date(test.updated_at),
        changeFrequency: "weekly" as const,
        priority: 0.8,
      });
    }
    return routes;
  };

  return [
    ...staticRoutes,
    ...addTestRoutes(readingPassages, "reading"),
    ...addTestRoutes(listeningSections, "listening"),
    ...addTestRoutes(writingTasks, "writing"),
  ];
}
