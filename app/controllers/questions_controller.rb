QUESTION_WORK = "I am going to work"
ANSWER_WORK = "Great!"
QUESTION_OTHER = "Silly question, get dressed and go to work!"
ANSWER_OTHER = "I don't care, get dressed and go to work!"

class QuestionsController < ApplicationController

  def ask
  end

  def answer
    # if params[:query] == "I am going to work"
    #   "Great!"
    # elsif your_message.end_with?("?")
    #   "Silly question, get dressed and go to work!"
    # else
    #   "I don't care, get dressed and go to work!"
    # end
    @question = params[:question]
    @answer = stupid_coach(@question)
  end

  private

  def stupid_coach(str)
      is_question?(str) ? QUESTION_OTHER : ((str === QUESTION_WORK) ? ANSWER_WORK : ANSWER_OTHER)
  end

  def is_question?(str)
      (str === nil) ? false : str.end_with?("?")
  end

end
