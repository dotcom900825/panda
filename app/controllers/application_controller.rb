class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_locale

  private
  def set_locale
    I18n.locale = session[:locale] || set_locale_from_accept_language_header || I18n.default_locale
    session[:locale] = I18n.locale
  end

  def set_locale_from_accept_language_header
    request.compatible_language_from(I18n.available_locales)
  end

end
