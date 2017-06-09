namespace :slurp do
  desc "TODO"
  task pilots: :environment do

    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "pilot_data.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      p = Pilot.new
      p.name = row["Name"]
      p.rank = row["Rank"]
      p.bio = row["Bio"]
      p.photo_id = row["Photo_Id"]
      p.plane_id = row["Plane_Id"]
      p.save
    end

  end

  task arrivals: :environment do

    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "call_letters.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      a = Arrival.new
      a.call_letters = row["Call_Letters"]
      a.city = row["City"]
      a.state = row["State"]
      a.save
    end

    puts "There are now #{Arrival.count} rows in the arrivals table"

  end

  task departures: :environment do

    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "call_letters.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      d = Departure.new
      d.call_letters = row["Call_Letters"]
      d.city = row["City"]
      d.state = row["State"]
      d.save
    end

    puts "There are now #{Departure.count} rows in the departures table"

  end

  task photos: :environment do

    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "photos.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      p = Photo.new
      p.source = row["source"]
      p.save
    end

    puts "There are now #{Photo.count} rows in the photos table"

  end

  task routes: :environment do

    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "routes.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      r = Route.new
      r.departure_id = row["departure_id"]
      r.arrival_id = row["arrival_id"]
      r.save
    end

    puts "There are now #{Route.count} rows in the routes table"

  end

end
