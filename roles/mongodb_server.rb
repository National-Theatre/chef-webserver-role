name "mongodb_server"
description "Installs a single mongodb instance"
all_env = [ 
	"role[base]",
	"recipe[mongodb::10gen_repo]",
	"recipe[mongodb::default]",
]

run_list(all_env)

env_run_lists(
	"_default" => all_env, 
	"prod" => all_env,
	#"dev" => all_env + ["recipe[php:module_xdebug]"],
	"dev" => all_env,
)

override_attributes(
) 