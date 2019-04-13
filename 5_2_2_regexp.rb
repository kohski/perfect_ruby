#正規表現クラス
/[0-9]+/ === 'ruby' # => false
/[0-9]+/ === 'ruby2' # => true

/[0-9]+/ =~ 'ruby' # => nil
/[0-9]/ =~ 'ruby3' # => 4

# MatchDataObject

str = 'ruby5'

if matched = /[0-9]/.match(str)
  p matched
end


# >> #<MatchData "5">