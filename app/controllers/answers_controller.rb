class AnswersController < ApplicationController
  before_action :set_answer, only: %i[ show ]
  
  def new
    @answer = Answer.new
  end

  def edit

  end

  private

      # Only allow a list of trusted parameters through.
      def answer_params
        params.require(:answer).permit(:body)
      end
end
