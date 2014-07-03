class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
	
	validates :image, presence: true
	validates :description, presence: true

	#attr_accessor :image_file_name
	#attr_accessor :image_content_type
	#attr_accessor :image_file_size
	#attr_accessor :image_updated_at
end
