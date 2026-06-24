#!/bin/sh
set -e

# Configure CORS for RPC API to allow WebUI access
ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["*"]'
ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '["PUT", "GET", "POST", "OPTIONS"]'
ipfs config --json API.HTTPHeaders.Access-Control-Allow-Headers '["Authorization"]'

echo "IPFS CORS configuration complete"