json.extract! compte, :id, :identifiant, :mdp, :created_at, :updated_at
json.url compte_url(compte, format: :json)
