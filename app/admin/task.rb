ActiveAdmin.register Task do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :course_id, :title, :description, :video_url, :image
 
  show do
    attributes_table do
      row :course_id
      row :title
      row :description
      row :video_url
      row :image do
        task.image.present? ? image_tag(task.image.url, height: 300, width: 300) : content_tag(:span, "No Image")
      end
    end
  end
  
  
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
