require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper 

  def self.scrape_index_page(index_url)
    new = []
    doc = Nokogiri::HTML(open(index_url))
    doc.css(".student-card").each do |student|
      new << { :name => student.search("h4").text, 
               :location => student.search("p").text,
               :profile_url => student.search("a").attribute("href").value
             }
    end
    new
  end

  def self.scrape_profile_page(profile_url)
    new = {}
    doc = Nokogiri::HTML(open(profile_url))
    new[:profile_quote] = doc.css(".")
    doc.css(".social-icon-container a").each do |link|
     url = anchor.attribute("href").text
      if url =~ /twitter/
        new[:twitter] = url
      elsif url =~ /linkedin/
        new[:linkedin] = url
      elsif url =~ /github/
        new[:github] = url
      else
        new[:blog]=url
      end
    end
    new
  end

end

