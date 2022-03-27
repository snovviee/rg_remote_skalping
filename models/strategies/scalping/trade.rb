# frozen_string_literal: true

class Trade < ActiveRecord::Base
  has_many :log
end
