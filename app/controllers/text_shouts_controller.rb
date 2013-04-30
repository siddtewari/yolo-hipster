class TextShoutsController < ShoutsController
	def create
		super
	end
	
	private

	def shout_content
		TextShout.new(params[:text_shout])
	end
end