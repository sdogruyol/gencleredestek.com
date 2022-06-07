ActiveAdmin.register Company do
  permit_params :name, :contact_email, :description, :location, :perks, :is_active, :website, :work_type,
                work_type_ids: [],
                location_ids: []

  filter :id
  filter :name
  filter :contact_email
  filter :perks
  filter :work_types
  filter :locations

  index do
    selectable_column
    column :id
    column :name
    column :contact_email
    column :website
    column :perks
    column :is_active
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
      f.input :contact_email
      f.input :website
      f.input :perks
      f.input :is_active, as: :boolean
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
