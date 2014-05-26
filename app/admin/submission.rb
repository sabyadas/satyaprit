ActiveAdmin.register Submission do
	permit_params :first_name, :last_name, :email, :essay

	index do
		selectable_column
		column :last_name
		column :first_name
		column :email
		actions
	end
end
