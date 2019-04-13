def greet(name, message='Hi',suffix=":-)")
  "#{name}, #{message} #{suffix}"
end

greet("Yoko") # => "Yoko, Hi :-)"
greet("Yoko","I love you",";-(") # => "Yoko, I love you ;-("
greet('Yoko',nil,nil) # => "Yoko,  "