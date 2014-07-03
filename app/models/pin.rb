class Pin < ActiveRecord::Base
     belongs_to :user
     has_attached_file :image, :styles  => { :large=> "600X600>", :medium => "400x400>", :thumb => "100x100>" }, :processors => [:cropper]
     

     validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
     
	
	validates :image, presence: true
	validates :description, presence: true

	#attr_accessor :image_file_name
	#attr_accessor :image_content_type
	#attr_accessor :image_file_size
	#attr_accessor :image_updated_at
end
