require 'nokogiri'
require 'open-uri'

require 'bulbapedia_indexer/version'

module BulbapediaIndexer
  @@url_root = 'https://www.pokemon.com/us/pokedex/'
  class Error < StandardError; end

  def get_pokemon_name(number)
    doc = Nokogiri::HTML(open(@@url_root + number.to_s))
    doc.css('.pokedex-pokemon-pagination-title>div').each do |link|
      return own_text(link).strip!
    end
  end

  def own_text(node)
    node.clone(1).tap{ |copy| copy.element_children.remove }.text
  end
end
