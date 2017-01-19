class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
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
  
end
