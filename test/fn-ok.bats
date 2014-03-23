#!/usr/bin/env bats

. test/helpers.sh

@test "checks against core types" {
  operation='echo'
  run ok directories foo
  [ "$status" -eq 0 ]
  [ "$BORK_SOURCE_DIR/core/directories.sh foo" = $output ]
}

@test "checks against stdlib_types" {
  use brew
  operation='echo'
  run ok brew foo
  [ "$status" -eq 0 ]
  [ "$BORK_SOURCE_DIR/stdlib/brew.sh foo" = $output ]
}