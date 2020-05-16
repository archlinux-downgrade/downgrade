$ source "$TESTDIR/../helper.sh"

Checking that unrecognized options are caught and parsing exits non-zero

$ parse_options --nonsense foo 2>/dev/null; exit_code=$?
> printf "exit code: %s\n" "$exit_code"
exit code: 1

$ parse_options -nonsense bar 2>/dev/null; exit_code=$?
> printf "exit code: %s\n" "$exit_code"
exit code: 1
