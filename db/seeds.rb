# Populate the database

# Methods

def add_app name, description, store_url, main_photo_url, color_background, color_text
  sql_statement = "
    INSERT INTO apps (name, description, store_url, main_photo_url, color_background, color_text)
    VALUES ('#{name}', '#{description}', '#{store_url}', '#{main_photo_url}', '#{color_background}', '#{color_text}');
  "
  ActiveRecord::Base.connection.execute(sql_statement)
end

def add_sample_photos app_id, photos_arr
  photos_arr.each do |photo_url|
    ActiveRecord::Base.connection.execute("INSERT INTO sample_photos (app_id, url) VALUES (#{app_id}, '#{photo_url}');")
  end
end

# ---

# Clark County Paramedic

name = "Clark County Paramedic"

description = <<-eos
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

store_url = "http://itunes.apple.com/au/app/clark-county-paramedic/id515196084?ls=1&mt=8"

main_photo_url = "http://i.imgur.com/M9nbRxb.png"

color_background = "252822"
color_text = "359aa3"

photos = [
  "http://i.imgur.com/5sBDevB.png",
  "http://i.imgur.com/LvXideu.png",
  "http://i.imgur.com/ptV2YvM.png"
]

add_app(name, description, store_url, main_photo_url, color_background, color_text)
add_sample_photos(1, photos)

# ---

# Dopamine

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

color_background = "476677"
color_text = "f2bd98"

photos = [
  "http://i.imgur.com/oCF04U5.png",
  "http://i.imgur.com/3Y4Sifk.png",
  "http://i.imgur.com/SIo7Om4.png"
]

add_app(name, description, store_url, main_photo_url, color_background, color_text)
add_sample_photos(2, photos)

# ---

# Fentanyl

name = "Fentanyl App"

description = <<-eos
  When you need to figure out the dosage of fentanyl in a high stressed situation (either pediatric or adult), there is no faster way than an app dedicated the task. Every effort has gone into simplicity and speed. Taps have been counted, creating the fastest possible way to get the dosage you need. The only inputs are two slider bars: adjust the patients weight and your desired strength. Your dose is immediately calculated with the appropriate indications corresponding to strength displayed.


  Disclaimer:
  Fentanyl App is meant to aid in the calculation of fentanyl for many different medical professionals. The strength calculated may differ from what your local protocols allow. Always use your own  judgment in patient treatment.
eos

store_url = "http://itunes.apple.com/us/app/fentanyl/id505754539?ls=1&mt=8"

main_photo_url = "http://i.imgur.com/cnWWVAc.png"

color_background = "ffc77b"
color_text = "2c6782"

photos = [
  "http://i.imgur.com/AX56BRG.png",
  "http://i.imgur.com/QBQTGwo.png",
  "http://i.imgur.com/XJKg6gI.png"
]

add_app(name, description, store_url, main_photo_url, color_background, color_text)
add_sample_photos(3, photos)

# ---

# Revised Trauma Score

name = "Revised Trauma Score"

description = <<-eos
  The revised trauma score uses a patient''s systolic blood pressure, respiratory rate, and Glasgow Coma Scale in order to perform rapid triage of multiple patients in disaster situations.

  In addition to the calculation of the T-RTS (designed for easy field triage), the RTSc is simultaneously calculated, allowing for a weighted sum of the coded values that calculates outcome evaluations and controls for injury severity
  The RTSc provides a reliable outcome prediction for patients, including those with severe head injuries.

  Every effort has gone into optimizing for simple, fast, and easily accurate selection in a high stress situations.
eos

store_url = "http://itunes.apple.com/us/app/rts/id505920345?ls=1&mt=8"

main_photo_url = "http://i.imgur.com/r6pnk0j.png"

color_background = "cf0100"
color_text = "f8fe45"

photos = [
  "http://i.imgur.com/UEwRCkX.png",
  "http://i.imgur.com/4xJP623.png",
  "http://i.imgur.com/rYgGwPf.png"
]

add_app(name, description, store_url, main_photo_url, color_background, color_text)
add_sample_photos(4, photos)

# ---

# APGAR Pro

name = "APGAR Pro"

description = <<-eos
  APGAR Pro is designed for the professional healthcare worker that works with newborns, whether OB/GYN, Mid-wife, or EMT. Every effort has gone into creating a fast app that requires the absolute fewest taps to easily and accurately get an APGAR score no matter the environment.
eos

store_url = "http://itunes.apple.com/us/app/apgar-pro/id506563388?ls=1&mt=8"

main_photo_url = "http://i.imgur.com/m7p2GY1.png"

color_background = "73c7a9"
color_text = "863d24"

photos = [
  "http://i.imgur.com/7fC92uM.png",
  "http://i.imgur.com/FwNtQpO.png",
  "http://i.imgur.com/hdd0chL.png"
]

add_app(name, description, store_url, main_photo_url, color_background, color_text)
add_sample_photos(5, photos)

