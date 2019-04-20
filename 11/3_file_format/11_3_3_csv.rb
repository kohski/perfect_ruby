require 'csv'

p ['I','my','me','mine'].to_csv # => "I,my,me,mine\n"
p "I,my,me,mine\n".parse_csv #=>["I", "my", "me", "mine"]

csv = CSV.new(<<EOS)
foo,bar,baz
hoge,fuga,piyo
EOS

csv.each do |row|
  puts row.join('|')
end

data = <<EOS
foo,bar,baz
hoge,fuga,piyo
EOS

CSV.parse(data) do |row|
  p row.join('|')
end
