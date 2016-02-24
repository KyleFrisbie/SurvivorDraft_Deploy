json.array!(@drafters) do |drafter|
  json.extract! drafter, :id, :user_id, :wins, :losses
  json.url drafter_url(drafter, format: :json)
end
