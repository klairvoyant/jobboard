class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities

    user ||= User.new # guest user (not logged in)

    if user.role
      if user.role==3 #HR
        can :manage, :all
      elsif user.role==1  #student
        can :manage,[Resume,Skill,ResumePersonalDatum,ResumeJobDatum,Privacy,PersonalDatum,Objective,LinkedinDetail,Language,JobDetail,Interview,EmploymentHistory,Education,Certification,Alert]

      elsif user.role==2 #alumni
        can :manage, Teacher
      elsif user.role==4 #recruiter
        can :manage, [ContentDeveloper,Lesson]
      end
    else
      #can :read, :all
    end
  end
end
