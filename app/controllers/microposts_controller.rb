class MicropostsController < ApplicationController
  def home
  end

  def create
    @micropost = current_user.microposts.build(micropost_params)
   if @micropost.save
     flash[:success] = "Micropost created!"
     redirect_to root_url
   else
      @feed_items = []
     render 'static_pages/home'
   end
  end

  def destroy
    @micropost.destroy
    redirect_to root_url
  end

end
