class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new
    @note.content = params[:content]
    @note.context = params[:context]
    @note.occurence = params[:occurence]
    @note.entry_made = Date.today
    @note.relationship_id = params[:relationship_id]
    @note.user_id = current_user.id

    if @note.save
      redirect_to "/relationships/#{@note.relationship_id}", :notice => "Note created successfully."
    else
      render 'new'
    end
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])

    @note.content = params[:content]
    @note.context = params[:context]
    @note.occurence = params[:occurence]

    if @note.save
      redirect_to "/relationships/#{@note.relationship_id}", :notice => "Note updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @note = Note.find(params[:id])

    @note.destroy

    redirect_to "/notes", :notice => "Note deleted."
  end
end
