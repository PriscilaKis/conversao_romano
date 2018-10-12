require 'byebug'

ARABICOS_PARA_ROMANOS = {
  1000 => 'M',
  900 => 'CM',
  500 => 'D',
  400 => 'CD',
  100 => 'C',
  90 => 'XC',
  50 => 'L',
  40 => 'XL',
  10 => 'X',
  9 => 'IX',
  5 => 'V',
  4 => 'IV',
  1 => 'I'
}.freeze

def converter_para_romano(numero)
  return unless numero > 0

  ARABICOS_PARA_ROMANOS.reduce('') do |resultado, (arabico, romano)|
    while numero > 0 && numero >= arabico do
      resultado = resultado + romano
      numero = numero - arabico
    end

    break resultado if numero.zero?

    resultado
  end
end
