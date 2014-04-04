# coding: utf-8

def init size
  a = Array.new
  
  (0..size).each do |n|
    a[n] = Random.new.rand 0..size
  end

  return a
end

def insertion_sort array
  s = array.size

  1.upto(s-1) do |right|
    key = array[right]
    left = right

    while left > 0 && key < array[left-1]
      array[left-1], array[left] = array[left], array[left-1]
      left -= 1
    end
  end

  return array
end

def insertion_swap_sort array
  s = array.size
  
  1.upto(s-1) do |right|
    left = right
    
    while left > 0 && array[left] < array[left-1]
      array[left-1], array[left] = array[left], array[left-1]
      left -= 1
    end
  end

  return array
end

insertion_sort init(1000)
insertion_swap_sort init(1000)
