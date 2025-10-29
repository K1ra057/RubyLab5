def replace_constants(code)

  code.gsub!(/\b0[xX][0-9a-fA-F]+\b/, 'hexagonal')

  code.gsub!(/\b0[0-7]+\b/, 'octagonal')
  
  code.gsub!(/\b\d+\b/, 'decimal')
  
  code
end

code_snippet = [
  "int decimal_num = 123;",
  "int octal_num = 0123;",
  "int hex_num = 0x123;",
  "int sum = decimal_num + octal_num + hex_num;"
]

code_snippet.each_with_index do |line, index|
  code_snippet[index] = replace_constants(line)
end

code_snippet.each { |line| puts line }
