# gossip.rb

require 'csv'

class Gossip

  def initialize(gossip_author, gossip_content)
  	@author = gossip_author
  	@content = gossip_content
  end


	def save
    CSV.open("./db/gossip.csv", "ab") do |csv|
    csv << [@author, @content]
   end
	end

end

#@babar = Gossip.new
#@babar.save("beber", "fsdbgt")
