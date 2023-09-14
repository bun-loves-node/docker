
docker manifest create bunlovesnode/bun:1.0.0-node19.0 \
--amend bunlovesnode/bun:1.0.0-node19.0-amd64 \
--amend bunlovesnode/bun:1.0.0-node19.0-arm64

# docker manifest push bunlovesnode/bun:1.0.0-node19.0