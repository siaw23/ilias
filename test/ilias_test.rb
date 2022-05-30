# frozen_string_literal: true

require_relative 'test_helper'

class VersionTest < IliasTest
  def test_that_it_has_a_version_number
    refute_nil ::Ilias::VERSION
  end
end

class ArrayTest < IliasTest
  def test_array_includes_an_element
    assert_alias_equivalence :includes?, :include?,
                             on: [1], with: 1
  end
end

class HashTest < IliasTest
  def test_hash_includes_an_element
    assert_alias_equivalence :includes?, :include?,
                             on: { key: nil }, with: :key
  end
end

class StringTest < IliasTest
  def test_string_ends_with_char
    assert_alias_equivalence :ends_with?, :end_with?,
                             on: 'ruby'
  end

  def test_string_starts_with_char
    assert_alias_equivalence :starts_with?, :start_with?,
                             on: 'ruby'
  end

  def test_string_includes_contains_char
    assert_alias_equivalence :include?, :includes?,
                             on: 'ruby', with: 'r'
  end
end
