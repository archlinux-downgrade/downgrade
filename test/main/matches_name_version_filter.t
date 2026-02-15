  $ source "$TESTDIR/../helper.sh"

It matches standard version
  $ matches_name_version_filter "pkg-1.0.0-1-any.pkg.tar.gz" "pkg" "=" "1.0.0" && echo "match" || echo "no match"
  match

It matches version with underscore
  $ matches_name_version_filter "pkg-1.2_3-1-any.pkg.tar.gz" "pkg" "=" "1.2_3" && echo "match" || echo "no match"
  match

It does not match different version with underscore
  $ matches_name_version_filter "pkg-1.2_3-1-any.pkg.tar.gz" "pkg" "=" "1.2_4" && echo "match" || echo "no match"
  no match

It handles operators with underscore versions (>=)
  $ matches_name_version_filter "pkg-1.2_5-1-any.pkg.tar.gz" "pkg" ">=" "1.2_3" && echo "match" || echo "no match"
  match

It handles operators with underscore versions (<)
  $ matches_name_version_filter "pkg-1.2_3-1-any.pkg.tar.gz" "pkg" "<" "1.2_5" && echo "match" || echo "no match"
  match
