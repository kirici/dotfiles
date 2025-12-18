#!/usr/bin/env fish

function jjpush
  if test -f (jj root).pre-commit-config.yaml
    pre-commit run -a
    jj tug
    jj git push --tracked
    return
  end
  jj tug
  jj git push --tracked
end
