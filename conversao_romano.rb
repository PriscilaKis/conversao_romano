ROMANOS_PARA_ARABICOS = {
  'CM' => 900,
  'M' =>1000,
  'CD' => 400,
  'D' => 500,
  'XC' => 90,
  'C' => 100,
  'XL' => 40,
  'L' => 50,
  'IX' => 9,
  'X' => 10,
  'IV' => 4,
  'V' => 5,
  'I' => 1
}.freeze

def converter_para_arabico(numero)
  resultado = []

  while !numero.empty? do
    ROMANOS_PARA_ARABICOS.each do |romano, arabico|
      if numero.include?(romano)
        numero
          .scan(/#{romano}/).length
          .times { resultado.push(arabico) }

        numero.gsub!(romano, '')
      end

      break if numero.empty?
    end
  end

  resultado.reduce(:+)
end
