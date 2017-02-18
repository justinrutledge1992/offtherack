class StaticPagesController < ApplicationController
  
  before_action :redirect_if_not_admin, only: [:edit_gallery, :mailing_list]
  
  def index
  end

  def about
  end

  def edit_gallery
    @photos = Photo.all
  end

  def gallery
    @photos = Photo.all
  end

  def mailing_list
    @addresses = EmailAddress.all
  end

  def consignment
  end

  def contact
  end
  
end
