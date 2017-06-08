Rails.application.routes.draw do
  # Routes for the Trip resource:
  # CREATE
  get "/trips/new", :controller => "trips", :action => "new"
  post "/create_trip", :controller => "trips", :action => "create"

  # READ
  get "/trips", :controller => "trips", :action => "index"
  get "/trips/:id", :controller => "trips", :action => "show"

  # UPDATE
  get "/trips/:id/edit", :controller => "trips", :action => "edit"
  post "/update_trip/:id", :controller => "trips", :action => "update"

  # DELETE
  get "/delete_trip/:id", :controller => "trips", :action => "destroy"
  #------------------------------

  # Routes for the Pilot resource:
  # CREATE
  get "/pilots/new", :controller => "pilots", :action => "new"
  post "/create_pilot", :controller => "pilots", :action => "create"

  # READ
  get "/pilots", :controller => "pilots", :action => "index"
  get "/pilots/:id", :controller => "pilots", :action => "show"

  # UPDATE
  get "/pilots/:id/edit", :controller => "pilots", :action => "edit"
  post "/update_pilot/:id", :controller => "pilots", :action => "update"

  # DELETE
  get "/delete_pilot/:id", :controller => "pilots", :action => "destroy"

  # Root
  root to: "pilots#index"

  #------------------------------

  # Routes for the Bookmark resource:
  # CREATE
  get "/bookmarks/new", :controller => "bookmarks", :action => "new"
  post "/create_bookmark", :controller => "bookmarks", :action => "create"

  # READ
  get "/bookmarks", :controller => "bookmarks", :action => "index"
  get "/bookmarks/:id", :controller => "bookmarks", :action => "show"

  # UPDATE
  get "/bookmarks/:id/edit", :controller => "bookmarks", :action => "edit"
  post "/update_bookmark/:id", :controller => "bookmarks", :action => "update"

  # DELETE
  get "/delete_bookmark/:id", :controller => "bookmarks", :action => "destroy"
  #------------------------------

  # Routes for the Review resource:
  # CREATE
  get "/reviews/new", :controller => "reviews", :action => "new"
  post "/create_review", :controller => "reviews", :action => "create"

  # READ
  get "/reviews", :controller => "reviews", :action => "index"
  get "/reviews/:id", :controller => "reviews", :action => "show"

  # UPDATE
  get "/reviews/:id/edit", :controller => "reviews", :action => "edit"
  post "/update_review/:id", :controller => "reviews", :action => "update"

  # DELETE
  get "/delete_review/:id", :controller => "reviews", :action => "destroy"
  #------------------------------

  # Routes for the Photo resource:
  # CREATE
  get "/photos/new", :controller => "photos", :action => "new"
  post "/create_photo", :controller => "photos", :action => "create"

  # READ
  get "/photos", :controller => "photos", :action => "index"
  get "/photos/:id", :controller => "photos", :action => "show"

  # UPDATE
  get "/photos/:id/edit", :controller => "photos", :action => "edit"
  post "/update_photo/:id", :controller => "photos", :action => "update"

  # DELETE
  get "/delete_photo/:id", :controller => "photos", :action => "destroy"
  #------------------------------

  # Routes for the Plane resource:
  # CREATE
  get "/planes/new", :controller => "planes", :action => "new"
  post "/create_plane", :controller => "planes", :action => "create"

  # READ
  get "/planes", :controller => "planes", :action => "index"
  get "/planes/:id", :controller => "planes", :action => "show"

  # UPDATE
  get "/planes/:id/edit", :controller => "planes", :action => "edit"
  post "/update_plane/:id", :controller => "planes", :action => "update"

  # DELETE
  get "/delete_plane/:id", :controller => "planes", :action => "destroy"
  #------------------------------

  # Routes for the Arrival resource:
  # CREATE
  get "/arrivals/new", :controller => "arrivals", :action => "new"
  post "/create_arrival", :controller => "arrivals", :action => "create"

  # READ
  get "/arrivals", :controller => "arrivals", :action => "index"
  get "/arrivals/:id", :controller => "arrivals", :action => "show"

  # UPDATE
  get "/arrivals/:id/edit", :controller => "arrivals", :action => "edit"
  post "/update_arrival/:id", :controller => "arrivals", :action => "update"

  # DELETE
  get "/delete_arrival/:id", :controller => "arrivals", :action => "destroy"
  #------------------------------

  # Routes for the Departure resource:
  # CREATE
  get "/departures/new", :controller => "departures", :action => "new"
  post "/create_departure", :controller => "departures", :action => "create"

  # READ
  get "/departures", :controller => "departures", :action => "index"
  get "/departures/:id", :controller => "departures", :action => "show"

  # UPDATE
  get "/departures/:id/edit", :controller => "departures", :action => "edit"
  post "/update_departure/:id", :controller => "departures", :action => "update"

  # DELETE
  get "/delete_departure/:id", :controller => "departures", :action => "destroy"
  #------------------------------

  # Routes for the Route resource:
  # CREATE
  get "/routes/new", :controller => "routes", :action => "new"
  post "/create_route", :controller => "routes", :action => "create"

  # READ
  get "/routes", :controller => "routes", :action => "index"
  get "/routes/:id", :controller => "routes", :action => "show"

  # UPDATE
  get "/routes/:id/edit", :controller => "routes", :action => "edit"
  post "/update_route/:id", :controller => "routes", :action => "update"

  # DELETE
  get "/delete_route/:id", :controller => "routes", :action => "destroy"
  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
