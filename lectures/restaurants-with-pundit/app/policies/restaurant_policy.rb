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
    user.admin?
  end

  # def edit?
  #   update?
  # end

  def update?
    # current_user == restaurant.user
    user_is_owner_or_admin?
  end

  def destroy?
    user_is_owner_or_admin?
  end

  private

  def user_is_owner?
    user == record.user
  end

  def user_is_owner_or_admin?
    user_is_owner? || user.admin?
  end
end
