class Ability
  include CanCan::Ability

  def initialize(user)
    if user.is_admin?
      can :manage, :all
    else
      cannot :manage, User
      cannot :manage, VendingMachine
      cannot :read, VendingMachine
    end
  end
end