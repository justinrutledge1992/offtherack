class PhotosController < ApplicationController
  
  
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    
    if (checktextMatches(@photo.checktext))
      if @photo.save
        flash[:success] = "Photo Uploaded!"
        redirect_to new_photo_path
      else
        flash[:danger] = "Unable to Upload Photo"
        redirect_to new_photo_path
      end
    else
      flash[:danger] = "Unauthorized Resource"
      redirect_to gallery_path
    end
  end

  def destroy
  end
  
  private
  
       def photo_params
         params.require(:photo).permit(:checktext, :image)
       end
       
       def checktextMatches(str)
         return str == "offtherack35801"
       end
  
end
