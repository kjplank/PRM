ActiveAdmin.register Relationship do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #

  permit_params :first_name, :last_name, :periodicity_of_communication, :date_of_checkin, :holiday_card, :shared_activities_history, :education, :interests, :professional, :family, :first_met, :birthday, :birthday, :email, :next_checkin, :mobile, :desk

  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
