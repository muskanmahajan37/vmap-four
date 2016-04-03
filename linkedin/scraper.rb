require 'linkedin_scraper'
require 'json'

profile = Linkedin::Profile.get_profile("http://www.linkedin.com/in/phodal")

File.open("data/jeffweiner08.json","w") do |f|
  f.write(profile.to_json)
end