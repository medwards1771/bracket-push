class Brackets
  def self.paired?(string)
    return true if string == ''
    return false unless leading_character?(string[0])
    return true if matching_brackets(string)
  end

  def self.leading_character?(char)
    char == '(' || char == '{' || char == '['
  end

  def self.matching_brackets(string)
    string = string.gsub("{", "(")
    string = string.gsub("[", "(")
    string = string.gsub("}", ")")
    string = string.gsub("]", ")")
    string.count("(") == string.count(")")
  end
end
