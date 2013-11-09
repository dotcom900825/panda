class LanguagesController < ApplicationController
  LAN_HASH = {:english=>'en', :chinese=>'zh-CN'}

  LAN_HASH.each do |key, value|
    define_method(key.to_s) do
      I18n.locale = value
      set_session_and_redirect
    end
  end

  private
  def set_session_and_redirect
    session[:locale] = I18n.locale
    redirect_to :back
    rescue ActionController::RedirectBackError
    redirect_to :root
  end
end
