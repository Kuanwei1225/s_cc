#!/bin/bash
try() {
  expected="$1"
  input="$2"

  ./s_cc "$input" > tmp.s
  gcc -o tmp tmp.s
  ./tmp
  actual="$?"

  if [ "$actual" = "$expected" ]; then
    echo "$input => $actual"
  else
    echo "$input => $expected expected, but got $actual"
    exit 1
  fi
}

try 0 0
try 4 "2+5-4+3-2"

echo OK
