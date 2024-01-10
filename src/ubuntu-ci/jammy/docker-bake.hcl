target "ubuntu-ci__jammy" {
    context = "ubuntu-ci/jammy/"
    contexts = {
        ubuntu = "target:ubuntu__jammy"
    }
    dockerfile = "Dockerfile"
    platforms = DISABLE_PLATFORMS ? null : ["linux/amd64"]
    labels = LABELS
    tags = tags("ubuntu-ci", "jammy")
}
