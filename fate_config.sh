slot=x86-haiku-gcc-4.8                   # some unique identifier
repo=/boot/home/ffmpeg                   # the source repository
samples=/FATE                            # path to samples directory
workdir=/boot/home/ffmpeg-build          # directory in which to do all the work
fate_recv="ssh -T fate@fate.ffmpeg.org" # command to submit report
comment='--disable-inline-asm (TG)'      # optional description
build_only=     # set to "yes" for a compile-only instance that skips tests

# the following are optional and map to configure options
arch=
cpu=
cross_prefix=
as=
cc=
ld=
target_os=
sysroot=
target_exec=
target_path=
target_samples=
extra_cflags=
extra_ldflags=
extra_libs=
extra_conf=--disable-inline-asm     # extra configure options not covered above

#make=          # name of GNU make if not 'make'
makeopts=-j3    # extra options passed to 'make'
#tar=           # command to create a tar archive from its arguments on stdout,
                # defaults to 'tar c'


