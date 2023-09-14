
docker manifest create bunlovesnode/bun:1.0.0-node18.11 \
--amend bunlovesnode/bun:1.0.0-node18.11-amd64 \
--amend bunlovesnode/bun:1.0.0-node18.11-arm64

# docker manifest push bunlovesnode/bun:1.0.0-node18.11