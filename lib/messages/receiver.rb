# frozen_string_literal: true

module Messages
  class Receiver
    attr_reader :bot,
    attr_reader :message

    def initialize(options = {})
      @bot = options[:bot]
      @message = modify_as_model_columns(options[:message])
    end

    def self.show_mesasge(options)
      new(options).show_mesasge
    end

    def show_mesasge
      message
    end

    private

    def modify_as_model_columns(message)
    end
  end
end
