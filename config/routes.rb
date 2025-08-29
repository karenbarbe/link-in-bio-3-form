Rails.application.routes.draw do
  get("/", { :controller => "items", :action => "index" })
  post("/backdoor", { :controller => "items", :action => "insert_item" })
  post("/insert_item", { :controller => "items", :action => "insert_item" } )
end
