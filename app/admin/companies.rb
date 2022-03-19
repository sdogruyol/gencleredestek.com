ActiveAdmin.register Company do
  permit_params :name, :contact_email, :description, :location, :perks, :website, :work_type
end
