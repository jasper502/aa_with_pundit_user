module ActiveAdmin
class DefaultPolicy < ApplicationPolicy
  class Scope < Scope

    def resolve
      scope
    end
  end

  def index?
    true
  end
  
end

end
