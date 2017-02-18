class EmailAddress < ActiveRecord::Base
    
    # Regular Expression to filter for only those emails of form: "user@domain.extension":
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    
    before_save :downcase_email
    
    validates :email,
        presence: true,
        length: { maximum: 255 },
        format: { with: VALID_EMAIL_REGEX },
        uniqueness: { case_sensitive: false }
        
    private
    
        def downcase_email
           self.email = email.downcase 
        end
        
end
