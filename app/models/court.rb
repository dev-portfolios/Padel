class Court < ApplicationRecord
  COURT_SIZE = [ "double",  "single" ].freeze
  COURT_TYPE = [ "outdoor", "indoor" ].freeze

  belongs_to :venue

  attr_accessor :slots
end
