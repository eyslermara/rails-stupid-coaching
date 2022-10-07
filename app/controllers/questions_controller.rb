class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:user_question]
    if @question.blank?
      @answer = "I can't here you"
    elsif @question == @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
