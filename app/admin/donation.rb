ActiveAdmin.register Donation do

  permit_params :name, :location, :donated_on

  filter :name
  filter :location
  filter :donated_on

  index do
    column :name
    column :location
    column :donated_on
    actions
  end

  show do |artist|
    attributes_table do
      row :name
      row :location
      row :donated_on
    end
    active_admin_comments
  end

  form do |f|
    f.inputs "Artist details" do
      f.input :name
      f.input :location
      f.input :donated_on
    end
    f.actions
  end

end
