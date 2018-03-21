class FavoritesController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favoriting(micropost)
    flash[:success] = 'Micropostをお気に入りに登録しました。'
    redirect_to micropost
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavoriting(micropost)
    flash[:success] = 'お気に入り登録を解除しました。'
    redirect_to micropost
  end
end
