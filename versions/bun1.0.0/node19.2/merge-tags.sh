
docker manifest create bunlovesnode/bun:1.0.0-node19.2 \
--amend bunlovesnode/bun:1.0.0-node19.2-amd64 \
--amend bunlovesnode/bun:1.0.0-node19.2-arm64

# docker manifest push bunlovesnode/bun:1.0.0-node19.2