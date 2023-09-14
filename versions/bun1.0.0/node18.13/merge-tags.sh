
docker manifest create bunlovesnode/bun:1.0.0-node18.13 \
--amend bunlovesnode/bun:1.0.0-node18.13-amd64 \
--amend bunlovesnode/bun:1.0.0-node18.13-arm64

# docker manifest push bunlovesnode/bun:1.0.0-node18.13