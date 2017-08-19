ARABICOS_PARA_ROMANOS = {
    1000 => "M",  
    900 => "CM",  
    500 => "D",  
    400 => "CD",
    100 => "C",  
    90 => "XC",  
    50 => "L",  
    40 => "XL",  
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
}

def converter_para_romano(numero)
    resultado = ""
    while numero > 0 do
        ARABICOS_PARA_ROMANOS.each do |arabico, romano|
            while (numero >= arabico) do
                resultado = resultado + romano
                numero = numero - arabico
            end     
            break if numero == 0
        end
    end
    resultado
end
