class Task < ActiveRecord::Base
  belongs_to :tasklist

  def to_s
  	name
  end

end
