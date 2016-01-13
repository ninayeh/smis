set :stage, :production
server '128.199.97.108', user: 'deploy', roles: %w{web app db}
