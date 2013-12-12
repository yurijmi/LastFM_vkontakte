class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale

  def set_locale
    I18n.locale = params[:locale] || extract_locale_from_accept_language_header || I18n.default_locale

    I18n.locale = 'ru' if I18n.locale == 'ru_RU'
    I18n.locale = 'en' if I18n.locale == 'en_US' || I18n.locale = 'en_GB'
  end

  def default_url_options(options = {})
    {locale: I18n.locale}
  end

  private
  def extract_locale_from_accept_language_header
    request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  end
end
