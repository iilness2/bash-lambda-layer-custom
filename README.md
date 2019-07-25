# Custom lambda layer for Bash
This is custom bash-lambda-layer for include cloud-nuke executable and publish this layer only at ap-southeast-1 region(singapore).

Note:
- Cloud-nuke using version v0.1.7
- aws-cli (version should be more than >1.16.205)

more information for [cloud-nuke](https://github.com/gruntwork-io/cloud-nuke)

more information for [bash-lambda-layer](https://github.com/gkrizek/bash-lambda-layer)

## Simple how to using this layer
### Building the layer

To build a layer, simply run `make build`. This will create a zip archive of the layer in the `export/` directory.

### Publishing the layer (for using this lambda layer after that)

To publish the layer to the public, simply run `make publish`. This will create a new version of the layer from the `export/layer.zip` file (create from the Build step) and give it a global read permission.

