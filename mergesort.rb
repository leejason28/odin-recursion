def merge_sort(arr)
  if arr.length < 2
    arr
  else
    left = arr[0..(arr.length/2)-1]     # left will always be shorter in event of odd # elements
    right = arr[arr.length/2..-1]
    merge(merge_sort(left), merge_sort(right))
    # sort left half
    # sort right half
    # merge sorted halves
  end
end

def merge(left, right)
  lind = 0
  rind = 0
  arr = []
  while lind<left.length && rind<right.length

    if left[lind] <= right[rind]      # if we have identical elements, we will pull from left side first
      arr.push(left[lind])
      lind += 1
    else
      arr.push(right[rind])
      rind += 1
    end

    if lind==left.length
      arr << right[rind..-1]
      rind = right.length
    elsif rind==right.length
      arr << left[lind..-1]
      lind = left.length
    end

  end
  arr.flatten
end

#arr = [4,3,5,2,1]
#p arr
#p merge_sort(arr)

#random_100_array = []
#for i in 0..100
  #random_100_array.push(Random.rand(100))
#end
#p random_100_array
#p merge_sort(random_100_array)