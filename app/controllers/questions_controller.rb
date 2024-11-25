class QuestionsController < ApplicationController

  def ask

  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = ""
      elsif@question == "I am going to work"
        @answer = "Great!"
      elsif @question.end_with?("?")
       @answer = "get dressed and go to work!"
      else @answer = "I don't care, get dressed and go to work!"
    end
  end
end
