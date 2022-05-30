# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
require 'ilias'

require 'minitest/autorun'

class IliasTest < Minitest::Test
  def assert_alias_equivalence *aliases, on:, with: []
    aliases.each do |_alias|
      assert on.respond_to? _alias
    end
    last_value = :_undefined
    aliases.each do |_alias|
      value = on.send _alias, *with
      if last_value == :_undefined
        last_value = value
      else
        assert value == last_value
      end
    end
  end

  private

  def all_equal? array
    array.uniq.size <= 1
  end
end
