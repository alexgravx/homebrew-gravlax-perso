#!/bin/bash

# Check that jq is already installed
if ! command -v jq &> /dev/null; then
    echo "Error : 'jq' is required but not installed. Install with 'sudo apt install jq'."
    exit 1
fi

echo "Github projects for alexgravx:"
page=1
while : ; do
  response=$(curl -s "https://api.github.com/users/alexgravx/repos?page=$page&per_page=100")

  # Check if there are results
  count=$(echo "$response" | jq '. | length')
  if [ "$count" -eq 0 ]; then
      break
  fi

  # Parsing
  echo
  echo "$response" | jq -r '.[] | "\(.name) | \(.language // "Language inconnu")"'

  ((page++))
done

echo
echo "--> Total repositories: $page"
