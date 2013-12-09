class MicropostsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

    def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to '/post'
      #redirect_to current_user
    else
      @feed_items = []
      render 'users/post'
    end
  end

  def destroy
    @micropost.destroy
    redirect_to '/post'
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content)
    end

    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to '/post' if @micropost.nil?
    end
end