class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    company = Company.new(company_params)

    return redirect_to companies_path, alert: "Şirket adı boş bırakılamaz!" unless company.name.present?
    return redirect_to companies_path, alert: "Şirket iletişim numarası bırakılamaz!" unless company.contact_email.present?
    return redirect_to companies_path, alert: "Şirket web sitesi adresi boş bırakılamaz!" unless company.website.present?

    company.is_active = false
    company.work_type_ids = additional_params[:work_types].map(&:to_i)
    company.location_ids = additional_params[:locations].map(&:to_i)
    company.work_position_ids = additional_params[:work_positions].map(&:to_i)

    debugger
    if company.save
      redirect_to root_path, notice: "Şirket başarıyla oluşturuldu. Onaylandıktan sonra yayınlanacaktır."
    else
      render companies_path, alert: "Şirket oluşturulurken bir hata oluştu."
    end
  end

  def company_params
    params.require(:company).permit(
      :name, :contact_email, :website, :perks, :is_active
    )
  end

  def additional_params
     params.permit(work_types: [], work_positions: [], locations: [])
  end
  
end
