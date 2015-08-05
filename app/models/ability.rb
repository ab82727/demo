class Ability
  include CanCan::Ability

  def initialize(user1)

    # Define abilities for the passed in user here. For example:
    #
       user1 ||= User.new # guest user (not logged in)
       
       if user1.has_role?(:admin)
         can :manage, :all
         can :teset, :all
       else
         can :newmentee, :all
         can :group, :all
         can :group1, :all
	 can :group2, :all
	 can :group3, :all
	 can :group4, :all
	 can :group5, :all
 	 can :group6, :all
	 can :group7, :all
	 can :group8, :all
	 can :group9, :all
	 can :group10, :all
	 can :group11, :all
	 can :group12, :all
	 can :group13, :all
	 can :group14, :all
	 can :group15, :all
	 can :group16, :all
	 can :group17, :all
         can :tips, :all
         can :registagree, :all
         can :menteeagree, :all
         can :mentoragree, :all
         can :create, :all 
         can :read, :all
         can :new, :all
         can :home, :all
       end
     can :update, User do |user|
        (user.id == user1.id)
     end
     can :secretedata, User do |user|
        (user.id == user1.id)
     end

    #
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
