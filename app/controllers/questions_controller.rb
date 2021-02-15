class QuestionsController < ApplicationController
  def ask
    @question = 'Where will this be?'
  end
  def answer
    @question = params[:question]
  end
end
