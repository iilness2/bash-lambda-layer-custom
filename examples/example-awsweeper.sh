
handler () {
    set -e

    # Delete all resources with awsweeper (simple command)
    awsweeper all.yml --force
}
