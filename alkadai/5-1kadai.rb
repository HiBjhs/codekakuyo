$label = 1 # グローーバル変数

def stree(h)
 if h < 0
   return nil
 else
  left = stree(2*h - 1)  # 高さh-1で左部分木を生成
  v = $label   
   $label += 1
 
  right = stree(2*h - 2) # 高さh-1で右部分木を生成
   [v,left, right] # ノードを生成
 end
end

print stree(3)

