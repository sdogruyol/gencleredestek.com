ActiveAdmin.register Company do
  permit_params :name, :contact_email, :description, :location, :perks, :website, :work_type,
                work_type_ids: []

  form do |f|
    f.inputs 'Details' do
      f.input :name
      f.input :description
      f.input :location
      f.input :perks
    end

    f.inputs 'Work Types' do
      f.input :work_types, label: 'Work Type', as: :check_boxes, collection: WorkType.all
    end

    f.actions
  end
end
