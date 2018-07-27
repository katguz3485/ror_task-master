class Payment < ActiveRecord::Base
  belongs_to :student, optional: true
  validates :sum, :date, :student, presence: true


end