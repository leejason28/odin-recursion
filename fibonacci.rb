def fibs(num)
  arr = []
  for i in 0...num
    if i==0 || i==1
      arr.push(i)
    else
      arr.push(arr[i-1] + arr[i-2])
    end
  end
  arr
end

p fibs(8)

def fibs_rec(num)
  if num==0
    [0]
  elsif num==1
    [0,1]
  else
    fibs_rec(num-1) << fibs_rec(num-1)[-1] + fibs_rec(num-1)[-2]
  end
end

p fibs_rec(8)