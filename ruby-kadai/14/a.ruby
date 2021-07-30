module Output
  def self.console_and_file(output_file)
    defout = Object.new
    defout.instance_eval { @ofile = open(output_file, 'w') }
    class << defout
      def write(str)
        STDOUT.write(str)
        @ofile.write(str)
      end
    end
    $stdout = defout
  end
end

Output.console_and_file('output.txt')

text=open("alice1.txt").read.downcase#ファイルを開いて読み込む

def Tikan(e,n,m)#メゾットの定義と呼び出し
  for i in 0..e.size-1 do #0から対象のデータをー1にしていく。それを繰り返す

      if e[i..i+n.size-1]==n[0..n.size-1] && (e[i-1]&&e[i+n.size]==" "||"/n"||","||"."||"!"||"?") then#条件分岐eとnが同じでさらにe[i-1]かつe[i+n.size]な時で" "||"/n"||","||"."||"!"||"?"が一つでもあれば
      e[i..i+n.size-1]=m #e[i..i+n.size-1]にmを代入する
    end
  end
  return e#eの値を返す
end
n="alice"#変数nに置換したい文字列を代入
m="のぞみ"#変数mに任意の文字を代入
p Tikan(text,n,m) #text,n,m を置き換えたrを出力
