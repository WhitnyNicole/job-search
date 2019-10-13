class Api::V1::InterviewsController < ApplicationController
  before_action :set_interview, only: [:show, :update, :destroy]

  def index
    @interviews = Interview.all

    render json: @interviews
  end

  def show
    render json: @interview
  end

  def create
    @interview = Interview.new(interview_params)

    if @interview.save
      render json: @interview
    else
      render json: @interview.errors, status: :unprocessable_entity
    end
  end

  def update
    if @interview.update(interview_params)
      render json: @interview
    else
      render json: @interview.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @interview.destroy
  end

  private
    def set_interview
      @interview = Interview.find(params[:id])
    end

    def interview_params
      params.require(:interview).permit(:company_name, :location, :salary, :day, :position)
    end
end
