ActiveAdmin.register Company do
  permit_params :name, :contact_email, :description
end
