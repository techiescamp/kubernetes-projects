# Prerequisites

## Amazon Web Services

This tutorial relies on Amazon Web Services (AWS) to simplify the provisioning of the computing infrastructure necessary to initialize a Kubernetes cluster from scratch. The estimated cost for the entire exercise, which can be completed within a 24-hour period, is less than $2.

> Please note that the compute resources required for this tutorial exceed the limits of the Amazon Web Services free tier. It is crucial to clean up the resources at the end of the activity to prevent incurring unexpected costs.

## Amazon Web Services CLI

### Install the AWS CLI

Follow the AWS CLI [documentation](https://devopscube.com/install-configure-aws-cli-linux/) to install and configure the `aws` command line utility.

Verify the AWS CLI version using:

```
aws --version
```

### Set a Default Compute Region and Credentials using AWS CLI

Run `aws configure` and provide the following information.
* AWS Access Key ID
* AWS Secret Access Key
* Default region name
* Default output format (optional)

```
aws configure
```
## Output

```
AWS Access Key ID [****************3IVF]: 
AWS Secret Access Key [****************wIbx]: 
Default region name [us-west-2]: 
Default output format [json]: 
```

## Running Commands in Parallel with tmux

> The use of tmux is optional and not required to complete this tutorial.

[tmux](https://github.com/tmux/tmux/wiki) can be used to run commands on multiple compute instances at the same time. Labs in this tutorial may require running the same commands across multiple compute instances, in those cases consider using tmux and splitting a window into multiple panes with synchronize-panes enabled to speed up the provisioning process.


Follow the tmux [documentation](https://github.com/tmux/tmux/wiki/Getting-Started) to install and configure the `tmux` utility.

#### Open tmux

First, start tmux by opening your terminal and typing `tmux`, then hit Enter.
Create Multiple Panes:

#### Split your tmux window into multiple panes. 

You can split vertically by pressing `Ctrl + b`, then `%`, and horizontally by pressing `Ctrl + b`, then `"`.

You can create as many panes as you need for parallel execution.

#### Navigate to Each Pane:

To switch to a different pane, press `Ctrl + b`, then use the arrow keys to navigate to the pane where you want to execute a command.

#### Running Commands Simultaneously:

If you want to run the same command in all panes at the same time, you can use the synchronize-panes feature.

To enable this, press `Ctrl + b`, then type `:setw synchronize-panes on` and hit Enter. Now, anything you type in one pane will be mirrored in all other panes.
To disable this feature, press `Ctrl + b`, type `:setw synchronize-panes off`, and hit Enter.


Labs in this tutorial may require running the same commands across multiple compute instances, in those cases consider using tmux and splitting a window into multiple panes with synchronize-panes enabled to speed up the provisioning process.

#### Next: [Installing the Client Tools](02-client-tools.md)
