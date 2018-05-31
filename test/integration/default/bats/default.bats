#!/usr/bin/env bats
 
@test "Validate service is running" {
  run systemctl status kafka
  [ "$status" -eq 0 ]
}

@test "Validate service is up" {
  run nc -zv localhost 9092
  [ "$status" -eq 0 ]
}