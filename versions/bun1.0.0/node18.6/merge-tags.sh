
docker manifest create bunlovesnode/bun:1.0.0-node18.6 \
--amend bunlovesnode/bun:1.0.0-node18.6-amd64 \
--amend bunlovesnode/bun:1.0.0-node18.6-arm64

# docker manifest push bunlovesnode/bun:1.0.0-node18.6