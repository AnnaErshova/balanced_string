def balanced?(input_string)
  check_validity(input_string) ? 
    "invalid" : ((input_string.scan(/[(]/).length == input_string.scan(/[)]/).length) ? true : false)
end

def check_validity(input_string)
  true if 
    (input_string.index(')') != nil && input_string.index(')') < input_string.index('(')) || 
    (input_string.index('(') != nil && input_string.rindex(')') < input_string.rindex('('))
end