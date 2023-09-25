# VM Setup Finance Project
This is the virtual machine setup used to develop my finance system project. It consists of a AlmaLinux 8 vagrant box with some base tools installed.

More tools might be installed during development and are not necessarilly part of the setup.

It is also recommended to follow [this](https://askubuntu.com/a/119458) forum answer about resizing the root file system and [this](https://stackoverflow.com/a/56897576) StackOverflow answer instead of the last  `resize2fs` command before attempting to do any work.

This setup helps keeping enough buffer for storing data, including docker images, build data and more. For more repositories and build data, it is still recommended to add another good amount of disk as external disk to the system.