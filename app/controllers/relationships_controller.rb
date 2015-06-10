class RelationshipsController < ApplicationController
  def checkins
    @relationships = Relationship.all
  end

  def index
    @relationships = Relationship.all
  end

  def show
    @relationship = Relationship.find(params[:id])
  end

  def new
    @relationship = Relationship.new
  end

  def create
    @relationship = Relationship.new
    @relationship.user_id = current_user.id
    @relationship.first_name = params[:first_name]
    @relationship.last_name = params[:last_name]
    @relationship.periodicity_of_communication = params[:periodicity_of_communication]
    @relationship.date_of_checkin = params[:date_of_checkin]
    @relationship.christmas_card = params[:christmas_card]
    @relationship.holiday_card = params[:holiday_card]
    @relationship.shared_activities_history = params[:shared_activities_history]
    @relationship.education = params[:education]
    @relationship.interests = params[:interests]
    @relationship.professional = params[:professional]
    @relationship.family = params[:family]
    @relationship.first_met = params[:first_met]
    @relationship.birthday = params[:birthday]
    @relationship.email = params[:email]

    if @relationship.save
      redirect_to "/relationships", :notice => "Relationship created successfully."
    else
      render 'new'
    end
  end

  def edit
    @relationship = Relationship.find(params[:id])
  end

  def update
    @relationship = Relationship.find(params[:id])

    @relationship.first_name = params[:first_name]
    @relationship.last_name = params[:last_name]
    @relationship.periodicity_of_communication = params[:periodicity_of_communication]
    @relationship.date_of_checkin = params[:date_of_checkin]
    @relationship.christmas_card = params[:christmas_card]
    @relationship.holiday_card = params[:holiday_card]
    @relationship.shared_activities_history = params[:shared_activities_history]
    @relationship.education = params[:education]
    @relationship.interests = params[:interests]
    @relationship.professional = params[:professional]
    @relationship.family = params[:family]
    @relationship.first_met = params[:first_met]
    @relationship.birthday = params[:birthday]
    @relationship.email = params[:email]

    if @relationship.save
      redirect_to "/relationships", :notice => "Relationship updated successfully."
    else
      render 'edit'
    end
  end

  def checkin
    @relationship = Relationship.find(params[:id])
    @relationship.date_of_checkin = Date.today
    @relationship.save
    redirect_to "/", :notice => "Checked-in with #{@relationship.first_name} #{@relationship.last_name}!"
  end


  def destroy
    @relationship = Relationship.find(params[:id])

    @relationship.destroy

    redirect_to "/relationships", :notice => "Relationship deleted."
  end

end
