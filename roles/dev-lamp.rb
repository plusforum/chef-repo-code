name "dev"
description "An Chef role for development environment"
run_list "recipe[lamp]"
override_attributes({
  "starter_name" => "ganesh palnitkar",
})


