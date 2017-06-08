class DeparturesController < ApplicationController
  def index
    @departures = Departure.all

    render("departures/index.html.erb")
  end

  def show
    @departure = Departure.find(params[:id])

    render("departures/show.html.erb")
  end

  def new
    @departure = Departure.new

    render("departures/new.html.erb")
  end

  def create
    @departure = Departure.new

    @departure.call_letters = params[:call_letters]
    @departure.city = params[:city]
    @departure.state = params[:state]

    save_status = @departure.save

    if save_status == true
      redirect_to("/departures/#{@departure.id}", :notice => "Departure created successfully.")
    else
      render("departures/new.html.erb")
    end
  end

  def edit
    @departure = Departure.find(params[:id])

    render("departures/edit.html.erb")
  end

  def update
    @departure = Departure.find(params[:id])

    @departure.call_letters = params[:call_letters]
    @departure.city = params[:city]
    @departure.state = params[:state]

    save_status = @departure.save

    if save_status == true
      redirect_to("/departures/#{@departure.id}", :notice => "Departure updated successfully.")
    else
      render("departures/edit.html.erb")
    end
  end

  def destroy
    @departure = Departure.find(params[:id])

    @departure.destroy

    if URI(request.referer).path == "/departures/#{@departure.id}"
      redirect_to("/", :notice => "Departure deleted.")
    else
      redirect_to(:back, :notice => "Departure deleted.")
    end
  end
end
