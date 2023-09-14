
docker manifest create bunlovesnode/bun:1.0.0-node18.10 \
--amend bunlovesnode/bun:1.0.0-node18.10-amd64 \
--amend bunlovesnode/bun:1.0.0-node18.10-arm64

# docker manifest push bunlovesnode/bun:1.0.0-node18.10