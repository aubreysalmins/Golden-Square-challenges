def todo_finder(text)
  if text == ""
    fail "No text given."
  elsif
    text.include? "#TODO"
    return true
  else
    return false
  end
end