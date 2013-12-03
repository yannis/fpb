set :branch,                  "staging"
set :rails_env,               "staging"
set :deploy_to,               "/Users/yannis/railsapps/fpb_staging"
set :god_unicorn_config,      "/Users/yannis/railsapps/fpb_staging/current/config/unicorn_staging.god"

namespace :deploy do
  task :stop, :roles => :app, :except => { :no_release => true } do
    run "god stop fpb_staging_unicorn"
  end
  task :reload_god_config, :roles => :app, :except => { :no_release => true } do
    puts current_path
    run "god load #{god_unicorn_config}"
  end
  task :start, :roles => :app, :except => { :no_release => true } do
    run "god start fpb_staging_unicorn"
  end
  task :stop_reload_start, :roles => :app, :except => { :no_release => true } do
    stop
    reload_god_config
    start
  end
end
