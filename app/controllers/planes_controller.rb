class PlanesController < ApplicationController
  def index
    @planes = Plane.all

    render("planes/index.html.erb")
  end

  def show
    @plane = Plane.find(params[:id])

    render("planes/show.html.erb")
  end

  def new
    @plane = Plane.new

    render("planes/new.html.erb")
  end

  def create
    @plane = Plane.new

    @plane.model = params[:model]
    @plane.capacity = params[:capacity]
    @plane.cabin_height = params[:cabin_height]
    @plane.photo_id = params[:photo_id]

    save_status = @plane.save

    if save_status == true
      redirect_to("/planes/#{@plane.id}", :notice => "Plane created successfully.")
    else
      render("planes/new.html.erb")
    end
  end

  def edit
    @plane = Plane.find(params[:id])

    render("planes/edit.html.erb")
  end

  def update
    @plane = Plane.find(params[:id])

    @plane.model = params[:model]
    @plane.capacity = params[:capacity]
    @plane.cabin_height = params[:cabin_height]
    @plane.photo_id = params[:photo_id]

    save_status = @plane.save

    if save_status == true
      redirect_to("/planes/#{@plane.id}", :notice => "Plane updated successfully.")
    else
      render("planes/edit.html.erb")
    end
  end

  def destroy
    @plane = Plane.find(params[:id])

    @plane.destroy

    if URI(request.referer).path == "/planes/#{@plane.id}"
      redirect_to("/", :notice => "Plane deleted.")
    else
      redirect_to(:back, :notice => "Plane deleted.")
    end
  end
end
