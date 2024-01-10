variable "REGISTRY" {  default = "ghcr.io/ovsds-example-organizaton/" }
variable "TAG_POSTFIX" {}

function "tags" {
  params = [name, tag_prefix]
  result = ["${REGISTRY}${name}:${tag_prefix}-${TAG_POSTFIX}"]
}

variable "LABELS" {
  default = {
    "org.opencontainers.image.source"   = "https://github.com/ovsds-example-organizaton/docker-contrib"
    "org.opencontainers.image.licenses" = "MIT"
  }
}

variable "PLATFORMS" {
  default = [
    "linux/amd64",
    "linux/arm64",
  ]
}

variable "DISABLE_PLATFORMS" {
  default = false
}

group "default" {
  targets = [
    "ubuntu__jammy",
    "ubuntu-ci__jammy",
    "python__3_10-jammy",
    "python-dev__3_10-jammy",
  ]
}
