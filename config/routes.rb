Rails.application.routes.draw do
  resources "companies"
  resources "contacts"
  resources "activities"
  resources "sessions"
  resources "users"
  
  get("/login", { :controller => "sessions", :action => "new" })
  get("/logout", { :controller => "sessions", :action => "destroy" })
  
  # Landing page (aka root route)
  get("/", { :controller => "sessions", :action => "new" })
end
