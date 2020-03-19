class ScoresController < ApplicationController

  def index
    @value = Score.find(params[:id])
  end

  def new_score
    urgency_list = [6,9,11,13,16,18]
    importance_list = [1,3,7,8,12,15]
    circumstance_list = [2,4,5,10,14,17]

    # Urgency Questions
    urgencies = [ params[:answerU_6].to_f, params[:answerU_9].to_f, params[:answerU_11].to_f, 
      params[:answerU_13].to_f, params[:answerU_16].to_f, params[:answerU_18].to_f ]
    
    # Importance Questions
    importances = [ params[:answerI_1].to_f, params[:answerI_3].to_f, params[:answerI_7].to_f, 
      params[:answerI_8].to_f, params[:answerI_12].to_f, params[:answerI_15].to_f ]

    # Circumstance Questions
    circumstances = [ params[:answerC_2].to_f, params[:answerC_4].to_f, params[:answerC_5].to_f, 
      params[:answerC_10].to_f, params[:answerC_14].to_f, params[:answerC_17].to_f ]

    nickname = params[:nickname]
    
    CreateScoreService.new(
      nickname: nickname, 
      urgencies: urgencies, 
      importances: importances, 
      circumstances: circumstances
    ).call

    id = Score.last.id
    
    redirect_to scores_index_path(id: id)
  end

end
