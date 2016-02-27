set :stage, :production
server 'nina-mis.5xruby.tw', user: 'deploy', roles: %w{web app db}
