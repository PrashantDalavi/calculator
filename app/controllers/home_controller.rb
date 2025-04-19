class HomeController < ApplicationController

  def calculator; end

  def calculator1
    split_data = params[:query].split('')
    respond_to do |format|
      format.js 
    end
  end

end
