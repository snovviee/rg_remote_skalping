# frozen_string_literal: true

module Strategies
  module Scalping
    class TradeInfo
      attr_reader :bot, :trade

      def initialize(options = {})
        @bot = options[:bot]
        @trade = options[:trade]
      end

      def self.start(options = {})
        new(options).start
      end

      def start
        bot.listen do |message|
          trade.create(transform(message)).save!
        end
      end
    end
  end
end
