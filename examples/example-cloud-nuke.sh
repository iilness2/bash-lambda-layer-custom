handler () {
    set -e

    # Using simple Cloud-nuke for delete ressources
    cloud-nuke aws --older-than 24h --force
}
