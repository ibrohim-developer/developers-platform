"use client";

import { useEffect, useState, useCallback, createContext, useContext } from "react";
import { useRouter, usePathname } from "next/navigation";
import { createClient } from "@/lib/supabase/client";

interface TelegramContextValue {
  isTelegram: boolean;
  isReady: boolean;
  authError: string | null;
  retryAuth: () => void;
}

const TelegramContext = createContext<TelegramContextValue>({
  isTelegram: false,
  isReady: false,
  authError: null,
  retryAuth: () => {},
});

export function useTelegram() {
  return useContext(TelegramContext);
}

function getTelegramWebApp() {
  return (
    window as unknown as {
      Telegram?: {
        WebApp?: {
          initData: string;
          ready: () => void;
          expand: () => void;
          disableVerticalSwipes: () => void;
          colorScheme: string;
          BackButton: {
            show: () => void;
            hide: () => void;
            onClick: (cb: () => void) => void;
            offClick: (cb: () => void) => void;
          };
        };
      };
    }
  )?.Telegram?.WebApp;
}

export function TelegramProvider({ children }: { children: React.ReactNode }) {
  const [isTelegram, setIsTelegram] = useState(false);
  const [isReady, setIsReady] = useState(false);
  const [authError, setAuthError] = useState<string | null>(null);
  const router = useRouter();
  const pathname = usePathname();

  const authenticate = useCallback(async () => {
    const WebApp = getTelegramWebApp();
    if (!WebApp || !WebApp.initData) return;

    setAuthError(null);

    try {
      const supabase = createClient();
      const {
        data: { session },
      } = await supabase.auth.getSession();

      if (session) {
        console.log("[TG Auth] Existing session found");
        WebApp.ready();
        WebApp.expand();
        setIsReady(true);
        return;
      }

      console.log("[TG Auth] No session, authenticating with initData...");
      const response = await fetch("/api/auth/telegram/mini-app", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ initData: WebApp.initData }),
      });

      if (!response.ok) {
        const errData = await response.json().catch(() => ({}));
        const msg = errData.error || `API error: ${response.status}`;
        console.error("[TG Auth] API failed:", msg);
        setAuthError(msg);
        return;
      }

      const data = await response.json();
      if (!data.token_hash) {
        console.error("[TG Auth] No token_hash in response:", data);
        setAuthError("Authentication failed: no token received");
        return;
      }

      console.log("[TG Auth] Got token_hash, verifying OTP...");
      const { error: otpError } = await supabase.auth.verifyOtp({
        token_hash: data.token_hash,
        type: "magiclink",
      });

      if (otpError) {
        console.error("[TG Auth] verifyOtp failed:", otpError.message);
        setAuthError(`Login failed: ${otpError.message}`);
        return;
      }

      // Confirm session was actually established
      const { data: { session: newSession } } = await supabase.auth.getSession();
      if (!newSession) {
        console.error("[TG Auth] Session not established after verifyOtp");
        setAuthError("Login failed: session not created");
        return;
      }

      console.log("[TG Auth] Authenticated successfully");

      if (
        pathname === "/" ||
        pathname?.startsWith("/sign-in") ||
        pathname?.startsWith("/sign-up")
      ) {
        router.replace("/dashboard");
      }
    } catch (err) {
      console.error("[TG Auth] Unexpected error:", err);
      setAuthError("Login failed: unexpected error");
    } finally {
      const wa = getTelegramWebApp();
      wa?.ready();
      wa?.expand();
      setIsReady(true);
    }
  }, [pathname, router]);

  useEffect(() => {
    const WebApp = getTelegramWebApp();

    if (!WebApp || !WebApp.initData) {
      setIsReady(true);
      return;
    }

    setIsTelegram(true);
    WebApp.disableVerticalSwipes();

    const backHandler = () => router.back();

    authenticate();

    WebApp.BackButton.onClick(backHandler);

    return () => {
      WebApp.BackButton.offClick(backHandler);
    };
  }, []);

  useEffect(() => {
    if (!isTelegram) return;

    const WebApp = (
      window as unknown as {
        Telegram?: {
          WebApp?: {
            BackButton: { show: () => void; hide: () => void };
          };
        };
      }
    )?.Telegram?.WebApp;

    if (!WebApp) return;

    if (pathname === "/dashboard") {
      WebApp.BackButton.hide();
    } else {
      WebApp.BackButton.show();
    }
  }, [pathname, isTelegram]);

  return (
    <TelegramContext.Provider value={{ isTelegram, isReady, authError, retryAuth: authenticate }}>
      {isTelegram && authError && (
        <div style={{
          position: 'fixed', inset: 0, zIndex: 9999,
          display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center',
          background: 'var(--background, #fff)', padding: '24px', textAlign: 'center',
        }}>
          <p style={{ fontSize: '16px', fontWeight: 600, marginBottom: '8px' }}>
            Login failed
          </p>
          <p style={{ fontSize: '14px', color: '#888', marginBottom: '20px' }}>
            {authError}
          </p>
          <button
            onClick={() => { setIsReady(false); setAuthError(null); authenticate(); }}
            style={{
              padding: '12px 32px', borderRadius: '12px', border: 'none',
              background: 'var(--primary, #2563eb)', color: '#fff',
              fontSize: '15px', fontWeight: 600, cursor: 'pointer',
            }}
          >
            Try Again
          </button>
        </div>
      )}
      {children}
    </TelegramContext.Provider>
  );
}
