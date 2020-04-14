Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # if Rails.env.production?
    #   origins 'https://menz-cosme-review.firebaseapp.com/'
    #   # origins 'http://localhost:3000'
    # else
    origins 'localhost'
    #   origins 'https://menz-cosme-review.firebaseapp.com/'
    # end
    # origins '*'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      expose:  ['access-token', 'client', 'uid'],
      credentials: true
  end
end
