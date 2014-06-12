ActiveAdmin.register CouncilMember do

  permit_params :title, :first_name, :last_name, :email, :function, :affiliation, :portrait

  filter :first_name
  filter :last_name
  filter :email
  filter :title
  filter :function

  index do
    column :title
    column :first_name
    column :last_name
    column :function
    column :email
    column :affiliation
    column "Portrait" do |author|
      image_tag(author.portrait.url(:thumb)) if author.portrait.present?
    end
    actions
  end

  show do |author|
    attributes_table do
      row :title
      row :first_name
      row :last_name
      row :function
      row :email
      row :affiliation
      row :portrait do
        image_tag(author.portrait.url(:thumb)) if author.portrait.present?
      end
    end
    active_admin_comments
  end

  form do |f|
    f.inputs "Author details" do
      f.input :title, as: :select, collection: CouncilMember::TITLE, include_blank: false
      f.input :first_name
      f.input :last_name
      f.input :function, as: :select, collection: CouncilMember::FUNCTION, include_blank: false
      f.input :email
      f.input :affiliation
      f.input :portrait, :hint => (f.object.portrait.present? ? f.template.image_tag(f.object.portrait.url(:thumb)) : "no portrait yet")
    end
    f.actions
  end
end
