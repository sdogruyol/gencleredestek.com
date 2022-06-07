class HomeController < ApplicationController
  def index
    @q = Company.active.ransack(params[:q])
    @companies = @q.result.includes(:locations, :work_types).order(:name)
  end
end
