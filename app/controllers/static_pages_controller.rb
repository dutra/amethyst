class StaticPagesController < ApplicationController
  def home
    @photos = Photo.find(:all, :order => "id desc", :limit => 3)
  end

  def hobbies
  end

  def contact
    if params[:message].present?
      params[:client_ip] = request.remote_ip
      params[:request] = request
      Mailer.contact_email(params).deliver
      flash[:success] = "Email sent! I will try to get in touch with you as soon as possible."
      # flash[:error] = "Sorry, I am still working on this. Meanwhile, send your email to dutra@mit.edu"
      redirect_to '/contact'
    end

    
  end


end
