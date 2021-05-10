  $ source "$TESTDIR/../helper.sh"

Outputs its arguments as a numbered list

  $ present_packages foo foo foo foo
  Available packages (foreign/aur):
  
    | 1) | foo |  |  |  | (remote)
    | 2) | foo |  |  |  | (remote)
    | 3) | foo |  |  |  | (remote)
  
  select a package by number:  (no-eol)
