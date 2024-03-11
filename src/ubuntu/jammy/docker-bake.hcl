target "ubuntu__jammy" {
    context = "ubuntu/jammy/"
    contexts = {
        ubuntu-vanilla = "docker-image://ghcr.io/ovsds-example-organization/ubuntu-vanilla:jammy-20231004"
    }
    dockerfile = "Dockerfile"
    platforms = DISABLE_PLATFORMS ? null : PLATFORMS
    labels = LABELS
    tags = tags("ubuntu", "jammy")
}
