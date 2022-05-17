class Ability
  include CanCan::Ability

  def initialize(user)
    admin = 'admin'

    user ||= User.new

    can :read, User
    can :read, Recipe
    can :read, Food
    can :read, RecipeFood
    can :read, Inventory
    can :read, InventoryFood

    return unless user.present?

    # can :manage, Post, author_id: user.id
    # can :manage, Comment, author_id: user.id
    can :manage, User, user_id: user.id
    can :manage, Recipe, user_id: user.id
    can :manage, Food, user_id: user.id
    can :manage, RecipeFood, user_id: user.id
    can :manage, Inventory, user_id: user.id
    can :manage, InventoryFood, user_id: user.id

    return unless user.is?(admin)

    can :manage, :all
  end
end
