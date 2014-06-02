ActiveAdmin.register Submission do
	permit_params :first_name, :last_name, :email, :essay

	config.sort_order = "id_asc"
	config.filters = false

	actions :all, except: [:new, :destroy, :edit]

	index do
		selectable_column
		column :id
		column :created_at
		actions
	end

  show do |ad|
    attributes_table do
      row :id
      row :essay do
      	h4 submission.essay.html_safe
      end
    end
  end
end
