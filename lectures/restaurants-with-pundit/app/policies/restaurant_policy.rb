class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # scope.where(published: true)
      # scope.where(user: user) # if we wanted only to show the user's restaurants
    end
  end

  def show?
    true
  end

  # def new?
  #   create?
  # end

  def create?
    true
  end

  # def edit?
  #   update?
  # end

  def update?
    # current_user == restaurant.user
    user == record.user
  end

  def destroy?
    user == record.user
  end
end
