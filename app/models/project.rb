class Project < ActiveRecord::Base
#  validates :title, presence: true     # $B%G%U%)%k%H%a%C%;!<%8(B
  validates :title, presence: {message: "$BF~NO$7$F$/$@$5$$(B"}
end
