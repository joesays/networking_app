class MeetingsController < ApplicationController
  def index
    @meetings = Meeting.all

    render("meeting_templates/index.html.erb")
  end

  def show
    @attendee = Attendee.new
    @meeting = Meeting.find(params.fetch("id_to_display"))

    render("meeting_templates/show.html.erb")
  end

  def new_form
    @meeting = Meeting.new

    render("meeting_templates/new_form.html.erb")
  end

  def create_row
    @meeting = Meeting.new

    @meeting.connections_id = params.fetch("connections_id")
    @meeting.date = params.fetch("date")
    @meeting.meeting_notes = params.fetch("meeting_notes")
    @meeting.location_id = params.fetch("location_id")
    @meeting.user_id = params.fetch("user_id")
    @meeting.meeting_type = params.fetch("meeting_type")

    if @meeting.valid?
      @meeting.save

      redirect_back(:fallback_location => "/meetings", :notice => "Meeting created successfully.")
    else
      render("meeting_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_location
    @meeting = Meeting.new

    @meeting.connections_id = params.fetch("connections_id")
    @meeting.date = params.fetch("date")
    @meeting.meeting_notes = params.fetch("meeting_notes")
    @meeting.location_id = params.fetch("location_id")
    @meeting.user_id = params.fetch("user_id")
    @meeting.meeting_type = params.fetch("meeting_type")

    if @meeting.valid?
      @meeting.save

      redirect_to("/locations/#{@meeting.location_id}", notice: "Meeting created successfully.")
    else
      render("meeting_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @meeting = Meeting.find(params.fetch("prefill_with_id"))

    render("meeting_templates/edit_form.html.erb")
  end

  def update_row
    @meeting = Meeting.find(params.fetch("id_to_modify"))

    @meeting.connections_id = params.fetch("connections_id")
    @meeting.date = params.fetch("date")
    @meeting.meeting_notes = params.fetch("meeting_notes")
    @meeting.location_id = params.fetch("location_id")
    @meeting.user_id = params.fetch("user_id")
    @meeting.meeting_type = params.fetch("meeting_type")

    if @meeting.valid?
      @meeting.save

      redirect_to("/meetings/#{@meeting.id}", :notice => "Meeting updated successfully.")
    else
      render("meeting_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_user
    @meeting = Meeting.find(params.fetch("id_to_remove"))

    @meeting.destroy

    redirect_to("/users/#{@meeting.user_id}", notice: "Meeting deleted successfully.")
  end

  def destroy_row_from_location
    @meeting = Meeting.find(params.fetch("id_to_remove"))

    @meeting.destroy

    redirect_to("/locations/#{@meeting.location_id}", notice: "Meeting deleted successfully.")
  end

  def destroy_row
    @meeting = Meeting.find(params.fetch("id_to_remove"))

    @meeting.destroy

    redirect_to("/meetings", :notice => "Meeting deleted successfully.")
  end
end
