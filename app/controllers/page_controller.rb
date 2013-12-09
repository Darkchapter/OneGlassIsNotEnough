class PageController < ApplicationController
   def home
    @micropost = current_user.microposts.build if signed_in?
  end

  def contact
  end

  def help
  end

  def terms
  end

  def privacy
  end

  def about
  end

  def resources
  end

end



