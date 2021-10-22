class AnswersController < ApplicationController
  before_action :set_answer, only: %i[ show edit update destroy ]

  def index
    @answers = Answer.all
  end

  def show
  end

  def new
    @answer = Answer.new
  end

  def edit
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.task = current_task
    if @answer.save
      redirect_to @answer, notice: "Answer was successfully created." 
    else
      render :new, status: :unprocessable_entity 
    end
  end

  def update
    if @answer.update(answer_params)
      redirect_to @answer, notice: "Answer was successfully updated." 
    else
      render :edit, status: :unprocessable_entity 
    end
  end

  def destroy
    @answer.destroy
      redirect_to answers_url, notice: "Answer was successfully destroyed." 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def answer_params
      params.require(:answer).permit(:body, :task_id)
    end
end
