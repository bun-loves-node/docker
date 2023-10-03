
export LAST_AMD=bunlovesnode/bun@sha256:5289c69c8c9315818638f60f08bfb08a44ecf1ee6896b5be17a2dbe6b6f347a1
export LAST_ARM=bunlovesnode/bun@sha256:99a93dc1874687e278853633593324aafd8d1cb756c6a2c9c6ffe0e67a3c9dd9


docker manifest rm bunlovesnode/bun:1.0-node20
docker manifest create bunlovesnode/bun:1.0-node20 \
--amend $LAST_AMD \
--amend $LAST_ARM

docker manifest rm bunlovesnode/bun:latest
docker manifest create bunlovesnode/bun:latest \
--amend $LAST_AMD \
--amend $LAST_ARM

# docker manifest push bunlovesnode/bun:1.0-node20
# docker manifest push bunlovesnode/bun:latest