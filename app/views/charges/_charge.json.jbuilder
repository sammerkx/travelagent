json.extract! charge, :id, :name, :amount_payable, :no_of_persons, :created_at, :updated_at
json.url charge_url(charge, format: :json)
