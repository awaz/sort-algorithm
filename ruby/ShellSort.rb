# coding: utf-8

def init size
  a = Array.new
  
  (0..size).each do |n|
    a[n] = Random.new.rand 0..size
  end

  return a
end

def shell_sort array
  s = array.size
  gap = s / 2

  while gap > 0
    gap.upto(s-1) do |right|

      key = array[right]
      left = right

      while left > 0 && key < array[left-1] do
        array[left] = array[left-1]
        left -= 1
      end

      array[left] = key
    end

    gap /= 2
  end

  return array
end

shell_sort(init(1000))
