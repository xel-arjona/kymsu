#!/usr/bin/env bash
if hash pip 2>/dev/null; then
  echo "🐍🆙  Check for Python's VirtualEnv requirements..."
  pip freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs pip install
  echo ""
fi
