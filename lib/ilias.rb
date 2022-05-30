# frozen_string_literal: true

require_relative 'version'
Dir["#{__dir__}/ilias/*.rb"].each { |file| require file }

module Ilias
  class Error < StandardError; end
end
