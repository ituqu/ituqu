class HomesController < ApplicationController
  
  def index
  	@first_image_url = 'home/0.jpg'
  	@image_urls = ['home/1.jpg', 'home/2.jpg']
  end
end
