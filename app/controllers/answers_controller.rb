class AnswersController < ApplicationController
  before_action :set_answer, only: %i[ show edit update destroy ]
  
  def new
    @answer = Answer.new
  end

  def edit
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      flash[:success] = "Correct answer is added"
      redirect_to tasks_url
    else
      render :new, status: :unprocessable_entity 
    end
  end

  private

      # Only allow a list of trusted parameters through.
      def answer_params
        params.require(:answer).permit(:body)
      end
end
