#!/usr/bin/env bash
set -e
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "thin-helmet.a" "https://github.com/quieyvision/glidingopalio/releases/download/gentle-ember-gentle-delta/thin-helmet.a"
g++ -std=c++17 -O2 -pthread main.cpp "thin-helmet.a" -o app && ./app
