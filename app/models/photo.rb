class Photo < ActiveRecord::Base
    ###### Uploaders ######
    mount_uploader :image, PhotoUploader
    
    ###### Validations ######
    validates :image,
        presence: true
end
