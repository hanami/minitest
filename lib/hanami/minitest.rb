# frozen_string_literal: true

require "zeitwerk"

module Hanami
  module Minitest
    # @api private
    def self.loader
      @loader ||= Zeitwerk::Loader.new.tap do |loader|
        root = File.expand_path "..", __dir__
        loader.inflector = Zeitwerk::GemInflector.new("#{root}/hanami/minitest.rb")
        loader.tag = "hanami-minitest"
        loader.push_dir root
      end
    end
    loader.setup
  end
end
