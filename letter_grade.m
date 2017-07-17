function G = letter_grade(n)

    if(n >= 91)
        G = 'A'
    elseif (n >= 81 && n <= 90)
        G = 'B'
    elseif (n >= 71 && n <= 80)
        G = 'C'
    elseif (n >= 61 && n <= 70)
        G = 'D'        
    elseif (n < 61)
        G = 'F'
    end
end