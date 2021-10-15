class AnswersController < ApplicationController
  
  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      flash[:success] = "Correct answer is added"
      redirect_to root_url
    else
      render :new, status: :unprocessable_entity 
    end
  end
end

private
    # Only allow a list of trusted parameters through.
    def answer_params
      params.require(:answer).permit(:body)
    end