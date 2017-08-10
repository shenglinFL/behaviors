#!/bin/sh
carthage bootstrap --platform iOS;
carthage update --platform ios --cache-builds;
carthage build --platform ios --no-skip-current --cache-builds;
carthage archive;
