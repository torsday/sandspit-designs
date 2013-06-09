# Populate the database with sample data

require 'hashr'

# ---

blocks = []

# Clark County Paramedic

blocks << lambda do

  app = Hashr.new

  app.id = 1

  app.name = "Clark County Paramedic"

  app.description = <<-eos
    Clark County Paramedic is an app designed to increase the quality and safety of patient care as well as the experience of the paramedic.

    How it works:
    - Set the age & weight of the patient (premature baby to adult).
    - Select pertinent characteristics of the patient that apply to contraindications, precautions, and dosage adjustments.

    What you get is a list drugs with their corresponding dosages, and whether the dosage is adjusted, the drug is contraindicated, or precaution should be used in administering it. In addition, you also get a list of:
    - expected vital signs
    - recommended equipment sizing (ET Tube, suction catheter...)
    - dosage for electrical therapy (cardioversion & defibrillation)

    For infusions, check out these other apps: Dopamine & Epi Drip.

    This app is designed with the protocols of Clark County, Washington.

    Please leave a review and include any feedback or recommendations for what you would like to see.

    Disclaimer: This app is meant to aid in patient care as a means to provide redundancy. Always use your own judgment with treatment.
  eos

  app.store_url = "http://itunes.apple.com/au/app/clark-county-paramedic/id515196084?ls=1&mt=8"

  app.main_photo_url = "http://i.imgur.com/M9nbRxb.png"

  app.color_background = "1d1e1a"
  app.color_text = "a0bd9c"

  insert 'apps', app

  photos = [
    "http://i.imgur.com/hovq0uP.png",
    "http://i.imgur.com/rg9k8WU.png",
    "http://i.imgur.com/0jnfRny.png",
    "http://i.imgur.com/cbqMYLH.png"
  ]

  photos.each do |photo_url|
    insert 'sample_photos', :app_id => app.id, :url => photo_url
  end

end

# Dopamine

blocks << lambda do

  id = 2

  name = "Dopamine"

  description = <<-eos
    Dopamine app allows lightning fast calculation of the drip rate for a dopamine infusion. Every effort has gone into creating the greatest efficiency and productivity, requiring the fewest taps when seconds count, including:
    - intelligent transition from drips-per-second, to seconds-per-drip
    - graphic distinction between elements allowing for quick reference
    -  activated receptor identification

    Disclaimer: This app is meant to aid in the calculation of dopamine for many different medical professionals. The strength calculated may differ from what your local protocols allow. Always use your own judgment in patient treatment.

    Thanks for all the reviews. If you ask for something, you just might get it.
  eos

  store_url = "http://itunes.apple.com/us/app/dopamine/id507713523?ls=1&mt=8"

  main_photo_url = "http://i.imgur.com/K5Caak8.png"

  color_background = "3d5363"
  color_text = "e5b088"

  photos = [
    "http://i.imgur.com/oCF04U5.png",
    "http://i.imgur.com/3Y4Sifk.png",
    "http://i.imgur.com/SIo7Om4.png"
  ]

  add_app(id, name, description, store_url, main_photo_url, color_background, color_text)
  add_sample_photos(id, photos)

end

# Fentanyl

blocks << lambda do

  id = 3

  name = "Fentanyl App"

  description = <<-eos
    When you need to figure out the dosage of fentanyl in a high stressed situation (either pediatric or adult), there is no faster way than an app dedicated the task. Every effort has gone into simplicity and speed. Taps have been counted, creating the fastest possible way to get the dosage you need. The only inputs are two slider bars: adjust the patients weight and your desired strength. Your dose is immediately calculated with the appropriate indications corresponding to strength displayed.


    Disclaimer:
    Fentanyl App is meant to aid in the calculation of fentanyl for many different medical professionals. The strength calculated may differ from what your local protocols allow. Always use your own  judgment in patient treatment.
  eos

  store_url = "http://itunes.apple.com/us/app/fentanyl/id505754539?ls=1&mt=8"

  main_photo_url = "http://i.imgur.com/wHVaHYk.jpg"

  color_background = "e2bf85"
  color_text = "3d7397"

  photos = [
    "http://i.imgur.com/zYJijJL.png",
    "http://i.imgur.com/vtsZCe4.png",
    "http://i.imgur.com/j7NOASp.png"
  ]

  add_app(id, name, description, store_url, main_photo_url, color_background, color_text)
  add_sample_photos(id, photos)

end

# Revised Trauma Score

blocks << lambda do

  id = 4

  name = "Revised Trauma Score"

  description = <<-eos
    The revised trauma score uses a patient''s systolic blood pressure, respiratory rate, and Glasgow Coma Scale in order to perform rapid triage of multiple patients in disaster situations.

    In addition to the calculation of the T-RTS (designed for easy field triage), the RTSc is simultaneously calculated, allowing for a weighted sum of the coded values that calculates outcome evaluations and controls for injury severity
    The RTSc provides a reliable outcome prediction for patients, including those with severe head injuries.

    Every effort has gone into optimizing for simple, fast, and easily accurate selection in a high stress situations.
  eos

  store_url = "http://itunes.apple.com/us/app/rts/id505920345?ls=1&mt=8"

  main_photo_url = "http://i.imgur.com/r6pnk0j.png"

  color_background = "ad0002"
  color_text = "bbbc00"

  photos = [
    "http://i.imgur.com/UEwRCkX.png",
    "http://i.imgur.com/4xJP623.png",
    "http://i.imgur.com/rYgGwPf.png"
  ]

  add_app(id, name, description, store_url, main_photo_url, color_background, color_text)
  add_sample_photos(id, photos)

end

# APGAR Pro

blocks << lambda do

  id = 5

  name = "APGAR Pro"

  description = <<-eos
    APGAR Pro is designed for the professional healthcare worker that works with newborns, whether OB/GYN, Mid-wife, or EMT. Every effort has gone into creating a fast app that requires the absolute fewest taps to easily and accurately get an APGAR score no matter the environment.
  eos

  store_url = "http://itunes.apple.com/us/app/apgar-pro/id506563388?ls=1&mt=8"

  main_photo_url = "http://i.imgur.com/m7p2GY1.png"

  color_background = "77b899"
  color_text = "9e4a2a"

  photos = [
    "http://i.imgur.com/7fC92uM.png",
    "http://i.imgur.com/FwNtQpO.png",
    "http://i.imgur.com/hdd0chL.png"
  ]

  add_app(id, name, description, store_url, main_photo_url, color_background, color_text)
  add_sample_photos(id, photos)

end

# ---

# Helper Methods

def insert table, record
  ActiveRecord::Base.connection.insert(
    "INSERT INTO #{quote_table table}
      (#{record.keys.map { |key| quote_col key }.join(',')})
      VALUES
      (#{record.values.map(&method(:quote_val)).join(',')})"
  )
end

def quote_table arg
  ActiveRecord::Base.connection.quote_table_name arg
end

def quote_val arg
  ActiveRecord::Base.connection.quote arg
end

def quote_col arg
  ActiveRecord::Base.connection.quote_column_name arg
end

# Todo: Remove these

def add_app id, name, description, store_url, main_photo_url, color_background, color_text
  sql_statement = "
    INSERT INTO apps (id, name, description, store_url, main_photo_url, color_background, color_text)
    VALUES (#{id}, '#{name}', '#{description}', '#{store_url}', '#{main_photo_url}', '#{color_background}', '#{color_text}');
  "
  ActiveRecord::Base.connection.execute(sql_statement)
end

def add_sample_photos app_id, photos_arr
  photos_arr.each do |photo_url|
    ActiveRecord::Base.connection.execute("INSERT INTO sample_photos (app_id, url) VALUES (#{app_id}, '#{photo_url}');")
  end
end

# ---

blocks.each &:call
