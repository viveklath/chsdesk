class PagesController < ApplicationController

  def home
    @title = "Home"
    if signed_in?
      @micropost = Micropost.new
     @feed_items = current_member.feed.page(params[:page]).per(5)
   #   @feed_items = current_member.feed.paginate(:page => params[:page])
    end
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end
  def help
    @title = "Help"
  end

end
