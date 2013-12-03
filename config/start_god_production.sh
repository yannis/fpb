#!/bin/sh
cd /Users/yannis/railsapps/fpb_production/current;
/Users/yannis/.rbenv/shims/god;
/Users/yannis/.rbenv/shims/god load config/unicorn_production.god && /Users/yannis/.rbenv/shims/god start fpb_production_unicorn;
