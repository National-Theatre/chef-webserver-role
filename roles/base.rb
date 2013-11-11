name "base"
description "Base role applied to all nodes."
run_list(
  "recipe[sudo]",
  "recipe[cron]",
  "recipe[newrelic]",
  "recipe[base-chef]"
) 
override_attributes(
  :authorization => {
    :sudo => {
      :users => ["ubuntu", "vagrant", "ec2-user"],
      :passwordless => true
    }
  }
)