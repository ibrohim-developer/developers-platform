'use client'

import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
} from '@/components/ui/dialog'
import { Button } from '@/components/ui/button'
import { AlertTriangle, CheckCircle } from 'lucide-react'

interface SubmitDialogProps {
  open: boolean
  onOpenChange: (open: boolean) => void
  onConfirm: () => void
  answeredCount: number
  totalQuestions: number
  isSubmitting?: boolean
}

export function SubmitDialog({
  open,
  onOpenChange,
  onConfirm,
  answeredCount,
  totalQuestions,
  isSubmitting = false,
}: SubmitDialogProps) {
  const unanswered = totalQuestions - answeredCount
  const allAnswered = unanswered === 0

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent>
        <DialogHeader>
          <DialogTitle className="flex items-center gap-2">
            {allAnswered ? (
              <CheckCircle className="h-5 w-5 text-green-500" />
            ) : (
              <AlertTriangle className="h-5 w-5 text-amber-500" />
            )}
            Submit Test
          </DialogTitle>
          <DialogDescription>
            {allAnswered ? (
              'You have answered all questions. Are you ready to submit your test?'
            ) : (
              <>
                You have <span className="font-semibold text-amber-600">{unanswered} unanswered</span> question{unanswered > 1 ? 's' : ''}.
                Are you sure you want to submit?
              </>
            )}
          </DialogDescription>
        </DialogHeader>

        <div className="py-4">
          <div className="bg-muted rounded-lg p-4">
            <div className="grid grid-cols-2 gap-4 text-sm">
              <div>
                <p className="text-muted-foreground">Answered</p>
                <p className="text-2xl font-bold text-green-600">{answeredCount}</p>
              </div>
              <div>
                <p className="text-muted-foreground">Unanswered</p>
                <p className="text-2xl font-bold text-amber-600">{unanswered}</p>
              </div>
            </div>
          </div>
        </div>

        <DialogFooter>
          <Button variant="outline" onClick={() => onOpenChange(false)} disabled={isSubmitting}>
            Continue Test
          </Button>
          <Button onClick={onConfirm} disabled={isSubmitting}>
            {isSubmitting ? 'Submitting...' : 'Submit Test'}
          </Button>
        </DialogFooter>
      </DialogContent>
    </Dialog>
  )
}
