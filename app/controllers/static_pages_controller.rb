class StaticPagesController < ApplicationController
  def home
    @photos = Photo.find(:all, :order => "id desc", :limit => 3)
  end

  def hobbies
  end
  
end
