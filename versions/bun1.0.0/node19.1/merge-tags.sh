
docker manifest create bunlovesnode/bun:1.0.0-node19.1 \
--amend bunlovesnode/bun:1.0.0-node19.1-amd64 \
--amend bunlovesnode/bun:1.0.0-node19.1-arm64

# docker manifest push bunlovesnode/bun:1.0.0-node19.1