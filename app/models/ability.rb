class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
    if user.role  == 'admin'
      can :manage, :all
    else
      can :read, :all
    end

    if user.blank?
      cannot :manage, :all
    else
      can :create, [ Note, Thesis ]
      can :update, [ Note, Thesis ], user_id: user.id
      can :destroy, [ Note, Thesis ], user_id: user.id
      # can :update, Note do |note|
      #   (note.user_id == user.id)
      # end
      # can :destroy, Note do |note|
      #   (note.user_id == user.id)
      # end
      basic_read_only
    end

  end
  protected

    def basic_read_only
        can :read,    Note
    end
end
