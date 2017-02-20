class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Your rather has been saved!"
      redirect_to questions_path
    else
      flash[:alert] = "Oops!"
      redirect_to new_question_path
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      flash[:notice] = "Changes saved!"
      redirect_to questions_path
    else
      flash[:alert] = "Oops!"
      redirect_to edit_question
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end

private
  def question_params
    params.require(:question).permit(:firstoption, :secondoption, :author)
  end
end
