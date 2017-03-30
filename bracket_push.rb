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
    if string.include?('{') && string.include?('[')
      return string.count('{') == string.count('}') && string.count('[') == string.count(']')
    end
    if string.include?('{')
      return string.count('{') == string.count('}')
    end
    if string.include?('[')
      return string.count('[') == string.count(']')
    end
    if string.include?('(') || string.include?(')')
      string.count('(') == string.count(')')
    end
  end
end
