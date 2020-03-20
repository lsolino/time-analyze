require 'rails_helper'
require 'spec_helper'
require './app/services/create_score_service'

describe 'CreateScoreService' do
  context '#call' do
    
    it 'should be created' do
      nickname = "Pimpão Pimposo"
      urgencies = [5,3,2,1,5,3]
      importances = [1,2,2,4,5,3]
      circumstances = [3,3,3,5,5,1]
      expect{
        CreateScoreService.new(
          nickname: nickname,
          urgencies: urgencies,
          importances: importances,
          circumstances: circumstances
        ).call
      }.to change{
        Score.all.size
      }.by(1)
    end

  end

  context 'must be raise an error' do
    
    it 'invalid input' do
      expect{
        CreateScoreService.new(id: 123).call
      }.to raise_error(ArgumentError)

      expect{
        CreateScoreService.new(id: '').call
      }.to raise_error(ArgumentError)

      expect{
        CreateScoreService.new(id: nil).call
      }.to raise_error(ArgumentError)
    end

  end
   
end
