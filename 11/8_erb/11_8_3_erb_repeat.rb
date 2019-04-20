require 'erb'

people = %w(yoko tomowo tim) # !> assigned but unused variable - people

erb = ERB.new(<<-EOS,nil,'-') # !> Passing trim_mode with the 3rd argument of ERB.new is deprecated. Use keyword argument like ERB.new(str, trim_mode: ...) instead.
<%- people.each do |person| %>
  * <%= person %>
<%- end %>
EOS

erb.run binding # => nil

# >> 
# >>   * yoko
# >> 
# >>   * tomowo
# >> 
# >>   * tim
# >> 