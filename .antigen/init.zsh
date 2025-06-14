#-- START ZCACHE GENERATED FILE
#-- GENERATED: Thu May 29 18:52:13 CEST 2025
#-- ANTIGEN v2.2.2
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/Users/john/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/history /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/github /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/colorize /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-extras /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/yarn /Users/john/.antigen/bundles/zsh-users/zsh-autosuggestions /Users/john/.antigen/bundles/zsh-users/zsh-completions /Users/john/.antigen/bundles/zsh-users/zsh-syntax-highlighting /Users/john/.antigen/bundles/spaceship-prompt/spaceship-prompt) path+=(/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/history /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/github /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/colorize /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-extras /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases /Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/yarn /Users/john/.antigen/bundles/zsh-users/zsh-autosuggestions /Users/john/.antigen/bundles/zsh-users/zsh-completions /Users/john/.antigen/bundles/zsh-users/zsh-syntax-highlighting /Users/john/.antigen/bundles/spaceship-prompt/spaceship-prompt)
_antigen_compinit () {
  autoload -Uz compinit; compinit -d "/Users/john/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh" ]]; then
  ZSH="/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh"; ZSH_CACHE_DIR="/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/cache/"
fi
#--- BUNDLES BEGIN
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/async_prompt.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/vcs_info.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip/pip.plugin.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/history/history.plugin.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/github/github.plugin.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm/npm.plugin.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew/brew.plugin.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/colorize/colorize.plugin.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-extras/git-extras.plugin.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases/common-aliases.plugin.zsh';
source '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/yarn/yarn.plugin.zsh';
source '/Users/john/.antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh';
source '/Users/john/.antigen/bundles/zsh-users/zsh-completions/zsh-completions.plugin.zsh';
source '/Users/john/.antigen/bundles/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh';
source '/Users/john/.antigen/bundles/spaceship-prompt/spaceship-prompt/spaceship.zsh';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/lein plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/pip plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/history plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/github plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/npm plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/brew plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/colorize plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git-extras plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/command-not-found plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/common-aliases plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/yarn plugin true' 'https://github.com/zsh-users/zsh-autosuggestions.git / plugin true' 'https://github.com/zsh-users/zsh-completions.git / plugin true' 'https://github.com/zsh-users/zsh-syntax-highlighting.git / plugin true' 'https://github.com/spaceship-prompt/spaceship-prompt.git / theme true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/async_prompt.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/lib/vcs_info.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip/pip.plugin.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/history' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/history/history.plugin.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/github' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/github/github.plugin.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm/npm.plugin.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew/brew.plugin.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/colorize' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/colorize/colorize.plugin.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-extras' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-extras/git-extras.plugin.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases/common-aliases.plugin.zsh' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/yarn' '/Users/john/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/yarn/yarn.plugin.zsh' '/Users/john/.antigen/bundles/zsh-users/zsh-autosuggestions//' '/Users/john/.antigen/bundles/zsh-users/zsh-autosuggestions///zsh-autosuggestions.plugin.zsh' '/Users/john/.antigen/bundles/zsh-users/zsh-completions//' '/Users/john/.antigen/bundles/zsh-users/zsh-completions///zsh-completions.plugin.zsh' '/Users/john/.antigen/bundles/zsh-users/zsh-syntax-highlighting//' '/Users/john/.antigen/bundles/zsh-users/zsh-syntax-highlighting///zsh-syntax-highlighting.plugin.zsh' '/Users/john/.antigen/bundles/spaceship-prompt/spaceship-prompt//' '/Users/john/.antigen/bundles/spaceship-prompt/spaceship-prompt///spaceship.zsh-theme')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.2'

#-- END ZCACHE GENERATED FILE
