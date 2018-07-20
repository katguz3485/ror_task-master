class Payment < ActiveRecord::Base
  belongs_to :student
  validates :sum, :date, :student, presence: true


end