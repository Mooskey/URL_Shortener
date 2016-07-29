class LongurlsController < ApplicationController
  def create
    @longurl = Longurl.new(urlparams)
    @longurl.save
    redirect_to longurls_path
  end
  def redirect
    @selectedurl = Longurl.find(params[:pwep])
    redirect_to @selectedurl.url
  end
  def new
    @longurl = Longurl.new
  end
  def index
    @list = Longurl.all
  end
  private
  def urlparams
     params.require(:longurl).permit(:url)
  end
end
