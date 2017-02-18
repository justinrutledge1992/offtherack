class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :redirect_if_not_admin, only: [:download_mailing_list]
  protect_from_forgery with: :exception
  helper_method :user_is_admin
  require 'tempfile'
  
  def download_mailing_list
    @email_addresses = EmailAddress.all
    @record_limit = @email_addresses.size

    file = Tempfile.new(["offtherack-mailing-list-", ".csv"])
    #...
      @counter = 1
      @email_addresses.each do |record|
        if @counter == @record_limit
          file.puts(record.email)
        else
          file.puts(record.email + ", ")
        end
        @counter += 1
      end
    #...
    file.rewind
    send_file file.path
    file.close
  end
  
  def admin_login
    @checktext = params[:checktext]
    if checktextMatchesAdmin(@checktext)
      cookies['admin_key'] = @checktext
      flash[:success] = "Successful Login!"
    else
      flash[:danger] = "Unsuccessful login."
    end
    redirect_to admin_path
  end
  
  def admin_logout
    cookies['admin_key'] = ""
    flash[:success] = "Logged Out."
    redirect_to root_path
  end
  
  def submitEmailAddress
    @email = EmailAddress.new
    @email.email = params[:email]
    
    if EmailAddress.find_by(email: @email.email) != nil
      flash[:warning] = "Your Email Address is Already on Record"
      redirect_to contact_path
    elsif @email.save
      flash[:success] = "Email Address Submitted!"
      redirect_to contact_path
    else
      flash[:danger] = "Unable to Submit Email Address"
      redirect_to contact_path
    end
  end
  
  def routeToFacebook
    redirect_to "https://www.facebook.com/OffTheRackClothes"
  end
  
  def routeToInstagram
    redirect_to "https://www.instagram.com/offtherack256/"
  end
  
  def routeToTwitter
    redirect_to "https://www.twitter.com/offtherack256"
  end
  
  def user_is_admin
    if checktextMatchesAdmin(cookies['admin_key'])
      return true
    else
      return false
    end
  end
  
  def redirect_if_not_admin
    if checktextMatchesAdmin(cookies['admin_key'])
      # Good to Go
    else
      flash[:danger] = "Unauthorized Resource."
      redirect_to root_path
    end
  end
  
  private
  
      def checktextMatchesAdmin(str)
         return str == ENV['ADMIN_KEY']
      end
  
end
