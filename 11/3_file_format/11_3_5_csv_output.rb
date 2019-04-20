require 'csv'
puts [
  %w(hasha sine kasu),
  %w(kuzu baka hage)
].map(&:to_csv).join # => 




puts '-----------------'
headers = %w(name age gender)
people = [
  ['yoko',28,'female'],
  ['kosuke',29,'male']
]
csv_string = CSV.generate('',write_headers: true, headers: headers) {|csv|
  people.each do |person|
    csv << person
  end
}

puts csv_string
