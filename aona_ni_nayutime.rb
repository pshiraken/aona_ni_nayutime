Plugin.create(:aona_ni_nayutime) do
	DEFINED_TIME = Time.new.freeze
	#Nrand = Random.new(100)
	def say_aona(m)
		#"#{"@" + m.user.idname + " 青菜に塩なう（悪い印象を与えた）"}"
		Service.primary.post(:message => "test", :replyto => m)
	end

	on_mention do |s,ms|
		ms.each do |m|
			if m.user.idname=~ /uubot/  and m[:created] > DEFINED_TIME and !m.retweet? then
				if true then
					say_aona(m)
				end
			end
		end
	end
end