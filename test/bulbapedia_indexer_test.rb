require 'test_helper'

class BulbapediaIndexerTest < Minitest::Test
  include BulbapediaIndexer

  def test_that_it_has_a_version_number
    refute_nil ::BulbapediaIndexer::VERSION
  end

  def test_get_pokemon_name_bulbasaur
    name = get_pokemon_name(1)
    puts name
    assert name == 'Bulbasaur'
  end
end
