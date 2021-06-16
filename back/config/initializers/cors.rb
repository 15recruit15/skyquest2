Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins ['https://skyquest-japan-pilot.xyz', 'http://localhost:8080', 'http://localhost:3000']

    resource '*',
      headers: :any,
      :expose  => ['access-token', 'expiry', 'token-type', 'uid', 'client'],
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end