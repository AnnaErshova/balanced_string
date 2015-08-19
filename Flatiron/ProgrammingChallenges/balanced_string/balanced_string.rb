def balanced?(input_string)
    if (input_string.index(')') != nil && input_string.index(')') < input_string.index('(')) || 
      (input_string.index(')') != nil && input_string.rindex(')') < input_string.rindex('('))
      "invalid"
    else
      (input_string.scan(/[(]/).length == input_string.scan(/[)]/).length) ? true : false
    end
end