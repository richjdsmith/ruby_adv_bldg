#Normal Bubble Sort - Part 1
#---------------------------
def bubble_sort(array)
  l = array.length
  begin
    nothing_sorted = false
    (l-1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i +1] = array[i +1], array[i]
        nothing_sorted = true
      end #end if
    end #end l-times do
  end until nothing_sorted == false #ends the begin on line 5
end #end bubble_sort

my_array = [13, 5, 6, 7, 1, 14]
bubble_sort(my_array)
puts my_array


#Bubble Sort Method that Takes Bloc - Part 2
#---------------------------

def bubble_sort_by(array)
  l = array.length
  begin
    nothing_sorted = false
    swapped = false
    (l - 1).times do |i|
      if yield(array[i],array[i+1]) > 0           
      array[i], array[i + 1] = array[i + 1], array[i]
      nothing_sorted = true            
      end
    end
  end until nothing_sorted == false
  array
end

p bubble_sort_by(["hi","hello","hey"]){ |left,right| left.length - right.length}









