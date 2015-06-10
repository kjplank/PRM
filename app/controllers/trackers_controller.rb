class TrackersController < ApplicationController

  def manage
    @tracker = Tracker.new
    @tag = Tag.new
    @relationship = Relationship.find(params[:relationship_id])
    render 'tags/manage'
  end

  def index
    @trackers = Tracker.all
  end

  def show
    @tracker = Tracker.find(params[:id])
  end

  def new
    @tracker = Tracker.new
  end

  def create
    @tag = Tag.find(params[:tag_id])
    @relationship = Relationship.find(params[:relationship_id])

    @tracker = Tracker.new
    @tracker.tag_id = @tag.id
    @tracker.relationship_id = @relationship.id
    @tracker.user_id = current_user.id

    if @tracker.save
      render '/tags/manage'
    else
      render '/tags/manage'
    end

  end

  def edit
    @tracker = Tracker.find(params[:id])
  end

  def update
    @tracker = Tracker.find(params[:id])

    @tracker.tag_id = params[:tag_id]
    @tracker.relationship_id = params[:relationship_id]
    @tracker.user_id = params[:user_id]

    if @tracker.save
      redirect_to "/trackers", :notice => "Tracker updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @tracker = Tracker.find(params[:id])
    @tracker.destroy
    redirect_to "/trackers", :notice => "Tracker deleted."
  end

  def untag
    @tag = Tag.find(params[:tag_id])
    @relationship = Relationship.find(params[:relationship_id])

    @tracker = Tracker.where(:tag_id => params[:tag_id]).where(:relationship_id => params[:relationship_id])
    @tracker.destroy_all

    render 'tags/manage'
  end

end
