# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @q = Company.ransack(params[:q])
    @companies = @q.result.includes(:locations, :work_types).order(:name)
  end
end
