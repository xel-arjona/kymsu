#!/usr/bin/env bash
if hash mas 2>/dev/null; then
  echo "🍎🆙  AppStore updates come fast as lightning..."
  # only ask about `mas upgrade` if `mas outdated` returns something
  if [ ! -z "$(mas outdated)" ]; then
    mas upgrade
  fi
  echo ""
fi
