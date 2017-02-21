class VotesController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    @vote = @question.votes.new(vote_params)
    if @vote.save
      flash[:notice] = "Your response has been saved!"
      respond_to do |format|
        format.html {redirect_to questions_path}
        format.js
      end
    else
      flash[:alert] = "Oops!"
      redirect_to questions_path
    end
  end

private
  def vote_params
    params.require(:vote).permit(:selection)
  end
end
