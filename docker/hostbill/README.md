Hostbill Dockerfile
===================

Currently the image for Hostbill is not based on the generic base images like
the other services but uses a debian image due to dependencies of hostbill.
Not all needed packages are available in the Ubuntu package repository.

The hostbill files (installer and db dump) should be downloadable from
http://downloads.tw.intern/ as
http://downloads.tw.intern/dump_hostbill_latest.sql and
http://downloads.tw.intern/hostbill_install_latest.tar.gz

Those links should always point to the most recent versions of hostbill.
The installer is not the installer package provided by Hostbill but an archive
of a freshly installed Hostbill version with license included.