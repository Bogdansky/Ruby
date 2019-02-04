=begin
Даны натуральные числа a и b.
Вычислите произведение a * b,
используя в программе только операции +, -, ==, !=, =
=end

def mult first_multiplier, second_multiplier
    mult = first_multiplier
    (0...second_multiplier-1).each do |i|
        mult += first_multiplier
    end
    mult
end