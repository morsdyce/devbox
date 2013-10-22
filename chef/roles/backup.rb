# Name of the role should match the name of the file
name "vagrant-test-box"


override_attributes(
    "mysql" => {
        "server_root_password" => 'devbox',
        "server_repl_password" => 'devbox',
        "server_debian_password" => 'devbox'
    },
	"php" => {
		'display_errors' => 'On',
		'date.timezone' => 'Asia/Jerusalem',
	}
)

# Run list function we mentioned earlier
run_list(
    "recipe[apt]",
	"recipe[openssl]",
    "recipe[apache2]",
	"recipe[apache2::mod_php5]",
	"recipe[apache2::mod_rewrite]",
	"recipe[apache2::mod_ssl]",
    "recipe[mysql]",
	"recipe[mysql::server]",
    "recipe[php]",
	"recipe[php::module_mysql]",
	"recipe[php::fpm]",
	"recipe[php::module_gd]",
	"recipe[php::module_xml]",
	"recipe[apache2::vhosts]",
	"recipe[phpmyadmin]",
	"recipe[nodejs]",
	"recipe[mongodb::10gen_repo]",
	"recipe[mongodb]"
)