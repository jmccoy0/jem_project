class HomesController < ApplicationController

  def show
    @pilot = Pilot.first

    render("homes/show.html.erb")  
  end

end
