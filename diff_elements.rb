=begin
 Найти количество различных элементов в массиве целых чисел   
=end

def count_diff_elements array
    array.inject(0){|result, element| result + get_cof(array.count(element))}
end

def get_cof number
number == 1 ? 1 : 0
end

p count_diff_elements [1,2,4,7,0]