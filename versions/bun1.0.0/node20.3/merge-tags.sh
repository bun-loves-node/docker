
docker manifest create bunlovesnode/bun:1.0.0-node20.3 \
--amend bunlovesnode/bun:1.0.0-node20.3-amd64 \
--amend bunlovesnode/bun:1.0.0-node20.3-arm64

# docker manifest push bunlovesnode/bun:1.0.0-node20.3