class PostPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      Post.all
    end
  end
  
  def index?
    true
  end
  
  def show?
    false
  end
  
end
