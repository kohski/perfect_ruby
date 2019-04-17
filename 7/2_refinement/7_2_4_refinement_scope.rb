require_relative './7_2_5_create_proc'

module RefineModule
  refine String do
    def hello
      puts "#{self} hello"
    end
  end
end

using RefineModule

pr = create_proc

# これはエラーになる、Refineのスコープは同一ファイルとなっており、
# 上書きする処理を利用する部分とRefineの記述が同一ファイルにある必要がある
pr.call