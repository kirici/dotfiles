#!/usr/bin/env fish

function osctx
	set -l clouds_entry (yq '.clouds | keys | .[]' ~/.config/openstack/clouds.yaml | fzf --height=~100% --style full \
		--border --padding 1,2 \
		--border-label ' ~/.config/openstack/clouds.yaml entries ' --input-label ' Search ')
	set -gx OS_CLOUD $clouds_entry
	echo "Switched to: $OS_CLOUD"
end
