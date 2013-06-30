class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(params[:photo])
  end

  def index
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
