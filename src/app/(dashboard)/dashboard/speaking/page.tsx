import { Mic } from "lucide-react";

export default function SpeakingPage() {
  return (
    <div className="flex-1 flex flex-col items-center justify-center relative min-h-[calc(100vh-80px)]">
      <div className="max-w-2xl w-full text-center space-y-8">
        <div className="flex flex-col items-center justify-center">
          <div className="relative w-32 h-32 flex items-center justify-center">
            <div className="absolute inset-0 border-2 border-primary/20 rounded-full" />
            <div className="absolute inset-2 border-2 border-primary/40 rounded-full" />
            <div className="absolute inset-4 border-2 border-primary/60 rounded-full" />
            <div className="bg-background p-4 rounded-full z-10 shadow-sm border border-border">
              <Mic className="w-14 h-14 text-primary" strokeWidth={1.5} />
            </div>
          </div>
        </div>

        <div className="space-y-4">
          <h1 className="text-5xl md:text-6xl font-black tracking-tighter uppercase leading-tight">
            Speaking is <br />
            Coming Soon
          </h1>
          <p className="text-lg text-muted-foreground max-w-md mx-auto leading-relaxed">
            We are fine-tuning our AI to give you the most accurate speaking
            feedback. Get ready to practice with a real-time AI examiner.
          </p>
        </div>

        <div className="pt-4">
          <button className="bg-primary text-primary-foreground px-10 py-4 rounded-full font-black text-sm tracking-widest hover:opacity-90 transition-all uppercase shadow-lg shadow-primary/20">
            Notify Me
          </button>
        </div>

        <div className="pt-12 flex justify-center gap-1.5">
          <div className="w-12 h-1 bg-primary rounded-full" />
          <div className="w-2 h-1 bg-muted rounded-full" />
          <div className="w-2 h-1 bg-muted rounded-full" />
        </div>
      </div>

      <div className="absolute top-0 right-0 p-12 opacity-5 select-none pointer-events-none">
        <span className="text-[200px] font-black leading-none">AI</span>
      </div>
    </div>
  );
}
