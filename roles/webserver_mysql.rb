name "webserver_mysql"
description "Web server role with local mysql"
all_env = [ 
	"role[base]",
	"recipe[php]",
	"recipe[mysql]",
	"recipe[mysql::ruby]",
	"recipe[mysql::server]",
	"recipe[database]",
	"recipe[apache2]",
	"recipe[apache2::mod_php5]",
	"recipe[apache2::mod_rewrite]",
	"recipe[webserver-chef]",
]

run_list(all_env)

env_run_lists(
	"_default" => all_env, 
	"prod" => all_env,
	#"dev" => all_env + ["recipe[php:module_xdebug]"],
	"dev" => all_env,
) 
