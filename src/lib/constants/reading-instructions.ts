export const QUESTION_TYPE_INSTRUCTIONS: Record<string, string> = {
  true_false_not_given:
    "Choose TRUE if the statement agrees with the information given in the text, choose FALSE if the statement contradicts the information, or choose NOT GIVEN if there is no information on this.",
  multiple_choice: "Choose the correct letter, A, B, C or D.",
  fill_in_blank:
    "Complete the sentences below. Write NO MORE THAN TWO WORDS from the passage for each answer.",
  sentence_completion:
    "Complete the sentences below. Write NO MORE THAN TWO WORDS from the passage for each answer.",
};

export function getTypeInstruction(type: string): string {
  return QUESTION_TYPE_INSTRUCTIONS[type] ?? "";
}
