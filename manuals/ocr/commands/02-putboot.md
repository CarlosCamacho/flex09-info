# PUTBOOT

_OCR transcription from: `Screenshot_20260912-065454.png`_

PUTBOOT

The PUTBOOT command is used to write the FLEX bootstrap loader onto a
disk in FLEX format.
## Description
The general syntax of the PUTBOOT command is:

PUTBOOT,<drive spec> or

PUTBOOT,<file spec>
where <drive spec> is the drive number containing the disk to be
written. If a file specification is provided, PUTBOOT will also perform
the LINK function to the specified file. In either case, an explicit
drive number MUST be specified. PUTBOOT will not default to the working
drive. For example, in order to write a new bootstrap onto the disk in
drive one, type:

+++PUTBOOT, 1

This will cause a new bootstrap to be written to the disk. Note that
this does not format the disk, nor does it change any files on the
specified disk.
The bootstrap loader is normally written onto the FLEX disk when it is
initially formatted with the NEWDISK Program. The PUTBOOT program may
be used to re-write the bootstrap in the event that it is damaged, or to
update to a newer version of FLEX without having to copy the entire disk
to a newly-formatted disk.

IMPORTANT NOTE
FLEX versions 2.6:8 or higher have a revised bootstrap loader. The new
bootstrap must be present in order to be able to successfully boot the
new versions of Flex. In order to upgrade a disk to these new versions,
the following procedure should be followed:

1, The new release FLEX disk should be booted and the disk to be
upgraded placed in drive one with write enabled.

2. The PUTBOOT program should be used to write a new bootstrap onto
the old disk. This will not affect any data currently on the
disk except the bootstrap itself.

3. The AR program should be used to replace any older programs that
have been re-released. Consult the AR documentation for
details.

4. Copy any new Programs you wish to the upgraded disk. This
completes the upgrade procedure.

