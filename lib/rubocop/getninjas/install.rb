# frozen_string_literal: true

require 'thor'
require 'thor/group'

module Rubocop
  module Getninjas
    class Install < Thor::Group
      include Thor::Actions
      source_root File.expand_path('./generators/templates', __dir__)

      desc 'Create .rubocop.yml'
      def create_rubocop_yml
        copy_file 'rubocop.yml', '.rubocop.yml'
      end
    end
  end
end
