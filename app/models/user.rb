class User < ActiveRecord::Base

    
    #for identifying users based on uid 
    def self.find_or_create_from_auth_hash(auth)
        where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |u|
            u.provider = auth.provider 
            u.uid = auth.uid
            u.first_name = auth.info.first_name
			u.last_name = auth.info.last_name
			u.email = auth.info.email
			u.picture = auth.info.image
			u.save!
		end 
    end
    
end
