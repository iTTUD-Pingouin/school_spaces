class ReservationPolicy < ApplicationPolicy

  def create?
    true
  end

  def destroy?
    user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
