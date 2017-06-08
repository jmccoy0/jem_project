class ArrivalsController < ApplicationController
  def index
    @arrivals = Arrival.all

    render("arrivals/index.html.erb")
  end

  def show
    @arrival = Arrival.find(params[:id])

    render("arrivals/show.html.erb")
  end

  def new
    @arrival = Arrival.new

    render("arrivals/new.html.erb")
  end

  def create
    @arrival = Arrival.new

    @arrival.call_letters = params[:call_letters]
    @arrival.city = params[:city]
    @arrival.state = params[:state]

    save_status = @arrival.save

    if save_status == true
      redirect_to("/arrivals/#{@arrival.id}", :notice => "Arrival created successfully.")
    else
      render("arrivals/new.html.erb")
    end
  end

  def edit
    @arrival = Arrival.find(params[:id])

    render("arrivals/edit.html.erb")
  end

  def update
    @arrival = Arrival.find(params[:id])

    @arrival.call_letters = params[:call_letters]
    @arrival.city = params[:city]
    @arrival.state = params[:state]

    save_status = @arrival.save

    if save_status == true
      redirect_to("/arrivals/#{@arrival.id}", :notice => "Arrival updated successfully.")
    else
      render("arrivals/edit.html.erb")
    end
  end

  def destroy
    @arrival = Arrival.find(params[:id])

    @arrival.destroy

    if URI(request.referer).path == "/arrivals/#{@arrival.id}"
      redirect_to("/", :notice => "Arrival deleted.")
    else
      redirect_to(:back, :notice => "Arrival deleted.")
    end
  end
end
