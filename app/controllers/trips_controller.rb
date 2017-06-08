class TripsController < ApplicationController
  def index
    @trips = Trip.all

    render("trips/index.html.erb")
  end

  def show
    @trip = Trip.find(params[:id])

    render("trips/show.html.erb")
  end

  def new
    @trip = Trip.new

    render("trips/new.html.erb")
  end

  def create
    @trip = Trip.new

    @trip.plane_id = params[:plane_id]
    @trip.route_id = params[:route_id]

    save_status = @trip.save

    if save_status == true
      redirect_to("/trips/#{@trip.id}", :notice => "Trip created successfully.")
    else
      render("trips/new.html.erb")
    end
  end

  def edit
    @trip = Trip.find(params[:id])

    render("trips/edit.html.erb")
  end

  def update
    @trip = Trip.find(params[:id])

    @trip.plane_id = params[:plane_id]
    @trip.route_id = params[:route_id]

    save_status = @trip.save

    if save_status == true
      redirect_to("/trips/#{@trip.id}", :notice => "Trip updated successfully.")
    else
      render("trips/edit.html.erb")
    end
  end

  def destroy
    @trip = Trip.find(params[:id])

    @trip.destroy

    if URI(request.referer).path == "/trips/#{@trip.id}"
      redirect_to("/", :notice => "Trip deleted.")
    else
      redirect_to(:back, :notice => "Trip deleted.")
    end
  end
end
