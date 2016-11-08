json.extract! bankaccount, :id, :client_id, :bank_id, :account_type, :balance, :created_at, :updated_at
json.url bankaccount_url(bankaccount, format: :json)