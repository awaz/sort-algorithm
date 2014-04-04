# coding: utf-8

def init size
  a = Array.new
  (0..size).each do |n|
    a[n] = Random.new.rand 0..size
  end

  return a
end

def bubble_sort array
  return array if array.size <= 1

  0.upto(array.size-1) do |i|
    0.upto(array.size-1) do |j|
      if array[i] < array[j]
        array[i], array[j] = array[j], array[i]
      end
    end
  end

  return array
end

t = Time.now
bubble_sort(init(1000))
p Time.now - t
