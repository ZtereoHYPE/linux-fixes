# VP9 decoder issues...
See more at: 
https://gitlab.freedesktop.org/mesa/mesa/-/issues/8044


To fix the vp9 hardwrae decoder, just add `amd_iommu=off` as a kernel boot parameter in your grub file.

For fedora, that is in `/etc/default/grub` and run `sudo grub2-mkconfig -o /etc/grub2.cfg` afterwards.