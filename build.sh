#!/bin/bash

echo "Removing previous builds..."
rm -rf ./dist/* > /dev/null 2>&1
sleep 0.25
echo "Complete!"
echo "Building from source and generating wheels..."
python -m build
echo "Complete!"
echo "Uploading binaries to PyPi index..."
twine upload ./dist/*
echo "Complete!"
