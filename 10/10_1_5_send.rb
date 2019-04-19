class Hello
  def hi
    'hi'
  end

  def hello(name)
    "hello, #{name}"
  end

  protected
  def protected_hello
    'protected_hello'
  end

  private
  def private_hello
    'private_hello'
  end
end

hello = Hello.new

# sendは引数にとったシンボルと同名のメソッドをレシーバーのオブジェクトに置いて実施
hello.send :hi # => "hi"
hello.send :hello,'Yoko' # => "hello, Yoko"

# methodの可視性は関係なし
hello.send :protected_hello # => "protected_hello"
hello.send :private_hello # => "private_hello"

# sendはよくある名前なので、__send__という別名が用意されている
hello.__send__ :hello,'Yoko' # => "hello, Yoko"