#!/bin/sh
carthage update --platform iOS --no-build;
carthage bootstrap --platform iOS;
carthage build --platform iOS --no-skip-current;
