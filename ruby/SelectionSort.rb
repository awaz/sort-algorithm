# coding: utf-8

def init size
  a = Array.new
  
  (0..size).each do |n|
    a[n] = Random.new.rand 0..size
  end

  return a
end

def selection_sort array
  s = array.size

  0.upto(s-1) do |i|
    least = i
    
    (i+1).upto(s-1) do |j|
      least = j if array[j] < array[least]
    end
    array[i], array[least] = array[least], array[i]
  end
  
  return array
end

t = Time.now
selection_sort(init(1000))
p Time.now - t
