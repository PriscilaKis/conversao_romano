ROMANOS_PARA_ARABICOS = {
    'CM' => 900,
    'M' =>1000,  
    'CD' => 400,  
    'D' => 500,  
    'XC' =>  90,
    'C' => 100,  
    'XL' =>  40, 
    'L' =>  50,  
    'IX' =>  9, 
    'X' =>  10,
    'IV' =>  4,
    'V' =>   5,
    'I' =>   1
}

def converter_para_arabico(numero)
    resultado = []
    while numero != '' do 
        ROMANOS_PARA_ARABICOS.each do | romano, arabico |
            if numero.include?(romano)
                quantidade_que_aparece = numero.scan(/#{romano}/).length
                quantidade_que_aparece.times do
                    resultado.push(arabico)
                end
                numero = numero.gsub(romano, '')
            end
            break if numero == '' 
        end      
    end
    valor_final = 0
    resultado.each do | i |
        valor_final = valor_final + i
    end
    valor_final
end