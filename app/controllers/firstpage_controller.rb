class FirstpageController < ApplicationController
 def photogallery
  @comment = Gallery.find_all_by_name("1.JPG")
  binding.pry
 end
   
  def create
  binding.pry
    @gallery=Gallery.new(:comment=>params[:comment],:name=>params[:id].split('/').last)
    @gallery.save!
    flash[:notice] = "The user was successfully created"
    redirect_to :back
    
  end
  
 
   
end
