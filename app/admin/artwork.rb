ActiveAdmin.register Artwork do

  permit_params :title, :content, :author_id, :executed_on, :received_on, :picture, :description, :picture_delete

  filter :title
  filter :content
  filter :author_id
  filter :executed_on
  filter :received_on
  filter :description
  filter :picture

  index do
    column :title
    column :content
    column "Author" do |artwork|
      artwork.author.full_name
    end
    column :executed_on
    column :received_on
    column :description
    column "Picture" do |artwork|
      image_tag(artwork.picture.url(:thumb)) if artwork.picture.present?
    end
    actions
  end

  show do |artwork|
    attributes_table do
      row :title
      row :content
      row "Author" do |artwork|
        artwork.author.full_name
      end
      row :executed_on
      row :received_on
      row :description
      row :picture do
        image_tag(artwork.picture.url(:thumb)) if artwork.picture.present?
      end
    end
    active_admin_comments
  end

  form do |f|
    f.inputs "Artwork details" do
      f.input :title
      f.input :content
      f.input :executed_on
      f.input :received_on
      f.input :description
    end
    f.inputs "Author details" do
      f.input :author_id, as: :select, collection: options_from_collection_for_select(Author.all, :id, :full_name, f.object.author_id), include_blank: false
    end
    f.inputs "Media" do
      if f.object.picture.present?
        f.input :picture_delete, label: "Remove picture", as: :boolean, hint: f.template.image_tag(f.object.picture.url(:thumb))
      else
        f.input :picture, hint: "no picture yet"
      end
    end
    f.actions
  end
end
