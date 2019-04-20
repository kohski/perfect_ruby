require 'yaml'
require 'pathname'

yaml_string = <<EOS
remote:
  host: localhost
  port: 22
  ssh: true
  username: user
  password: null
EOS

setting = YAML.load(yaml_string) # => {"remote"=>{"host"=>"localhost", "port"=>22, "ssh"=>true, "username"=>"user", "password"=>nil}}

setting['remote'].update('host' => 'example.com')

dump = YAML.dump(setting) # => "---\nremote:\n  host: example.com\n  port: 22\n  ssh: true\n  username: user\n  password: \n"
File.write 'test.yml',dump