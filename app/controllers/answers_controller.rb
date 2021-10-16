class AnswersController < ApplicationController
  
  def new
    @answer = Answer.new
  end

  def edit
    unless @answer.task === current_task
      redirect_to answer_path, alert: "You shold be authorized"
    end
  end

  def create
    @answer = current_task.answers.build(answer_params)
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