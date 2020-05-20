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
create_project_hash
