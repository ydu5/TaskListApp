class Task < ActiveRecord::Base
  belongs_to :tasklist

  def to_s
  	name
  end

  validates :title, :priority, :duedate, :tasklist, presence: {message: "Required fields"}

  validates :priority, numericality: true

  validates :priority, inclusion: { in: 1..10, message: 'Must be between 1 and 10'}
end
