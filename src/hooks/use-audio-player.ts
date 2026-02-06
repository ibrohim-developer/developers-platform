"use client"

import { useState, useRef, useCallback, useEffect } from 'react'

interface UseAudioPlayerOptions {
  onEnded?: () => void
  onTimeUpdate?: (currentTime: number, duration: number) => void
}

export function useAudioPlayer(audioUrl: string, options: UseAudioPlayerOptions = {}) {
  const audioRef = useRef<HTMLAudioElement | null>(null)
  const [isPlaying, setIsPlaying] = useState(false)
  const [currentTime, setCurrentTime] = useState(0)
  const [duration, setDuration] = useState(0)
  const [isLoaded, setIsLoaded] = useState(false)
  const [volume, setVolumeState] = useState(1)

  useEffect(() => {
    const audio = new Audio(audioUrl)
    audioRef.current = audio

    const handleLoadedMetadata = () => {
      setDuration(audio.duration)
      setIsLoaded(true)
    }

    const handleTimeUpdate = () => {
      setCurrentTime(audio.currentTime)
      options.onTimeUpdate?.(audio.currentTime, audio.duration)
    }

    const handleEnded = () => {
      setIsPlaying(false)
      options.onEnded?.()
    }

    audio.addEventListener('loadedmetadata', handleLoadedMetadata)
    audio.addEventListener('timeupdate', handleTimeUpdate)
    audio.addEventListener('ended', handleEnded)

    return () => {
      audio.removeEventListener('loadedmetadata', handleLoadedMetadata)
      audio.removeEventListener('timeupdate', handleTimeUpdate)
      audio.removeEventListener('ended', handleEnded)
      audio.pause()
    }
  }, [audioUrl, options])

  const play = useCallback(() => {
    audioRef.current?.play()
    setIsPlaying(true)
  }, [])

  const pause = useCallback(() => {
    audioRef.current?.pause()
    setIsPlaying(false)
  }, [])

  const toggle = useCallback(() => {
    if (isPlaying) {
      pause()
    } else {
      play()
    }
  }, [isPlaying, play, pause])

  const seek = useCallback((time: number) => {
    if (audioRef.current) {
      audioRef.current.currentTime = time
    }
  }, [])

  const setVolume = useCallback((vol: number) => {
    const clampedVolume = Math.max(0, Math.min(1, vol))
    if (audioRef.current) {
      audioRef.current.volume = clampedVolume
    }
    setVolumeState(clampedVolume)
  }, [])

  return {
    isPlaying,
    isLoaded,
    currentTime,
    duration,
    volume,
    play,
    pause,
    toggle,
    seek,
    setVolume,
    progress: duration > 0 ? (currentTime / duration) * 100 : 0,
  }
}
