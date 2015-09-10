# Part of the Odin Project Curriculum
#---------------------
#Project4
#---------------------
#Pseude Code for Bubble Sort:
# => Until you run through once without sorting
# =>  run through the whole array
# =>  swap elements if next element is smaller than current one
# =>


def bubble_sort(array)
  #call bubble_sort_by method
  bubble_sort_by(array) do |left,right|
    left - right
  end
end

def bubble_sort_by(array)
  sorted = true
  while sorted
    sorted = false
    0.upto(array.length - 2) do |i|
      if yield(array[i], array[i + 1]) > 0
        array.insert(i + 1, array.delete_at(i))
        sorted = true
      end
    end
  end
  array
end
