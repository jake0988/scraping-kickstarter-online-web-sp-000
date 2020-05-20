require "nokogiri"
require 'pry'
def create_project_hash
  # write your code here
  # This just opens a file and reads it into a variable
html = File.read('fixtures/kickstarter.html')

kickstarter = Nokogiri::HTML(html)
binding.pry
end

# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text
# image link: project.css("div.project-thumbnail a img").attribute("src").value
# description: project.css("p.bbcard_blurb").text
# project.css("ul.project-meta li a span.location-name").text
# project.css("ul.project-stats li.first.funded strong").text.gsub("%", "").to_i
create_project_hash
