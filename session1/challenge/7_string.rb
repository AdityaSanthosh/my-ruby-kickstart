# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  flag = false
  res = ""
  string.chars.each do |val|
    if flag
      flag = false
      res << val
    end
    if %w[r R].include? val
      flag = true
    end
  end
  res
end
