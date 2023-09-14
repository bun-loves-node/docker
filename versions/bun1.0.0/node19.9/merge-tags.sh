
docker manifest create bunlovesnode/bun:1.0.0-node19.9 \
--amend bunlovesnode/bun:1.0.0-node19.9-amd64 \
--amend bunlovesnode/bun:1.0.0-node19.9-arm64

# docker manifest push bunlovesnode/bun:1.0.0-node19.9