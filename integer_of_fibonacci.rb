=begin
Реализовать алгоритмы нахождения 
n-го числа Фибоначчи и факториала этого числа.   
implement the algorithm for finding the nth Fibonacci number and factorial of this number
=end
def fibonacci_integer n
    fibonacci = [1,1]
    fact = 1
    (0...n-2).each do |index|
        member = fibonacci[index] + fibonacci[index+1]
        fibonacci << member
        fact *= member
    end
    {"n_member" => fibonacci.last, "fact" => fact(fibonacci.last)}
end

def fact n
    if n == 0
        1
    elsif [1,2].index(n) != nil
        n
    else
        (2..n).inject(1){|fact, element| fact * element}
    end
end         
