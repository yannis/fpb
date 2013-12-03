#!/bin/sh
cd /Users/yannis/railsapps/fpb_staging/current;
/Users/yannis/.rbenv/shims/god;
/Users/yannis/.rbenv/shims/god load config/unicorn_staging.god && /Users/yannis/.rbenv/shims/god start fpb_staging_unicorn;
