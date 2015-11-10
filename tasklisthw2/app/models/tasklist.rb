class Tasklist < ActiveRecord::Base
	has_many :tasks

	validates :name, :description, presence: { message: "Required Fields"}

	validates :name, uniqueness: true
end
