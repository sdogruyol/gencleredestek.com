ActiveAdmin.register Company do
  permit_params :name, :contact_email, :description, :location, :perks, :website, :work_type,
                work_type_ids: [],
                location_ids: []

  filter :id
  filter :contact_email
  filter :perks
  filter :work_types
  filter :locations

  index do
    selectable_column
    column :id
    column :contact_email
    column :website
    column :perks
    column :work_types do |company|
      company.work_types.map(&:name).join(',')
    end
    column :locations do |company|
      company.locations.map(&:name).join(',')
    end
    actions
  end

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

    f.inputs 'Locations' do
      f.input :locations, label: 'Location', as: :select, collection: Location.all.order(:display_order), input_html: {multiple: true}
    end

    f.actions
  end
end
