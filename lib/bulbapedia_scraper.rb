require 'nokogiri'
require 'open-uri'

require 'bulbapedia_scraper/models'
require 'bulbapedia_scraper/version'

module BulbapediaScraper
  @@url_root = 'https://www.pokemon.com/us/pokedex/'
  class Error < StandardError; end

  def get_pokemon(number)
    pokemon = Pokemon.new(number)
    doc = Nokogiri::HTML(open(@@url_root + number.to_s))
    doc.css('.pokedex-pokemon-pagination-title>div').each do |link|
      pokemon.set_name(own_text(link).strip!)
      return pokemon
    end
  end

  def own_text(node)
    node.clone(1).tap{ |copy| copy.element_children.remove }.text
  end
end
