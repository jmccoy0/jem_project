class PilotsController < ApplicationController
  def index
    @pilots = Pilot.all

    render("pilots/index.html.erb")
  end

  def show
    @pilot = Pilot.find(params[:id])

    render("pilots/show.html.erb")
  end

  def new
    @pilot = Pilot.new

    render("pilots/new.html.erb")
  end

  def create
    @pilot = Pilot.new

    @pilot.name = params[:name]
    @pilot.rank = params[:rank]
    @pilot.bio = params[:bio]
    @pilot.photo_id = params[:photo_id]
    @pilot.plane_id = params[:plane_id]

    save_status = @pilot.save

    if save_status == true
      redirect_to("/pilots/#{@pilot.id}", :notice => "Pilot created successfully.")
    else
      render("pilots/new.html.erb")
    end
  end

  def edit
    @pilot = Pilot.find(params[:id])

    render("pilots/edit.html.erb")
  end

  def update
    @pilot = Pilot.find(params[:id])

    @pilot.name = params[:name]
    @pilot.rank = params[:rank]
    @pilot.bio = params[:bio]
    @pilot.photo_id = params[:photo_id]
    @pilot.plane_id = params[:plane_id]

    save_status = @pilot.save

    if save_status == true
      redirect_to("/pilots/#{@pilot.id}", :notice => "Pilot updated successfully.")
    else
      render("pilots/edit.html.erb")
    end
  end

  def destroy
    @pilot = Pilot.find(params[:id])

    @pilot.destroy

    if URI(request.referer).path == "/pilots/#{@pilot.id}"
      redirect_to("/", :notice => "Pilot deleted.")
    else
      redirect_to(:back, :notice => "Pilot deleted.")
    end
  end
end
