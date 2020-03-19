require 'rails_helper'

describe 'Score' do
  context '#custom_initialization' do
    it 'must be a valid score' do
      expect(Score.new.custom_initialization(
        nickname: 'Jubileu Jubileia',
        urgency: 30.5,
        importance: 40.3,
        circumstance: 29.7
      )).to be_kind_of(Score)
    end

    it 'has been persisted' do
      expect{create(:score)}.to change {Score.all.size}.by(1)
    end

    context 'must be raise an error' do

      it 'nickname empty' do
        expect{
          Score.new.custom_initialization(nickname: '', urgency: 39.5, importance: 41.3, circumstance: 23.9)
        }.to raise_error(ArgumentError)
      end

      it 'nickname nil' do
        expect{
          Score.new.custom_initialization(nickname: nil, urgency: 39.5, importance: 41.3, circumstance: 23.9)
        }.to raise_error(ArgumentError)
      end

      it 'urgency empty' do
        expect{
          Score.new.custom_initialization(nickname: 'Jubileu Jubileia', urgency: '', importance: 41.3, circumstance: 23.9)
        }.to raise_error(ArgumentError)
      end

      it 'urgency nil' do
        expect{
          Score.new.custom_initialization(nickname: 'Jubileu Jubileia', urgency: nil, importance: 41.3, circumstance: 23.9)
        }.to raise_error(ArgumentError)
      end

      it 'importance empty' do
        expect{
          Score.new.custom_initialization(nickname: 'Jubileu Jubileia', urgency: 39.5, importance: '', circumstance: 23.9)
        }.to raise_error(ArgumentError)
      end

      it 'importance nil' do
        expect{
          Score.new.custom_initialization(nickname: 'Jubileu Jubileia', urgency: 39.5, importance: nil, circumstance: 23.9)
        }.to raise_error(ArgumentError)
      end

      it 'circumstance empty' do
        expect{
          Score.new.custom_initialization(nickname: 'Jubileu Jubileia', urgency: 39.5, importance: 41.3, circumstance: '')
        }.to raise_error(ArgumentError)
      end

      it 'circumstance nil' do
        expect{
          Score.new.custom_initialization(nickname: 'Jubileu Jubileia', urgency: 39.5, importance: 41.3, circumstance: nil)
        }.to raise_error(ArgumentError)
      end
    end
  end
end
