#!/bin/sh
carthage bootstrap --platform iOS;
carthage build --platform iOS --no-skip-current;
