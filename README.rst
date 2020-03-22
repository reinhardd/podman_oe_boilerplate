Podman OE/Yocto Boilerplate Project
===================================

provides a basic structure for a openembedded/yocto base system builder.


How to use
----------

1) Checkout this project
2) Create your own oe/yocto project directory
3) Copy files and dirs to the root of your own oe/yocto project
4) create podman.env from podman.env.sample
5) create build.env from build.env.sample

example::

    git clone git@github.com:reinhardd/podman_oe_boilerplate.git my_own_project
    cd my_own_project
    rm -rf .git
    git init .
    git submodule add -b zeus git://git.yoctoproject.org/poky layers/poky
    git submodule add -b zeus git://git.openembedded.org/meta-openembedded layers/meta-openembedded
    cp build.env.sample




