# Name of the role should match the name of the file
name "vagrant-test-box"

default_attributes(
    "build-essential" => {
        "compile_time" => true
    }
)

run_list(
    "recipe[apt]",
    "recipe[build-essential]",
    "recipe[openssl]",
    "recipe[apache2]",
    "recipe[apache2::mod_php5]",
    "recipe[php]",
    "recipe[php::module_mysql]",
    "recipe[lamp]"
)

