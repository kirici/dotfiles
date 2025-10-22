function kubectl_status
  [ -z "$KUBECTL_PROMPT_ICON" ]; and set -l KUBECTL_PROMPT_ICON "☸ "
  [ -z "$KUBECTL_PROMPT_SEPARATOR" ]; and set -l KUBECTL_PROMPT_SEPARATOR "."
  
  set -l config $KUBECONFIG
  [ -z "$config" ]; and set -l config "$HOME/.kube/config"
  if [ ! -f $config ]
    echo (set_color red)$KUBECTL_PROMPT_ICON" "(set_color white)"//"
    return
  end

  set -l ctx (kubectl config current-context 2>/dev/null)
  if [ $status -ne 0 ]
    echo (set_color red)$KUBECTL_PROMPT_ICON" "(set_color white)"//"
    return
  end

  set -l ns (kubectl config view -o "jsonpath={.contexts[?(@.name==\"$ctx\")].context.namespace}")
  [ -z $ns ]; and set -l ns 'default'

  echo (set_color blue)⎈" "(set_color brblue)$ns(set_color white)$KUBECTL_PROMPT_SEPARATOR(set_color blue)$ctx(set_color normal)
end

function openstack_status
  set -l os_cloud $OS_CLOUD
  set -l os_region (yq ".clouds.$os_cloud.region_name" ~/.config/openstack/clouds.yaml 2>/dev/null)
  [ -z $os_region ]; and set -l os_region '-'
  echo (set_color red)⛶" "(set_color brred)$OS_CLOUD(set_color white).(set_color red)$os_region(set_color normal)
end

function fish_right_prompt
  # Move right prompt back up a line after newline of left prompt
  tput sc; tput cuu1; tput cuf 2

  echo (kubectl_status)" "(openstack_status)

  tput rc
end
