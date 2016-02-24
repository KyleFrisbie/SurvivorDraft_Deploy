json.array!(@tribes) do |tribe|
  json.extract! tribe, :id, :name, :tribe_generation, :immunity_wins, :reward_wins
  json.url tribe_url(tribe, format: :json)
end
