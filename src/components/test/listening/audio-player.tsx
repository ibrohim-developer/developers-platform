'use client'

import { useAudioPlayer } from '@/hooks/use-audio-player'
import { Button } from '@/components/ui/button'
import { Progress } from '@/components/ui/progress'
import { Play, Pause, Volume2, VolumeX } from 'lucide-react'
import { useState } from 'react'

interface AudioPlayerProps {
  audioUrl: string
  onEnded?: () => void
  allowReplay?: boolean
}

export function AudioPlayer({ audioUrl, onEnded, allowReplay = false }: AudioPlayerProps) {
  const [hasPlayed, setHasPlayed] = useState(false)
  const [isMuted, setIsMuted] = useState(false)

  const {
    isPlaying,
    isLoaded,
    currentTime,
    duration,
    progress,
    play,
    pause,
    toggle,
    setVolume,
  } = useAudioPlayer(audioUrl, {
    onEnded: () => {
      setHasPlayed(true)
      onEnded?.()
    }
  })

  const formatTime = (seconds: number) => {
    const mins = Math.floor(seconds / 60)
    const secs = Math.floor(seconds % 60)
    return `${mins}:${secs.toString().padStart(2, '0')}`
  }

  const handleMuteToggle = () => {
    if (isMuted) {
      setVolume(1)
      setIsMuted(false)
    } else {
      setVolume(0)
      setIsMuted(true)
    }
  }

  const canPlay = allowReplay || !hasPlayed

  return (
    <div className="rounded-xl bg-gradient-to-r from-blue-50 to-indigo-50 dark:from-blue-950/30 dark:to-indigo-950/30 p-6 border">
      <div className="flex items-center gap-4">
        <Button
          size="lg"
          variant={isPlaying ? 'secondary' : 'default'}
          onClick={toggle}
          disabled={!isLoaded || !canPlay}
          className="h-14 w-14 rounded-full shrink-0"
        >
          {isPlaying ? <Pause className="h-6 w-6" /> : <Play className="h-6 w-6 ml-1" />}
        </Button>

        <div className="flex-1 space-y-2">
          <Progress value={progress} className="h-2" />
          <div className="flex justify-between text-sm text-muted-foreground">
            <span>{formatTime(currentTime)}</span>
            <span>{formatTime(duration)}</span>
          </div>
        </div>

        <Button
          variant="ghost"
          size="icon"
          onClick={handleMuteToggle}
          className="shrink-0"
        >
          {isMuted ? <VolumeX className="h-5 w-5" /> : <Volume2 className="h-5 w-5" />}
        </Button>
      </div>

      {!allowReplay && (
        <div className="mt-4 text-center">
          {hasPlayed ? (
            <p className="text-sm text-amber-600 dark:text-amber-400 font-medium">
              Audio has been played. In the real IELTS test, you only hear it once.
            </p>
          ) : (
            <p className="text-sm text-muted-foreground">
              Note: Audio will only play once, just like the real IELTS test
            </p>
          )}
        </div>
      )}
    </div>
  )
}
