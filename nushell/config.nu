$env.config.buffer_editor = "neovim"
$env.config.show_banner = false
$env.config.shell_integration.osc133 = false

$env.config.history.file_format = 'sqlite'
$env.config.history.isolation = true
$env.config.history.max_size = 5_000_000

alias ll = ls -l
alias gitc = git commit -m 

mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
