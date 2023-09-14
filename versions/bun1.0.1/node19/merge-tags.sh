
docker manifest create bunlovesnode/bun:1.0.1-node19 \
--amend bunlovesnode/bun:1.0.1-node19-amd64 \
--amend bunlovesnode/bun:1.0.1-node19-arm64

# docker manifest push bunlovesnode/bun:1.0.1-node19