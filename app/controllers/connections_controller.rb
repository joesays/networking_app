class ConnectionsController < ApplicationController
  def index
    @connections = Connection.all

    render("connection_templates/index.html.erb")
  end

  def show
    @attendee = Attendee.new
    @connection = Connection.find(params.fetch("id_to_display"))

    render("connection_templates/show.html.erb")
  end

  def new_form
    @connection = Connection.new

    render("connection_templates/new_form.html.erb")
  end

  def create_row
    @connection = Connection.new

    @connection.company_id = params.fetch("company_id")
    @connection.location_id = params.fetch("location_id")
    @connection.photo = params.fetch("photo")
    @connection.name = params.fetch("name")
    @connection.linkein = params.fetch("linkein")

    if @connection.valid?
      @connection.save

      redirect_back(:fallback_location => "/connections", :notice => "Connection created successfully.")
    else
      render("connection_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_company
    @connection = Connection.new

    @connection.company_id = params.fetch("company_id")
    @connection.location_id = params.fetch("location_id")
    @connection.photo = params.fetch("photo")
    @connection.name = params.fetch("name")
    @connection.linkein = params.fetch("linkein")

    if @connection.valid?
      @connection.save

      redirect_to("/companies/#{@connection.company_id}", notice: "Connection created successfully.")
    else
      render("connection_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_location
    @connection = Connection.new

    @connection.company_id = params.fetch("company_id")
    @connection.location_id = params.fetch("location_id")
    @connection.photo = params.fetch("photo")
    @connection.name = params.fetch("name")
    @connection.linkein = params.fetch("linkein")

    if @connection.valid?
      @connection.save

      redirect_to("/locations/#{@connection.location_id}", notice: "Connection created successfully.")
    else
      render("connection_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @connection = Connection.find(params.fetch("prefill_with_id"))

    render("connection_templates/edit_form.html.erb")
  end

  def update_row
    @connection = Connection.find(params.fetch("id_to_modify"))

    @connection.company_id = params.fetch("company_id")
    @connection.location_id = params.fetch("location_id")
    @connection.photo = params.fetch("photo")
    @connection.name = params.fetch("name")
    @connection.linkein = params.fetch("linkein")

    if @connection.valid?
      @connection.save

      redirect_to("/connections/#{@connection.id}", :notice => "Connection updated successfully.")
    else
      render("connection_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_company
    @connection = Connection.find(params.fetch("id_to_remove"))

    @connection.destroy

    redirect_to("/companies/#{@connection.company_id}", notice: "Connection deleted successfully.")
  end

  def destroy_row_from_location
    @connection = Connection.find(params.fetch("id_to_remove"))

    @connection.destroy

    redirect_to("/locations/#{@connection.location_id}", notice: "Connection deleted successfully.")
  end

  def destroy_row
    @connection = Connection.find(params.fetch("id_to_remove"))

    @connection.destroy

    redirect_to("/connections", :notice => "Connection deleted successfully.")
  end
end
