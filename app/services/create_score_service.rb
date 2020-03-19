class CreateScoreService

  def initialize(nickname: , urgencies:, importances:, circumstances:)
    @nickname = nickname
    @urgencies = urgencies
    @importances = importances
    @circumstances = circumstances
  end

  def call
    urgency_total = @urgencies.inject(:+)
    importance_total = @importances.inject(:+)
    circumstance_total = @circumstances.inject(:+)
    answer_total = urgency_total + importance_total + circumstance_total

    urgency_value = urgency_total / answer_total
    importance_value = importance_total / answer_total
    circumstance_value = circumstance_total / answer_total

    values = [circumstance_value, importance_value, urgency_value]
    values
  end

end