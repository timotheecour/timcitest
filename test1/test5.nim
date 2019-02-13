import os

proc main() =
  const libffi = when defined(windows):
    # pending https://github.com/Araq/libffi/pull/2
    "https://github.com/timotheecour/libffi@#43b223875b4839b37dffba6528a2eb10d9e43fbf"
  else:
    "libffi"
  let cmd = "nimble install -y " & libffi
  echo cmd
  #execFold("nimble install libffi", "nimble install -y " & libffi)
  let ret = execShellCmd(cmd)
  echo ret

main()
