
docker manifest create bunlovesnode/bun:1.0.0-node19.7 \
--amend bunlovesnode/bun:1.0.0-node19.7-amd64 \
--amend bunlovesnode/bun:1.0.0-node19.7-arm64

# docker manifest push bunlovesnode/bun:1.0.0-node19.7