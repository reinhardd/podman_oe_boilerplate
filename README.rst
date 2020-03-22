Podman OE/Yocto Boilerplate Project
===================================

provides a basic structure for a openembedded/yocto base system builder.


How to use
----------

1) Checkout this project
2) Create your own oe/yocto project directory
3) Copy files and dirs to the root of your own oe/yocto project
4) Checkout other repos as subdirectories to layers/
5) create podman.env from podman.env.sample
6) create build.env from build.env.sample

example::

    git clone https://github.com/reinhardd/podman_oe_boilerplate.git my_own_project
    cd my_own_project
    rm -rf .git
    git init
    git submodule add -b zeus git://git.yoctoproject.org/poky layers/poky
    git submodule add -b zeus git://git.openembedded.org/meta-openembedded layers/meta-openembedded
    cp podman.env.sample podman.env
    cp build.env.sample build.env
    mkdir ../zeus_downloads
    env/podman_build_shell

now you are inside bitbake shell::

    1000@4a99594c25a6:~/build_qemux86_64$
    1000@4a99594c25a6:~/build_qemux86_64$ bitbake-layers show-layers
    NOTE: Starting bitbake server...
    layer                 path                                      priority
    ==========================================================================
    meta                  /home/reinhard/Develop/oe_yocto/test/my_own_project/layers/poky/meta  5
    meta-poky             /home/reinhard/Develop/oe_yocto/test/my_own_project/layers/poky/meta-poky  5
    meta-yocto-bsp        /home/reinhard/Develop/oe_yocto/test/my_own_project/layers/poky/meta-yocto-bsp  5
    meta-oe               /home/reinhard/Develop/oe_yocto/test/my_own_project/layers/meta-openembedded/meta-oe  6
    meta-python           /home/reinhard/Develop/oe_yocto/test/my_own_project/layers/meta-openembedded/meta-python  7
    meta-networking       /home/reinhard/Develop/oe_yocto/test/my_own_project/layers/meta-openembedded/meta-networking  5
    1000@4a99594c25a6:~/build_qemux86_64$
    1000@4a99594c25a6:~/build_qemux86_64$ bitbake core-image-minimal





