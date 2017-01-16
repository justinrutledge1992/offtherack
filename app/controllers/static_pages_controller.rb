class StaticPagesController < ApplicationController
  
  def index
  end

  def about
  end

  def gallery
    @photos = Photo.all
  end

  def consignment
  end

  def contact
  end
  
end
