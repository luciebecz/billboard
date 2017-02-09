Rails.application.routes.draw do

  root 'billboards#index'
  resources :billboards

# Custom Routes to Add Songs to a billboard
get 'new_billboard_song/:id', to: 'billboards#new_song', as: 'new_billboard_song'
post 'add_billboard_song/:id/:song_id', to: 'billboards#add_song', as: 'add_billboard_song'
delete 'remove_billboard_song/:id/:song_id', to: 'billboards#remove_song', as: 'remove_billboard_song'

  resources :artists do 
    resources :songs 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


#           Prefix Verb   URI Pattern                                  Controller#Action
#             root GET    /                                            billboards#index
#       billboards GET    /billboards(.:format)                        billboards#index
#                  POST   /billboards(.:format)                        billboards#create
#    new_billboard GET    /billboards/new(.:format)                    billboards#new
#   edit_billboard GET    /billboards/:id/edit(.:format)               billboards#edit
#        billboard GET    /billboards/:id(.:format)                    billboards#show
#                  PATCH  /billboards/:id(.:format)                    billboards#update
#                  PUT    /billboards/:id(.:format)                    billboards#update
#                  DELETE /billboards/:id(.:format)                    billboards#destroy
#     artist_songs GET    /artists/:artist_id/songs(.:format)          songs#index
#                  POST   /artists/:artist_id/songs(.:format)          songs#create
#  new_artist_song GET    /artists/:artist_id/songs/new(.:format)      songs#new
# edit_artist_song GET    /artists/:artist_id/songs/:id/edit(.:format) songs#edit
#      artist_song GET    /artists/:artist_id/songs/:id(.:format)      songs#show
#                  PATCH  /artists/:artist_id/songs/:id(.:format)      songs#update
#                  PUT    /artists/:artist_id/songs/:id(.:format)      songs#update
#                  DELETE /artists/:artist_id/songs/:id(.:format)      songs#destroy
#          artists GET    /artists(.:format)                           artists#index
#                  POST   /artists(.:format)                           artists#create
#       new_artist GET    /artists/new(.:format)                       artists#new
#      edit_artist GET    /artists/:id/edit(.:format)                  artists#edit
#           artist GET    /artists/:id(.:format)                       artists#show
#                  PATCH  /artists/:id(.:format)                       artists#update
#                  PUT    /artists/:id(.:format)                       artists#update
#                  DELETE /artists/:id(.:format)                       artists#destroy