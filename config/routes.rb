BlogitTest::Application.routes.draw do
  get "statics/index"

  mount Blogit::Engine => "/blog"
  
  root to: "statics#index"
end
