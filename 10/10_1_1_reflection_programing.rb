class HaveInstanceVal
  def initialize
    @foo = 1
    @bar = 2
  end
end

# インスタンスの作成
have_instnace_val = HaveInstanceVal.new

# インスタンス変数のリスト表示
have_instnace_val.instance_variables # => [:@foo, :@bar]
# インスタンス変数のany問い合わせ
ans = have_instnace_val.instance_variables.any? do |instance_val_name|
  instance_val_name =~ /fo/
end
ans # => true

# インスタンス変数のselect 問い合わせ
ans = have_instnace_val.instance_variables.select do |instance_val_name|
  instance_val_name =~ /fo/
end
ans # => [:@foo]

have_instnace_val.instance_variable_defined? :@foo # => true
have_instnace_val.instance_variable_defined? :@buz # => false
# have_instnace_val.instance_variable_defined? :foo # => 

# getterメソッドがないけど、インスタンス変数にアクセスできる
have_instnace_val.instance_variable_get :@foo # => 1
have_instnace_val.instance_variable_get :@buz # => nil # !> instance variable @buz not initialized
# have_instnace_val.instance_variable_get :foo # => 

# setも可能
have_instnace_val.instance_variable_get :@foo # => 1
have_instnace_val.instance_variable_set :@foo,'hogehoge' # => "hogehoge"
have_instnace_val.instance_variable_get :@foo # => "hogehoge"