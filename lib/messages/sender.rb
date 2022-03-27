# frozen_string_literal: true

module Messages
  class Sender
    attr_reader :bot,
    attr_reader :message

    def initialize(options = {})
      @bot = options[:bot]
      @message = modify_from_model_columns(options[:columns])
    end

    def self.send_message(options)
      new(options).send_message
    end

    def send_message
      message
    end

    private

    def modify_from_model_columns(columns)
    end
  end
end
