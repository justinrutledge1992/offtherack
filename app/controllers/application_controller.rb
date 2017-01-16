class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def uploadPhoto
    @photo = Photo.new
    @photo.image = params[:image]
    
    if @photo.save
      flash[:success] = "Photo Uploaded!"
      redirect_to gallery_path
    else
      flash[:danger] = "Unable to Upload Photo"
      redirect_to gallery_path
    end
  end
  
  def submitEmailAddress
    @email = EmailAddress.new
    @email.email = params[:email]
    
    if @email.save
      flash[:success] = "Email Address Submitted!"
      redirect_to contact_path
    else
      flash[:danger] = "Unable to Submit Email Address"
      redirect_to contact_path
    end
  end
  
end
