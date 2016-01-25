class SchedulesController < ApplicationController

  def object_params
    params.require(:schedule).permit(:Start, :Final)
  end

  def index

  end

  def recieve
    @start = params[:Start].to_date
    @final = params[:Final].to_date
    @totalDay = (@final - @start.to_date).to_i
    @test = 'Hello'

    math_ary = [0.03, 0.05, 0.09, 0.13, 0.14, 0.21, 0.23, 0.25, 0.5, 0.55, 0.74, 0.79]
    @date_ary = []
    math_ary.each do |a|
       addDay =  (@totalDay * a)
       @date_ary.push (@start.to_date + addDay)

    end
  end

  def new

  end

  def create

  end

  def show

  end

  # private

end
