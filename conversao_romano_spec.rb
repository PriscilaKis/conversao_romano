require './conversao_romano'

RSpec.describe 'converter_para_arabico' do
    it 'I deve ser igual a 1' do
        resultado = converter_para_arabico('I')
        expect(resultado).to eq 1
    end
    it 'II deve ser igual a 2' do
        resultado = converter_para_arabico('II')
        expect(resultado).to eq 2
    end
    it 'X deve ser igual a 10' do
        resultado = converter_para_arabico('X')
        expect(resultado).to eq 10
    end
    it 'IX deve ser igual a 9' do
        resultado = converter_para_arabico('IX')
        expect(resultado).to eq 9
    end
    it 'XX deve ser igual a 20' do
        resultado = converter_para_arabico('XX')
        expect(resultado).to eq 20
    end
    it 'CXLIV deve ser igual a 144' do
        resultado = converter_para_arabico('CXLIV')
        expect(resultado).to eq 144
    end

    it 'CDXLIV deve ser igual a 444' do
        resultado = converter_para_arabico('CDXLIV')
        expect(resultado).to eq 444
    end

    it 'DLXIX deve ser igual a 569' do
        resultado = converter_para_arabico('DLXIX')
        expect(resultado).to eq 569
    end

    it 'CMXX deve ser igual a 920' do
        resultado = converter_para_arabico('CMXX')
        expect(resultado).to eq 920
    end    

end
