require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri :: HTML(html)
    student_cards = doc.css(".student-card a")
    student_cards.collect do |element|
      {:name => element.css(".student-name").text,
        :location => element.css(".student-location").text,
        :porfile_url => element.attr('href')}
      end
  end

  def self.scrape_profile_page(profile_url)
    html = open(profile_url)
    doc = Nokogiri :: HTML(html)
    return_hash = {}

  social = doc.css(",vitals-container .social-icon-container a")
  social.each do |element| #iderate thru asign keys to elements it they exist
    if element.attr


  end

end
