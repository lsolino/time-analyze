require 'rails_helper'

describe 'Question' do
  context '#custom_initialization' do
    it 'must be a valid question' do
      expect(Question.new.custom_initialization(
        enunciated: 'Qual é o meu time?'
      )).to be_kind_of(Question)
    end

    it 'has been persisted' do
      expect{create(:question)}.to change {Question.all.size}.by(1)
    end

    context 'must be raise an error' do

      it 'enunciated empty' do
        expect{
          Question.new.custom_initialization(enunciated: '')
        }.to raise_error(ArgumentError)
      end

      it 'enunciated nil' do
        expect{
          Question.new.custom_initialization(enunciated: nil)
        }.to raise_error(ArgumentError)
      end
    end
  end
end
