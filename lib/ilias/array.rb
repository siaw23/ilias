# frozen_string_literal: true

class Array
  alias intersects? intersect? if RUBY_VERSION >= '3.1'
end
