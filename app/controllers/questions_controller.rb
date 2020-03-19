class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def novo_quiz
    redirect_to scores_index_path
  end
end
