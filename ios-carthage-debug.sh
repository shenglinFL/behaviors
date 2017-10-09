#!/bin/sh
carthage bootstrap --platform iOS --configuration Debug && carthage build --platform iOS --no-skip-current --configuration Debug
