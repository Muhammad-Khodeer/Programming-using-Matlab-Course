function G = generationXYZ(n)

    if(n < 1966)
        G = 'O'
    elseif (n >= 1966 && n <= 1980)
        G = 'X'
    elseif (n >= 1981 && n <= 1999)
        G = 'Y'
    elseif (n >= 2000 && n <= 2012)
        G = 'Z'        
    elseif (n > 2012)
        G = 'K'
    end
end