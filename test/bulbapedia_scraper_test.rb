require 'test_helper'

class BulbapediaScraperTest < Minitest::Test
  include BulbapediaScraper

  def test_that_it_has_a_version_number
    refute_nil ::BulbapediaScraper::VERSION
  end

  def test_get_pokemon_name_bulbasaur
    pokemon = get_pokemon(1)
    puts pokemon.name
    assert pokemon.number == 1
    assert pokemon.name == 'Bulbasaur'
  end
end
