package main

import (
	"testing"
)

func Test_greet(t *testing.T) {
	want := "Hello world!"
	if got := greet(); got != want {
		t.Errorf("greet() = %v, want %v", got, want)
	}
}
