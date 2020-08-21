# Linux

## Resources

 - https://github.com/genuinetools/contained.af
 - https://github.com/0xAX/linux-insides
 - https://medium.com/information-and-technology/so-what-is-apparmor-64d7ae211ed
 - lwn.net
 
 ## Books
  - [Linux Device Drivers ](https://lwn.net/Kernel/LDD3/)
    - [Example Code for LDD](https://github.com/martinezjavier/ldd3)
 
 ## Devices and files
 
 - [dev filesystem](https://unix.stackexchange.com/questions/18239/understanding-dev-and-its-subdirs-and-files/18534#18534)
 - [Black and Character files](https://unix.stackexchange.com/questions/60034/what-are-character-special-and-block-special-files-in-a-unix-system)
 
## Development 

### Compiling and installing the kernel

- [Kernel requirements](https://github.com/torvalds/linux/blob/master/Documentation/process/changes.rst) 
- [kbuild system](https://github.com/torvalds/linux/tree/master/Documentation/kbuild)

```bash
# Download a target kernel tree
$ curl https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.8.2.tar.xz -o linux-5.8.2.tar.xz
$ tar -xf linux-5.8.2.tar.xz
$ sudo apt-get update && sudo apt-get install -y build-essential libncurses-dev bison flex libssl-dev libelf-dev
$ cd linux-5.8.2
# Configure your kernel
$ make menuconfig
# Compile kernel, define -j for parallel executed jobs
$ make -j$(nproc)
# Install kernel modules
$ sudo make modules_install
$ sudo make install
$ sudo reboot
# After rebooting check the current kernel release
$ uname -r
5.8.2-000-generic
```

### Compiling a module

Example Makefile

```
#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>

MODULE_LICENSE(“GPL”);
MODULE_AUTHOR(“Simon Baeumer”);
MODULE_DESCRIPTION(“A simple example Linux module.”);
MODULE_VERSION(“0.01”);

static int __init hello_init(void) {
    printk(KERN_INFO “Hello, World!\n”);
    return 0;
}

static void __exit hello_exit(void) {
    printk(KERN_INFO “Goodbye, World!\n”);
}

module_init(hello_init);
module_exit(hello_exit);
```