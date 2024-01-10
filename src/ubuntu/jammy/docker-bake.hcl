target "ubuntu__jammy" {
    context = "ubuntu/jammy/"
    contexts = {
        ubuntu-vanilla = "docker-image://ubuntu:jammy-20231211.1"
    }
    dockerfile = "Dockerfile"
    platforms = DISABLE_PLATFORMS ? null : PLATFORMS
    labels = LABELS
    tags = tags("ubuntu", "jammy")
}
