Rails.application.routes.draw do
  get '/fortune' => 'pages#fortune'
  get '/lotto' => 'pages#lotto_prediction'
  get '/99bottles' => 'pages#ninty_nine_bottles_lyrics'
end
