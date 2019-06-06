Rails.application.routes.draw do
  # Routes for the Attendee resource:

  # CREATE
  get("/attendees/new", { :controller => "attendees", :action => "new_form" })
  post("/create_attendee", { :controller => "attendees", :action => "create_row" })

  # READ
  get("/attendees", { :controller => "attendees", :action => "index" })
  get("/attendees/:id_to_display", { :controller => "attendees", :action => "show" })

  # UPDATE
  get("/attendees/:prefill_with_id/edit", { :controller => "attendees", :action => "edit_form" })
  post("/update_attendee/:id_to_modify", { :controller => "attendees", :action => "update_row" })

  # DELETE
  get("/delete_attendee/:id_to_remove", { :controller => "attendees", :action => "destroy_row" })

  #------------------------------

  # Routes for the Location resource:

  # CREATE
  get("/locations/new", { :controller => "locations", :action => "new_form" })
  post("/create_location", { :controller => "locations", :action => "create_row" })

  # READ
  get("/locations", { :controller => "locations", :action => "index" })
  get("/locations/:id_to_display", { :controller => "locations", :action => "show" })

  # UPDATE
  get("/locations/:prefill_with_id/edit", { :controller => "locations", :action => "edit_form" })
  post("/update_location/:id_to_modify", { :controller => "locations", :action => "update_row" })

  # DELETE
  get("/delete_location/:id_to_remove", { :controller => "locations", :action => "destroy_row" })

  #------------------------------

  # Routes for the Company resource:

  # CREATE
  get("/companies/new", { :controller => "companies", :action => "new_form" })
  post("/create_company", { :controller => "companies", :action => "create_row" })

  # READ
  get("/companies", { :controller => "companies", :action => "index" })
  get("/companies/:id_to_display", { :controller => "companies", :action => "show" })

  # UPDATE
  get("/companies/:prefill_with_id/edit", { :controller => "companies", :action => "edit_form" })
  post("/update_company/:id_to_modify", { :controller => "companies", :action => "update_row" })

  # DELETE
  get("/delete_company/:id_to_remove", { :controller => "companies", :action => "destroy_row" })

  #------------------------------

  # Routes for the Connection resource:

  # CREATE
  get("/connections/new", { :controller => "connections", :action => "new_form" })
  post("/create_connection", { :controller => "connections", :action => "create_row" })

  # READ
  get("/connections", { :controller => "connections", :action => "index" })
  get("/connections/:id_to_display", { :controller => "connections", :action => "show" })

  # UPDATE
  get("/connections/:prefill_with_id/edit", { :controller => "connections", :action => "edit_form" })
  post("/update_connection/:id_to_modify", { :controller => "connections", :action => "update_row" })

  # DELETE
  get("/delete_connection/:id_to_remove", { :controller => "connections", :action => "destroy_row" })

  #------------------------------

  # Routes for the Meeting resource:

  # CREATE
  get("/meetings/new", { :controller => "meetings", :action => "new_form" })
  post("/create_meeting", { :controller => "meetings", :action => "create_row" })

  # READ
  get("/meetings", { :controller => "meetings", :action => "index" })
  get("/meetings/:id_to_display", { :controller => "meetings", :action => "show" })

  # UPDATE
  get("/meetings/:prefill_with_id/edit", { :controller => "meetings", :action => "edit_form" })
  post("/update_meeting/:id_to_modify", { :controller => "meetings", :action => "update_row" })

  # DELETE
  get("/delete_meeting/:id_to_remove", { :controller => "meetings", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
