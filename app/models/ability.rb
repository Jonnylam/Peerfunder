class Ability
  include CanCan::Ability

  def lead_syndicate_company

  end

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
      user ||= User.new # guest user (not logged in)
      alias_action :create, :read, :update, :destroy, :to => :crud

      if user.admin?
        can :manage, :all
      else #if user.accreditation?
        can :manage, :all
        can :crud, Company, :owner_id => user.id
        can :crud, User, :user_id => user.id
        # binding.pry
        # can :crud, Round do |round|
        #   round.company.owner_id == user.id
        # end
        can :crud, Round
        can :create, Investment

        can :read, Round
        can :read, Company
        can :read, Investment, :investor_id => user.id
      # else
      #   can [:create, :read], User
      #   can :read, Company
      #   # can :crud, Round
      end



      # if user.eligible_investor?
      #   can :crud, Company, :owner_id => user.id
      #   can :crud, User, :user_id => user.id
      #   can :read, Round
      #   can :read, Company
      #   can :create, Investment
      #   can :read, Investment, :investor_id => user.id
      # end

      # if user.user_type? :admin
      #   can :manage, :all
      # elsif user.user_type? :leadsyndicate
      #   can :manage, Company(where)
      # elsif user.user_type? :accredited
      #   can :manage, :all
      # elsif user.user_type? :eligible
      #   can :manage, :users
      #   can :manage, :companies
      #   can :read, :rounds
      #   can :crud, :investments
      # elsif user.user_type? :normal
      #   can :manage, :users
      #   can :manage, :companies
      #   cannot :crud, :rounds
      #   cannot :crud, :investments
      # else
      #   can :read, :companies
      #   can :create, :users
      # end

    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end