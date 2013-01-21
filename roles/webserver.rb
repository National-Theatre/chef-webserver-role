name "webserver"
description "Web server role"
all_env = [ 
	"role[base]",
	"recipe[php]",
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