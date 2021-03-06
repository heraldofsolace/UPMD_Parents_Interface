ActiveAdmin.register BusDriver, as: "Bus Service" do
  menu priority: 60

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :password, :password_confirmation, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at,
                :confirmation_token, :confirmed_at, :confirmation_sent_at, :unconfirmed_email,
                :company_name, :first_name, :last_name
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :confirmation_token, :confirmed_at, :confirmation_sent_at, :unconfirmed_email, :company_name, :first_name, :last_name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  config.comments = false
  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :first_name
      f.input :last_name
      f.input :company_name
    end
    f.actions
  end
  
  index do
    selectable_column
    id_column
    column :email
    column :first_name
    column :last_name
    column :company_name
    actions
  end

  show do
    attributes_table do
      row :id
      row :email
      row :first_name
      row :last_name
      row :company_name
    end
  end

  controller do
    def update
      if params[:bus_driver][:password].blank? && params[:bus_driver][:password_confirmation].blank?
        params[:bus_driver].delete("password")
        params[:bus_driver].delete("password_confirmation")
      end
      super
    end
  end
end
