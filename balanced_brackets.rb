def check_balanced_brackets?(entered_string)
  stack = []
  entered_string.chars.each do |c|
    case c
      when '(', '{', '['
            stack.push(c)
      when ')'
          return false if stack.pop() != '('
      when '}'
          return false if stack.pop() != '{'
      when ']'
          return false if stack.pop() != '['
        end
    end
  stack.empty?
end

puts "Enter string :"
entered_string = gets
puts check_balanced_brackets?(entered_string)
