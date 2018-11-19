class Task < ActiveRecord::Base
    #association to user db
    belongs_to :user
    
    validates_inclusion_of :category, in: Options['Categories']
    
end
