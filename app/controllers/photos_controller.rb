class PhotosController < ApplicationController
  def show
    @photo = Photo.find(params[:id])
  end

  def destroy
    Photo.find(params[:id]).destroy

    # https://stackoverflow.com/questions/8952487/how-do-i-redirect-back-to-a-page-im-currently-on
    redirect_to request.referrer
  end
end
