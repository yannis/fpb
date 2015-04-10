ActiveAdmin.register Artist do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  # controller do
  #   def permitted_params
  #     params.permit(:artist => [:first_name, :last_name, :email, :affiliation, :portrait])
  #   end
  # end
  permit_params :first_name, :last_name, :email, :affiliation, :portrait, :description

  filter :first_name
  filter :last_name
  filter :email
  filter :description

  index do
    column :first_name
    column :last_name
    column :email
    column :affiliation
    column :description
    column "Portrait" do |artist|
      image_tag(artist.portrait.url(:thumb)) if artist.portrait.present?
    end
    actions
  end

  show do |artist|
    attributes_table do
      row :first_name
      row :last_name
      row :email
      row :affiliation
      row :description
      row :portrait do
        image_tag(artist.portrait.url(:thumb)) if artist.portrait.present?
      end
    end
    active_admin_comments
  end

  form do |f|
    f.inputs "Artist details" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :affiliation
      f.input :description
      f.input :portrait, :hint => (f.object.portrait.present? ? f.template.image_tag(f.object.portrait.url(:thumb)) : "no portrait yet")
    end
    f.actions
  end
end
