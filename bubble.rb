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


#Yield sorting
def bubble_sort_by(user_array)
  for num_passes in 0..(user_array.length - 1)
    for i in 0...(user_array.length - 1)
      if yield(user_array[i],user_array[i+1]) > 1
        user_array[i],user_array[i+1] = user_array[i+1],user_array[i]
      end
    end
  end
  puts "Sorted Array :\n"
  puts "-"*20
  puts user_array
  puts "-"*20
end

my_second_array = ["hi","hello","hey"]
bubble_sort_by(my_second_array) do |left,right|
  left.length - right.length
end
puts my_second_array