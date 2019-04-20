require 'csv'

data = <<EOS
name,age,gender
yoko,28,femal
kosuke,29,male
EOS

CSV.parse(data, headers: :first_row) do |row|
  # name = row['name']
  name,age,gender = row.values_at('name','age','gender')
  puts "#{name} is #{gender} (#{age})"
end
# >> yoko is femal (28)
# >> kosuke is male (29)