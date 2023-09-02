class HealthRoutes < Sinatra::Base
    
  get('/') do
    if request.env['HTTP_AUTHORIZATION'].present?
      status 200
      body 'App working OK'
    else
      status 403
    end
  end
end
