# frozen_string_literal: true

require 'test_helper'

class IliasTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ilias::VERSION
  end

  # Array
  def test_array_includes_an_element
    array = [1, 2]

    assert array.includes?(1) == array.include?(1)
  end

  # Hash
  def test_hash_includes_an_element
    array = { h: 'hash' }

    assert array.includes?(:h) == array.include?(:h)
  end

  # String
  def test_string_ends_with_char
    string = 'ruby'

    assert string.ends_with? == string.end_with?
  end

  def test_string_starts_with_char
    string = 'ruby'

    assert string.starts_with? == string.start_with?
  end

  def test_string_includes_contains_char
    string = 'ruby'

    assert string.includes?('r') == string.include?('r')
    assert string.contains?('r') == string.include?('r')
  end
end
