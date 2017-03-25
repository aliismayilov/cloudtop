class Track
  def self.fetch(username)
    result = []
    client = SoundCloud.new(client_id: ENV['CLIENT_ID'])

    user_id = client.get('/users/' + username)['id']

    batch = client.get("/users/#{user_id}/tracks", linked_partitioning: 1)
    result += batch.collection

    while batch.next_href
      batch = client.get(batch.next_href)
      result += batch.collection
    end

    result
  end
end
