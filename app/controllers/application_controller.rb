class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_locale
  before_filter :authenticate_user!
  
  # override to pass around locale in URL
  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { :locale => I18n.locale }
  end

  def set_locale
    if params[:locale]
      I18n.locale = params[:locale] # use specified locale (allows changing locales)
      return I18n.locale
    end
    # fallback
    I18n.locale = I18n.default_locale if I18n.locale.nil?
  end
  
  # if a user tries to access an action he's not authorized to, redirect him to the
  # root_url with an error message
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = t('access_denied')
    redirect_to root_url
  end 
end
