
docker manifest create bunlovesnode/bun:1.0.2-node20 \
--amend bunlovesnode/bun:1.0.2-node20-amd64 \
--amend bunlovesnode/bun:1.0.2-node20-arm64

# docker manifest push bunlovesnode/bun:1.0.2-node20