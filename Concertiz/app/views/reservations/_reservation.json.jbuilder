json.extract! reservation, :id, :firstname, :lastname, :email, :nb_tickets, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)