def div_mod dividend, divider
    number = dividend
    div = 0
    while number >= divider
        number -= divider
        div += 1
    end
    {"div" => div, "mod" => number}
end