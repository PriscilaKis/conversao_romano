require './conversao_numerica'

RSpec.describe 'converter_para_romano' do
    it '1 deve ser igual a I' do
        resultado = converter_para_romano(1)
        expect(resultado).to eq 'I'
    end

    it '3 deve ser igual a III' do
        resultado = converter_para_romano(3)
        expect(resultado).to eq 'III'
    end

    it '4 deve ser igual a IV' do
        resultado = converter_para_romano(4)
        expect(resultado).to eq 'IV'
    end

    it '5 deve ser igual a V' do
        resultado = converter_para_romano(5)
        expect(resultado).to eq 'V'
    end

    it '6 deve ser igual a VI' do
        resultado = converter_para_romano(6)
        expect(resultado).to eq 'VI'
    end

    it '8 deve ser igual a VIII' do
        resultado = converter_para_romano(8)
        expect(resultado).to eq 'VIII'
    end

    it '9 deve ser igual a IX' do
        resultado = converter_para_romano(9)
        expect(resultado).to eq 'IX'
    end

    it '20 deve ser igual a XX' do
        resultado = converter_para_romano(20)
        expect(resultado).to eq 'XX'
    end

    it '49 deve ser igual a XLIX' do
        resultado = converter_para_romano(49)
        expect(resultado).to eq 'XLIX'
    end

    it '64 deve ser igual a LXIV' do
        resultado = converter_para_romano(64)
        expect(resultado).to eq 'LXIV'
    end

    it '94 deve ser igual a XCIV' do
        resultado = converter_para_romano(94)
        expect(resultado).to eq 'XCIV'
    end

    it '144 deve ser igual a CXLIV' do
        resultado = converter_para_romano(144)
        expect(resultado).to eq 'CXLIV'
    end

    it '444 deve ser igual a CDXLIV' do
        resultado = converter_para_romano(444)
        expect(resultado).to eq 'CDXLIV'
    end

    it '569 deve ser igual a DLXIX' do
        resultado = converter_para_romano(569)
        expect(resultado).to eq 'DLXIX'
    end

    it '920 deve ser igual a CMXX' do
        resultado = converter_para_romano(920)
        expect(resultado).to eq 'CMXX'
    end    
end