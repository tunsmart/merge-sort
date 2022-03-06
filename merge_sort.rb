def merge(l,r)
    result = []
    until l.empty? || r.empty?
      if l[0] < r[0]
        result << l.shift
      else
        result << r.shift
     end
    end
    result << l if !l.empty? && r.empty?
    result << r if l.empty? && !r.empty?
    result.flatten
  end
 
 def merge_sort(arr)
     if arr.length < 2
         arr
     else
         left_arr = merge_sort(arr.slice!(0,arr.length/2))
         right_arr = merge_sort(arr)
         merge(left_arr, right_arr)
     end
 end
 
 p merge_sort([1001,21,9,1000,2,1,5,200,10,11,8,3,6,4])