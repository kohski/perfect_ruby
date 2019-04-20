require 'erb'

erb = ERB.new(<<-EOS)
<% if false %>True!!<% else %>False!!<% end %>
EOS

erb.run binding # => nil
# >> False!!