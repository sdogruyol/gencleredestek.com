class HomeController < ApplicationController
  def index
    @q = Company.ransack(params[:q])
    @companies = @q.result.order(:name)
  end
end
