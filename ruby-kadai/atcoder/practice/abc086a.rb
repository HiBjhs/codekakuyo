a,b = gets.split(" ").map{|c| c.to_i}
s =  (a*b).even?
if s==true then print ("Even")
elsif s==false then print ("Odd") end