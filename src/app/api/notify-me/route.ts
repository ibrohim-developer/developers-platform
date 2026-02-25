import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

export async function POST(request: NextRequest) {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const { feature } = await request.json();

  if (!feature || typeof feature !== "string") {
    return NextResponse.json(
      { error: "feature is required" },
      { status: 400 }
    );
  }

  const { error } = await supabase.from("feature_notifications").insert({
    user_id: user.id,
    feature,
  });

  if (error) {
    if (error.code === "23505") {
      return NextResponse.json({ message: "Already subscribed" });
    }
    return NextResponse.json(
      { error: "Failed to subscribe" },
      { status: 500 }
    );
  }

  return NextResponse.json({ message: "Subscribed successfully" });
}

export async function GET() {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const { data, error } = await supabase
    .from("feature_notifications")
    .select("feature")
    .eq("user_id", user.id);

  if (error) {
    return NextResponse.json(
      { error: "Failed to fetch notifications" },
      { status: 500 }
    );
  }

  return NextResponse.json({
    features: (data ?? []).map((d) => d.feature),
  });
}
