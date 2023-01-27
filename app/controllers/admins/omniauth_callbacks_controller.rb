class Admins::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def google_oauth2
    binding.pry
    handle_auth"Google"
  end

  def handle_auth(kind)
      # You need to implement the method below in your model (e.g. app/models/admin.rb)
      @admin = Admin.from_omniauth(request.env['omniauth.auth'])

      if @admin.persisted?
        flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: kind
        sign_in_and_redirect @admin, event: :authentication
      else
        session['devise.auth_data'] = request.env['omniauth.auth'].except('extra') # Removing extra as it can overflow some session stores
        redirect_to new_user_registration_url, alert: @admin.errors.full_messages.join("\n")
      end
  end

end
