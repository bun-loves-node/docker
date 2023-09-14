
docker manifest create bunlovesnode/bun:1.0.0-node18 \
--amend bunlovesnode/bun:1.0.0-node18-amd64 \
--amend bunlovesnode/bun:1.0.0-node18-arm64

# docker manifest push bunlovesnode/bun:1.0.0-node18