# frozen_string_literal: true

require 'yaml'

class Configuration
  attr_reader :token

  def initialize
    @token = get_token
  end

  private

  def get_token
    YAML::load(IO.read(token_config_path))["token"]
  end

  def token_config_path
    "config/token.yml"
  end
end
