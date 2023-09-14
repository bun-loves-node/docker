
docker manifest create bunlovesnode/bun:1.0.0-node20.1 \
--amend bunlovesnode/bun:1.0.0-node20.1-amd64 \
--amend bunlovesnode/bun:1.0.0-node20.1-arm64

# docker manifest push bunlovesnode/bun:1.0.0-node20.1