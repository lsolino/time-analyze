class Score < ApplicationRecord

  def custom_initialization(nickname:, urgency:, importance:, circumstance:)
    if nickname == '' || nickname.nil?
      raise ArgumentError.new
    end

    if !urgency.is_a?(Float) || !importance.is_a?(Float) || !circumstance.is_a?(Float)
      raise ArgumentError.new
    end

    self.nickname = nickname
    self.urgency = urgency
    self.importance = importance
    self.circumstance = circumstance
    self
  end

end
