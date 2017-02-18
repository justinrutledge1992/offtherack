class PhotosController < ApplicationController
  
  before_action :redirect_if_not_admin, only: [:new, :create, :destroy]
  
  def new
    @photo = Photo.new
  end
  
  def create
    @photo = Photo.new(photo_params)
    
    if user_is_admin
      if @photo.save
        flash[:success] = "Photo Uploaded!"
        redirect_to edit_gallery_path
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
    if Photo.find(params[:id]).destroy
      flash[:success] = "Photo Deleted!"
      redirect_to edit_gallery_path
    else
      flash[:danger] = "Unable to Delete Photo"
      redirect_to edit_gallery_path
    end
  end
  
  private
  
       def photo_params
         params.require(:photo).permit(:image)
       end
  
end
