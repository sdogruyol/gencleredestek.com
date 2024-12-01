class HomeController < ApplicationController
  def index
    @q = Company.active.ransack(params[:q])

    # Use pg_search if a full-text search query is present
    if params[:search].present?
      @companies = Company.search_companies(params[:search])
    else
      # Otherwise, use ransack results
      @companies = @q.result
    end

    # Apply additional eager loading, sorting, and pagination
    @companies = @companies
                .includes(:locations, :work_types, :work_positions)
                .order(:name)
                .paginate(page: params[:page], per_page: params[:per_page] || Company.per_page)
  end
end
