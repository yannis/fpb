ActiveAdmin.register Award do

  permit_params :laureate, :title, :awarded_on

  filter :laureate
  filter :title
  filter :awarded_on

  index do
    column :laureate
    column :title
    column :awarded_on
    actions
  end

  show do |artist|
    attributes_table do
      row :laureate
      row :title
      row :awarded_on
    end
    active_admin_comments
  end

  form do |f|
    f.inputs "Artist details" do
      f.input :laureate
      f.input :title
      f.input :awarded_on
    end
    f.actions
  end
end
