ActiveAdmin.register New do
  permit_params :title, :content, :published_on

  filter :title
  filter :content
  filter :published_on

  index do
    column :title
    column :content
    column :published_on
    default_actions
  end

  show do |author|
    attributes_table do
      row :title
      row :content
      row :published_on
    end
    active_admin_comments
  end

  form do |f|
    f.inputs "News details" do
      f.input :title
      f.input :content
      f.input :published_on
    end
    f.actions
  end

end
