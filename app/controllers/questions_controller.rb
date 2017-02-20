class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @question = Question.new
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Your rather has been saved!"
      respond_to do |format|
        format.html {redirect_to questions_path}
        format.js
      end
    else
      flash[:alert] = "Oops!"
      redirect_to new_question_path
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    respond_to do |format|
      format.html {redirect_to questions_path}
      format.js
    end
  end

private
  def question_params
    params.require(:question).permit(:firstoption, :secondoption, :author)
  end
end
