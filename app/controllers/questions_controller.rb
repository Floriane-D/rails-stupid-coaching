class QuestionsController < ApplicationController
  def ask
    @question = params["question"]
  end

  def answer
    @question = params["question"]
    if @question == 'I am going to work'
      then @answer = 'Great!'
    elsif @question[-1] == '?'
      then @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
