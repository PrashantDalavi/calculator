class HomeController < ApplicationController

  def calculator; end

  def calculator1
    respond_to do |format|
      format.js 
    end
  end

end
