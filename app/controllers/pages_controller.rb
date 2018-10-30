class PagesController < ApplicationController
  def show
    if params[:id].match /gettoknowtheissues/
      render :partial => params[:id]
    end
  end
end
