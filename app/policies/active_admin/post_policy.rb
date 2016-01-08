module ActiveAdmin
class PostPolicy < ApplicationPolicy
  class Scope < Scope
  #class Scope < Struct.new(:user, :scope)

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

end
