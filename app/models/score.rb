class Score < ApplicationRecord

  def custom_initialization(nickname:, urgency:, important:, circumstance:)
    if nickname == '' || nickname.nil?
      raise ArgumentError.new
    end

    if !urgency.is_a?(Float) || !important.is_a?(Float) || !circumstance.is_a?(Float)
      raise ArgumentError.new
    end

    self.nickname = nickname
    self.important = important
    self.circumstance = circumstance
    self
  end

end
