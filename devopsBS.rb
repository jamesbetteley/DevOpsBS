require 'nokogiri'
require 'open-uri'

url="http://DevOpsBullshit.com"
doc = Nokogiri(open(url))
# splitting the web page contents into an array
bla = doc.inner_text.split.uniq

#creating my bullshit bingo array
bullshit_bingo = ["DevOps", "Agile", "continuous", "Delivery", "Integration", "Facebook", "Etsy", "Lean", "culture", "CALMS", "Automation", "Branching", "Scrum", "Kanban", "Transformation"]
# comparing the 2 arrays to see which words match
bs_match = bullshit_bingo & bla

#now I want to give a score to each bit of bullshit and add up a total. I mean, why not?
total = bs_match.length * 1000
puts "Congratulations!!! Your DevOps Bullshit Bingo score is: #{total}"




