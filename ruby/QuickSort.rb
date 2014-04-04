# coding: utf-8

def init size
  a = Array.new
  
  (0..size).each do |n|
    a[n] = Random.new.rand 0..size
  end

  return a
end

def quick_sort array
  return array if array.size < 1

  pivot = array[0]
  right = []
  left = []

  1.upto(array.size-1) do |x|
    if array[x] <= pivot
      left.push array[x]
    else
      right.push array[x]
    end
  end

  left = quick_sort left
  right = quick_sort right

  return left + [pivot] + right
end

quick_sort(init(1000))
