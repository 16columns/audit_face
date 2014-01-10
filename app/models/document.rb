class Document < ActiveRecord::Base
 attr_accessible :attachment, :finding_id
 has_attached_file :attachment

 belongs_to :finding 
end
