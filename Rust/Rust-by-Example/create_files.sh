#!/bin/bash

# Create all directories and files from Cargo.toml paths
grep 'path = "' Cargo.toml | sed 's/path = "//g' | sed 's/"//g' | while read -r path; do
  # Create directory
  dir=$(dirname "$path")
  mkdir -p "$dir"
  
  # Create file with minimum content
  echo "fn main() {
    println!(\"Hello from ${path}\");
}" > "$path"
  
  echo "Created $path"
done

echo "All files created successfully!"