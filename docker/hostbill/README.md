Hostbill Dockerfile
===================

Currently the image for Hostbill is built externally, for it to be included
in the Kolla build it needs to be tested with the base image first and some
external dependencies need to be hosted somewhere so they can be downloaded
during the image build process: hostbill_installer archive and db dump.

Those files are too big to be included in the repository.

Also the bootstrapping script should be embedded directly in the image and
parse the generated config file to gather the values for connecting to the db.