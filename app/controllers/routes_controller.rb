class RoutesController < ApplicationController
  def index
    @routes = Route.all
    @bookmark = Bookmark.all

    render("routes/index.html.erb")
  end

  def show
    @route = Route.find(params[:id])

    render("routes/show.html.erb")
  end

  def new
    @route = Route.new

    render("routes/new.html.erb")
  end

  def create
    @route = Route.new

    @route.departure_id = params[:departure_id]
    @route.arrival_id = params[:arrival_id]

    save_status = @route.save

    if save_status == true
      redirect_to("/routes/#{@route.id}", :notice => "Route created successfully.")
    else
      render("routes/new.html.erb")
    end
  end

  def edit
    @route = Route.find(params[:id])

    render("routes/edit.html.erb")
  end

  def update
    @route = Route.find(params[:id])

    @route.departure_id = params[:departure_id]
    @route.arrival_id = params[:arrival_id]

    save_status = @route.save

    if save_status == true
      redirect_to("/routes/#{@route.id}", :notice => "Route updated successfully.")
    else
      render("routes/edit.html.erb")
    end
  end

  def destroy
    @route = Route.find(params[:id])

    @route.destroy

    if URI(request.referer).path == "/routes/#{@route.id}"
      redirect_to("/", :notice => "Route deleted.")
    else
      redirect_to(:back, :notice => "Route deleted.")
    end
  end
end
