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

end
