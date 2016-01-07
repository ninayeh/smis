class SchedulesController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :recieve

  def object_params
    params.require(:schedule).permit(:Start, :Final)
  end

  def index

  end

  def recieve
    @start = params[:Start]
    @final = params[:Final]
    @totalDay = (@final.to_date - @start.to_date).to_i
    @test = 'Hello'

    math_ary = [0.03, 0.05, 0.09, 0.13, 0.14, 0.21, 0.23, 0.25, 0.5, 0.55, 0.74, 0.79]
    @date_ary = []
    math_ary.each do |a|
       addDay =  (@totalDay * a)
       @date_ary.push (@start.to_date + addDay)

    end

    # redirect_to schedules_path
  end

  def new

  end

  def create

  end

  def show

  end

  # private

end
