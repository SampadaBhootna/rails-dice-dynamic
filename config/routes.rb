Rails.application.routes.draw do

  #Homepage
  get("/", { :controller => "zebra", :action => "homepage"})

  #Other pages
  get("/dice/:param_one/:param_two", { :controller => "zebra", :action => "other_pages" })

end
