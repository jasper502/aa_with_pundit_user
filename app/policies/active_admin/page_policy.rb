# app/policies/active_admin/
module ActiveAdmin
  class PagePolicy < ApplicationPolicy
    class Scope < Struct.new(:user, :scope)
      def resolve
        scope
      end
    end

    def show?
      case record.name
      when 'Dashboard'
        true
        user.admin?
      else
        false
      end
    end
  end
end