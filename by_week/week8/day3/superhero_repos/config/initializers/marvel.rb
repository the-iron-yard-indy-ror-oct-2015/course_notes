MARVEL_CLIENT = Marvelite::API::Client.new(
                  :public_key => ENV['marvel_public_key'],
                  :private_key => ENV['marvel_private_key']
                )
