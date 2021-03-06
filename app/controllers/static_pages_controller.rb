class StaticPagesController < ApplicationController
  before_action :check_locale
  before_action :check_signed_in


  def home
    redirect_to new_parent_session_path
  end

  protected

  def check_signed_in
    redirect_to parents_root_path and return if parent_signed_in?

    redirect_to bus_drivers_root_path if bus_driver_signed_in?

  end

  def check_locale
    redirect_to locale_choose_locale_path unless cookies[:locale].present?
  end
end
