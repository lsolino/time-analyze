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

    urgency_value = (urgency_total / answer_total) * 100
    importance_value = (importance_total / answer_total) * 100
    circumstance_value = (circumstance_total / answer_total) * 100

    Score.new.custom_initialization(
      nickname: @nickname,
      urgency: urgency_value,
      importance: importance_value,
      circumstance: circumstance_value
    ).save!
  end

end