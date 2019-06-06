class AttendeesController < ApplicationController
  def index
    @attendees = Attendee.all

    render("attendee_templates/index.html.erb")
  end

  def show
    @attendee = Attendee.find(params.fetch("id_to_display"))

    render("attendee_templates/show.html.erb")
  end

  def new_form
    @attendee = Attendee.new

    render("attendee_templates/new_form.html.erb")
  end

  def create_row
    @attendee = Attendee.new

    @attendee.meeting_id = params.fetch("meeting_id")
    @attendee.connection_id = params.fetch("connection_id")

    if @attendee.valid?
      @attendee.save

      redirect_back(:fallback_location => "/attendees", :notice => "Attendee created successfully.")
    else
      render("attendee_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_meeting
    @attendee = Attendee.new

    @attendee.meeting_id = params.fetch("meeting_id")
    @attendee.connection_id = params.fetch("connection_id")

    if @attendee.valid?
      @attendee.save

      redirect_to("/meetings/#{@attendee.meeting_id}", notice: "Attendee created successfully.")
    else
      render("attendee_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_connection
    @attendee = Attendee.new

    @attendee.meeting_id = params.fetch("meeting_id")
    @attendee.connection_id = params.fetch("connection_id")

    if @attendee.valid?
      @attendee.save

      redirect_to("/connections/#{@attendee.connection_id}", notice: "Attendee created successfully.")
    else
      render("attendee_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @attendee = Attendee.find(params.fetch("prefill_with_id"))

    render("attendee_templates/edit_form.html.erb")
  end

  def update_row
    @attendee = Attendee.find(params.fetch("id_to_modify"))

    @attendee.meeting_id = params.fetch("meeting_id")
    @attendee.connection_id = params.fetch("connection_id")

    if @attendee.valid?
      @attendee.save

      redirect_to("/attendees/#{@attendee.id}", :notice => "Attendee updated successfully.")
    else
      render("attendee_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_meeting
    @attendee = Attendee.find(params.fetch("id_to_remove"))

    @attendee.destroy

    redirect_to("/meetings/#{@attendee.meeting_id}", notice: "Attendee deleted successfully.")
  end

  def destroy_row_from_connection
    @attendee = Attendee.find(params.fetch("id_to_remove"))

    @attendee.destroy

    redirect_to("/connections/#{@attendee.connection_id}", notice: "Attendee deleted successfully.")
  end

  def destroy_row
    @attendee = Attendee.find(params.fetch("id_to_remove"))

    @attendee.destroy

    redirect_to("/attendees", :notice => "Attendee deleted successfully.")
  end
end
