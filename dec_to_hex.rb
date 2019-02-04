=begin
Реализовать алгоритм преобразования десятичного числа в шестнадцатеричное 
=end
def parse_decimal number
    hex_values = ('0'..'9').to_a | ('A'..'F').to_a
    hex = ""
    decimal = number
    while decimal > 16
        digit = (decimal / 16).floor
        rest = decimal - digit*16
        decimal = digit
        hex << hex_values[rest]
    end
    hex << hex_values[decimal]
    hex.reverse
end

p parse_decimal 317547
