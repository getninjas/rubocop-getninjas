# frozen_string_literal: true

require 'thor'
require_relative './version'
require_relative './install'

module Rubocop
  module Getninjas
    VERSION = Rubocop::Getninjas::VERSION
    class Cli < Thor
      desc 'version', 'Display version'
      map %w[-v --version] => :version

      def version
        say "RubocopGetninjas #{VERSION}"
      end

      desc 'install', 'Install rubocop for Getninjas'
      def install
        Rubocop::Getninjas::Install.start
      end
    end
  end
end
