ActiveAdmin.register Post do

  before_filter :only => [:index] do
      policy_scope(collection)
      authorize collection
  end
  
  
  before_filter :except => [:index] do
      authorize resource
  end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
