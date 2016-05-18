class TodoItem < ActiveRecord::Base
  belongs_to :to_do_lists

  def completed?
  	!completed_at.blank?
  end
end
