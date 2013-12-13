ActiveAdmin.register Donation do

  permit_params :name, :location, :donated_on

  filter :name
  filter :location
  filter :donated_on

  index do
    column :name
    column :location
    column :donated_on
    default_actions
  end

  show do |author|
    attributes_table do
      row :name
      row :location
      row :donated_on
    end
    active_admin_comments
  end

  form do |f|
    f.inputs "Author details" do
      f.input :name
      f.input :location
      f.input :donated_on
    end
    f.actions
  end

end
