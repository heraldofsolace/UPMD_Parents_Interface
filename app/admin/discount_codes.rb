ActiveAdmin.register DiscountCode do
  menu priority: 40

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :code, :owner, :status
  #
  # or
  #
  # permit_params do
  #   permitted = [:code, :owner, :status]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  config.comments = false

end
