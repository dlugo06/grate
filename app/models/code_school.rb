class CodeSchool < ActiveRecord::Base
  def to_s #this is instead of calling "@user.code_school.name" in the views
    name
  end
end
