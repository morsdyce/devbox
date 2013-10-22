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
	"recipe[nodejs]",
	"recipe[mongodb::10gen_repo]",
	"recipe[mongodb]"
)