ActiveAdmin.register Company do
  permit_params :name, :contact_email, :description, :location, :perks, :website, :work_type,
                work_types_attributes: [:id, :name, :_destroy]

  form do |f|
    f.inputs 'Details' do
      f.input :name
      f.input :description
      f.input :location
      f.input :perks
    end

    f.inputs 'Work Types' do
      f.has_many :work_types, allow_destroy: true, new_record: false do |b|
        b.input :name, label: 'Work Type', as: :select, collection: WorkType.all
      end
    end

    f.actions
  end
end
