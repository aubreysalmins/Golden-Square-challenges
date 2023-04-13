def check_grammar(sentence)
  fail "Not a sentence." if sentence.empty?
  sentence_is_capitalised = sentence == sentence.capitalize
  last_char_is_correct_punctuation = [".", "!", "?"].include? sentence[-1] 
  if sentence_is_capitalised && last_char_is_correct_punctuation
    return true    
  else
    return false
  end
end