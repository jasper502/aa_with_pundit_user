module ActiveAdmin
class UserPolicy < ApplicationPolicy

  def index?
    true
  end
  
  class Scope < Scope
    def resolve
      User.all
    end
  end
    
  
end

end
