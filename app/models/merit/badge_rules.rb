

module Merit
  class BadgeRules
    include Merit::BadgeRulesMethods

    def initialize
      grant_on 'comments#create',  badge: 'Jr.Critics', temporary: true, to: :user do |comment|
        comment.user.comments.count >= 2
      end
    end

     
  end
end
