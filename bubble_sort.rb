require 'pry'

def bubble_sort(numbers)
  k = 1
  n = numbers.size

  return numbers if n <= 1

  loop do
    swaps = 0
    i = 0
    while i < (n - k)
      num1 = numbers[i]
      num2 = numbers[i+1]
      if(num1 > num2)
        numbers[i] = num2
        numbers[i+1] = num1
        i += 1
        swaps += 1
      else
        i += 1
      end
    end
    k += 1

    if(swaps == 0)
      break
    end
  end

  return numbers
  

end

p bubble_sort([11, 2, 5, 23, 7])
p bubble_sort([3])