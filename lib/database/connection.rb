# frozen_string_literal: true

require 'yaml'

module Database
  class Connection
    def self.establish_connection
      configuration = YAML::load(IO.read(database_config_path))

      ActiveRecord::Base.establish_connection(configuration)
    end

    private

    def self.database_config_path
      'config/database.yml'
    end
  end
end