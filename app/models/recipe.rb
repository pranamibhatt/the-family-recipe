class Recipe < ActiveRecord::Base

has_attached_file :image, default_url: "/assets/missing.png"
#has_attached_file :image, :styles => "100x100>", default_url: "/assets/missing.png"
do_not_validate_attachment_file_type :image

def self.search(query)
	where("tag LIKE ?", "%#{query}%")
end

end
