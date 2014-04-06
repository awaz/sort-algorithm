# coding: utf-8

def init size
  a = Array.new
  
  (0..size).each do |n|
    a[n] = Random.new.rand 0..size
  end

  return a
end

def gnome_sort array
  i = 1

  while i < array.size
    if array[i-1] > array[i]
      array[i-1], array[i] = array[i], array[i-1]
      i -= 1 if i > 1
    else
      i += 1
    end
  end

  return array
end

gnome_sort(init(1000))
