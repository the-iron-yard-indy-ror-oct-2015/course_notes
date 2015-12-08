class NotesController < ApplicationController

  def create
    @note = Note.new(note_params)
    if @note.save
      render json: @note
    else
      render json: @note.errors.full_messages, status: 400
    end
  end

  def index
    @notes = Note.order("created_at DESC")
    render json: {pages: {page: 1, per_page: 30}, notes: serialized_notes(@notes)}
  end

  private

  def note_params
    params.require(:note).permit(:title, :body)
  end

  def serialized_notes(notes)
    ActiveModel::ArraySerializer.new(notes).as_json
  end

end
