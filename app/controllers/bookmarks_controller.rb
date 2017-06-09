class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
    @my_routes = current_user.bookmarked_routes

    render("bookmarks/index.html.erb")
  end

  def show
    @bookmark = Bookmark.find(params[:id])

    render("bookmarks/show.html.erb")
  end

  def new
    @bookmark = Bookmark.new

    render("bookmarks/new.html.erb")
  end

  def create
    @bookmark = Bookmark.new

    @bookmark.user_id = params[:user_id]
    @bookmark.route_id = params[:route_id]
    @bookmark.date = params[:date]

    save_status = @bookmark.save

    if save_status == true
      redirect_to("/routes", :notice => "Bookmark created successfully.")
    else
      redirect_to("/routes", :alert => "Bookmark could not be created successfully.")
    end
  end

  def edit
    @bookmark = Bookmark.find(params[:id])

    render("bookmarks/edit.html.erb")
  end

  def update
    @bookmark = Bookmark.find(params[:id])

    @bookmark.user_id = params[:user_id]
    @bookmark.route_id = params[:route_id]
    @bookmark.date = params[:date]

    save_status = @bookmark.save

    if save_status == true
      redirect_to("/bookmarks/#{@bookmark.id}", :notice => "Bookmark updated successfully.")
    else
      render("bookmarks/edit.html.erb")
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])

    @bookmark.destroy

    if URI(request.referer).path == "/bookmarks/#{@bookmark.id}"
      redirect_to("/", :notice => "Bookmark deleted.")
    else
      redirect_to(:back, :notice => "Bookmark deleted.")
    end
  end
end
