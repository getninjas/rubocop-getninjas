# frozen_string_literal: true

require 'pathname'
require 'yaml'

module RuboCop
  # RuboCop Getninjas project namespace
  module Getninjas
    PROJECT_ROOT = Pathname.new(__FILE__).parent.parent.parent.expand_path.freeze
    CONFIG_DEFAULT = PROJECT_ROOT.join('lib', 'rubocop', 'getninjas', 'rubocop.yml').freeze
    CONFIG = Psych.safe_load(CONFIG_DEFAULT.read).freeze

    private_constant(*constants(false))
  end
end
