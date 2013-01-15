class FriendsController < ApplicationController
	def index 
	end
 def tweet	
	 	@fid=User.find_by_id(current_user.id)
	@id=@fid.uid
				@followertweet=HTTParty.get("https://api.twitter.com/1/followers/ids.json?cursor=-1&user_id=#{@id}",{:headers=>{"content-type"=>"application/json","accept"=>"application/json"},:body=>{}})
	    @followertweet=JSON.parse(@followertweet.body)
	    @followertweet["ids"].each do |a|
			@followerindividualtweet=HTTParty.get("https://api.twitter.com/1/statuses/user_timeline.json?user_id=#{@id}&include_entities=true",{:headers=>{"content-type"=>"application/json","accept"=>"application/json"},:body=>{}})
			JSON.parse(@followerindividualtweet.body)
			end
			@followerlistweet = JSON.parse(@followerindividualtweet.body)
		end
		def following
			@fid=User.find_by_id(current_user.id)
	@id=@fid.uid
	@following=HTTParty.get("https://api.twitter.com/1/friends/ids.json?cursor=-1&user_id=#{@id}",{:headers=>{"content-type"=>"application/json","accept"=>"application/json"},:body=>{}})		
	@following=JSON.parse(@following.body)
	@followee=[]
	@following["ids"].each do |a|
	@individual=HTTParty.get("https://api.twitter.com/1/users/show.json?user_id=#{a}&include_entities=true",{:headers=>{"content-type"=>"application/json","accept"=>"application/json"},:body=>{}})
        @followee<<JSON.parse(@individual.body)
	end
	end
		def follower
			@fid=User.find_by_id(current_user.id)
	@id=@fid.uid
			@follower=HTTParty.get("https://api.twitter.com/1/followers/ids.json?cursor=-1&user_id=#{@id}",{:headers=>{"content-type"=>"application/json","accept"=>"application/json"},:body=>{}})
	@follower=JSON.parse(@follower.body)
	@followerlist=[]
	@follower["ids"].each do |a|
	@followerindividual=HTTParty.get("https://api.twitter.com/1/users/show.json?user_id=#{a}&include_entities=true",{:headers=>{"content-type"=>"application/json","accept"=>"application/json"},:body=>{}})
        @followerlist<<JSON.parse(@followerindividual.body)
			end	
		end
		def contact
		end
		def page
		end
end
