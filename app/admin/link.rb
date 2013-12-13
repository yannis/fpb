ActiveAdmin.register Link do
  permit_params :title, :url, :description

  filter :title
  filter :url
  filter :description

  index do
    column :title
    column :url
    column :description
    default_actions
  end

  show do |author|
    attributes_table do
      row :title
      row :url
      row :description
    end
    active_admin_comments
  end

  form do |f|
    f.inputs "Link details" do
      f.input :title
      f.input :url
      f.input :description
    end
    f.actions
  end
end
