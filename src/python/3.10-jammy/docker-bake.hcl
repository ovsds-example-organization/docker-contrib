target "python__3_10-jammy" {
    context = "python/3.10-jammy/"
    contexts = {
        ubuntu = "target:ubuntu__jammy"
    }
    dockerfile = "Dockerfile"
    platforms = DISABLE_PLATFORMS ? null : PLATFORMS
    labels = LABELS
    tags = tags("python", "3.10-jammy")
}
