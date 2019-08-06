# Custom lambda layer for Bash
This is custom bash-lambda-layer for include cloud-nuke and awsweeper executable and publish this layer only at ap-southeast-1 region(singapore) (for now).

Purpose:
- make lambda layer for doing some IT operational / Sysadmin stuff

## Simple how to using this layer
### Building the layer
```
To build a layer, simply run `make build`. This will create a zip archive of the layer in the `export/` directory.
```

### Publishing the layer (for using this lambda layer after that)
```
To publish the layer to the public, simply run `make publish`. This will create a new version of the layer from the `export/layer.zip` file (create from the Build step) and give it a global read permission.
```

### access this AWS layer at your Lambda function
- For cloud-nuke
```you create file with 'sh' extension and copy at `examples/example-cloud-nuke.yml` at your lambda function which already using this custom layer```

- For awsweeper
```
 you create file with name `all.yml` and copy `examples/example-all.yml` to that file.
 create file with 'sh' extension and copy at `examples/example-awsweeper.yml` at your lambda function which already using this custom layer
```

# Note:
- `Cloud-nuke` using version [v0.1.7](https://github.com/gruntwork-io/cloud-nuke/releases/tag/v0.1.7)
- `aws-cli` version at least >= [1.16.205](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html)
- `awsweeper` using version [v0.3.2](https://github.com/cloudetc/awsweeper/releases/tag/v0.3.2)

more information for [cloud-nuke](https://github.com/gruntwork-io/cloud-nuke)

more information for [bash-lambda-layer](https://github.com/gkrizek/bash-lambda-layer)

more information for [awsweeper](https://github.com/cloudetc/awsweeper)
