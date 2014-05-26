class SubmissionsController < InheritedResources::Base
	def new
		@submission = Submission.new
	end

	def create
		@submission = Submission.new(submission_params)

		if @submission.save
			redirect_to root_path, notice: "Thank you for your submission, #{@submission.first_name}. We will get back to you once we have reviewed all the applications!"
		else
			render action: 'new'
		end
	end

	private

	def submission_params
		params.require(:submission).permit!
	end
end
