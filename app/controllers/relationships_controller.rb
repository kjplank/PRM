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
    @relationship.birthday = params[:birthday]
    @relationship.email = params[:email]
    @relationship.mobile = params[:mobile]
    @relationship.desk = params[:desk]
    @relationship.image = params[:image]
    if @relationship.periodicity_of_communication.present?
      @relationship.next_checkin = @relationship.date_of_checkin + @relationship.periodicity_of_communication.months
    end

    if @relationship.save
      redirect_to "/relationships", :notice => " Created profile for #{@relationship.first_name} #{@relationship.last_name}."
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
    @relationship.birthday = params[:birthday]
    @relationship.email = params[:email]
    @relationship.mobile = params[:mobile]
    @relationship.desk = params[:desk]
    @relationship.image = params[:image]
    if @relationship.periodicity_of_communication.present?
      @relationship.next_checkin = @relationship.date_of_checkin + @relationship.periodicity_of_communication.months
    end


    if @relationship.save
      redirect_to "/relationships/#{@relationship.id}", :notice => "Updated #{@relationship.first_name} #{@relationship.last_name}'s profile."
    else
      render 'edit'
    end
  end

  def checkin
    @relationship = Relationship.find(params[:id])
    @relationship.date_of_checkin = Date.today
    if @relationship.periodicity_of_communication.present?
      @relationship.next_checkin = @relationship.date_of_checkin + @relationship.periodicity_of_communication.months
    end

    @note = Note.new
    @note.content = "Checked in!"
    @note.entry_made = Date.today
    @note.relationship_id = @relationship.id
    @note.user_id = current_user.id
    @note.save

    @relationship.save
    redirect_to "/", :notice => "Checked-in with #{@relationship.first_name} #{@relationship.last_name}!"
  end


  def destroy
    @relationship = Relationship.find(params[:id])

    @relationship.destroy

    redirect_to "/relationships", :notice => "Relationship deleted."
  end

end
