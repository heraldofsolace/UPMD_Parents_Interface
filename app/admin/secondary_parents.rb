ActiveAdmin.register SecondaryParent do
  menu false
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :first_name, :last_name, :full_name, :phone_number, :address, :preferred_language, :parent_id, :email
  #
  # or
  #
  # permit_params do
  #   permitted = [:first_name, :last_name, :full_name, :phone_number, :address, :preferred_language, :parent_id, :email]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  config.comments = false
end
