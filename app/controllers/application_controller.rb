class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include CanCan::ControllerAdditions

#  check_authorization
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
#define set_header in application_controller.rb:
  before_action :prepare_meta_tags, if: "request.get?"

  def prepare_meta_tags(options={})
    site_name   = "nfbmpune.org"
    title       = [controller_name, action_name].join(" ")
    description = "National federation of the blind is an NGO, of the blind, for the blind and by the blind. Pune region is the first regional unit of NFBM Maharashtra."
#    image       = options[:image] || "your-default-image-url"
    current_url = request.url

    # Let's prepare a nice set of defaults
    defaults = {
      site:        site_name,
      title:       title,
#      image:       image,
      description: description,
      keywords:    %w[Pune blind federation],
#      twitter: {
#        site_name: site_name,
#        site: '@thecookieshq',
#        card: 'summary',
#        description: description,
#        image: image
#      },
      og: {
        url: current_url,
        site_name: site_name,
        title: title,
#        image: image,
        description: description,
        type: 'website'
      }
    }

    options.reverse_merge!(defaults)

    set_meta_tags options
  end

  def set_header(p_type, filename)
    case p_type
      when 'xls'
        headers['Content-Type'] = "application/vnd.ms-excel; charset=UTF-8'"
        headers['Content-Disposition'] = "attachment; filename=\"#{filename}\""
        headers['Cache-Control'] = ''

    when 'msword'
      headers['Content-Type'] = "application/vnd.ms-word; charset=UTF-8"
     headers['Content-Disposition'] = "attachment; filename=\"#{filename}\""
     headers['Cache-Control'] = ''

    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :user_id
  end
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username ) }
  end
end
