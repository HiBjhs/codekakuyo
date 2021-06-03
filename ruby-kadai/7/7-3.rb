class List < Array
  def reverse_array
    inject([]) do |m, n| m.unshift n end
  end
end

p List[true,2,'t',4,"kyou"].reverse_array
p List[].reverse_array

class List1 < Array
def array_reverse
  each_with_object([]){|m,n| n.unshift m}
end
end

p List1[12,23,4,5,76].array_reverse
