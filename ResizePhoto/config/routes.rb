Rails.application.routes.draw do
   resources :photos do
    get :image,
    match '/images/photo/image/:id/:filename' => 'gridfs#thumb_image', constraints: { filename: /thumb.*/ }
    match '/images/photo/image/:id/:filename' => 'gridfs#medium_image', constraints: { filename: /medium.*/ }
    match '/images/photo/image/:id/:filename' => 'gridfs#large_image', constraints: { filename: /large.*/ }

   end

   root to: 'pages#home'
end
