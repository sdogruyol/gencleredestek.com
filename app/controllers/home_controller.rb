class HomeController < ApplicationController
  def index
    @companies = Company.all
  end
end
