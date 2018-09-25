class Quote < ApplicationRecord
	validates_uniqueness_of :post_id
end
