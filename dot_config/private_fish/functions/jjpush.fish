#!/usr/bin/env fish

function jjpush
  if test -f (jj root).pre-commit-config.yml
    pre-commit run -a
    jj tug
    jj git push --tracked
  end
end
