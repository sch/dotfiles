# hdiutil: Darwin man parser
# Autogenerated from man pages
complete -c hdiutil -l verbose --description 'be verbose: produce extra progress output and... [See Man Page]'
complete -c hdiutil -l quiet --description 'close stdout and stderr, leaving only'
complete -c hdiutil -l debug --description 'be very verbose'
complete -c hdiutil -l plist --description 'provide result output in plist format'
complete -c hdiutil -l puppetstrings --description 'provide progress output that is easy for anot... [See Man Page]'
complete -c hdiutil -l srcimagekey --description 'specify a key/value pair for the disk image r... [See Man Page]'
complete -c hdiutil -l tgtimagekey --description 'specify a key/value pair for any image create... [See Man Page]'
complete -c hdiutil -l encryption --description 'specify a particular type of encryption or, i... [See Man Page]'
complete -c hdiutil -l stdinpass --description 'read a null-terminated passphrase from standa... [See Man Page]'
complete -c hdiutil -l agentpass --description 'force the default behavior of prompting for a... [See Man Page]'
complete -c hdiutil -l recover --description 'specify a keychain containing the secret corr... [See Man Page]'
complete -c hdiutil -l certificate --description 'specify a secondary access certificate for an... [See Man Page]'
complete -c hdiutil -l pubkey --description 'specify a list of public keys, identified by ... [See Man Page]'
complete -c hdiutil -l cacert --description 'specify a certificate authority certificate'
complete -c hdiutil -l insecurehttp --description 'ignore SSL host validation failures'
complete -c hdiutil -l shadow --description 'Use a shadow file in conjunction with the dat... [See Man Page]'
complete -c hdiutil -l readonly --description 'force the resulting device to be read-only'
complete -c hdiutil -l readwrite --description 'attempt to override the DiskImages framework\'... [See Man Page]'
complete -c hdiutil -l nokernel --description 'attach with a helper process'
complete -c hdiutil -l kernel --description 'attempt to attach this image without a helper... [See Man Page]'
complete -c hdiutil -l notremovable --description 'prevent this image from being detached'
complete -c hdiutil -l mount
complete -c hdiutil -l nomount --description 'identical to'
complete -c hdiutil -l mountroot --description 'mount volumes on subdirectories of'
complete -c hdiutil -l mountrandom --description like
complete -c hdiutil -l mountpoint --description 'assuming only one volume, mount it at'
complete -c hdiutil -l nobrowse --description 'render any volumes invisible in applications ... [See Man Page]'
complete -c hdiutil -l owners --description 'specify that owners on any filesystems be hon... [See Man Page]'
complete -c hdiutil -l drivekey
complete -c hdiutil -l '[no]verify' --description 'do [not] verify the image'
complete -c hdiutil -l '[no]ignorebadchecksums'
complete -c hdiutil -l '[no]idme' --description 'do [not] perform IDME actions on IDME images'
complete -c hdiutil -l '[no]idmereveal' --description 'do [not] reveal (in the Finder) the results o... [See Man Page]'
complete -c hdiutil -l '[no]idmetrash' --description 'do [not] put IDME images in the trash after p... [See Man Page]'
complete -c hdiutil -l '[no]autoopen' --description 'do [not] auto-open volumes (in the Finder) af... [See Man Page]'
complete -c hdiutil -l '[no]autoopenro' --description 'do [not] auto-open read-only volumes'
complete -c hdiutil -l '[no]autoopenrw' --description 'do [not] auto-open read/write volumes'
complete -c hdiutil -l '[no]autofsck' --description 'do [not] force automatic file system checking... [See Man Page]'
complete -c hdiutil -l force --description 'ignore open files on mounted volumes, etc'
complete -c hdiutil -l size
complete -c hdiutil -l sectors
complete -c hdiutil -l megabytes
complete -c hdiutil -l srcfolder
complete -c hdiutil -l srcdevice
complete -c hdiutil -l align
complete -c hdiutil -l type
complete -c hdiutil -l fs
complete -c hdiutil -l volname
complete -c hdiutil -l uid --description 'the root of the newly-created volume will be ... [See Man Page]'
complete -c hdiutil -l gid --description 'the root of the newly-created volume will be ... [See Man Page]'
complete -c hdiutil -l mode --description 'the root of the newly-created volume will hav... [See Man Page]'
complete -c hdiutil -l '[no]autostretch'
complete -c hdiutil -l stretch
complete -c hdiutil -l fsargs
complete -c hdiutil -l layout
complete -c hdiutil -l library
complete -c hdiutil -l partitionType
complete -c hdiutil -l ov --description 'overwrite an existing file'
complete -c hdiutil -l attach --description 'attach the image after creating it'
complete -c hdiutil -l format --description 'Specify the final image format'
complete -c hdiutil -l segmentSize
complete -c hdiutil -l '[no]crossdev' --description 'do [not] cross device boundaries on the sourc... [See Man Page]'
complete -c hdiutil -l '[no]scrub' --description 'do [not] skip temporary files when imaging a ... [See Man Page]'
complete -c hdiutil -l '[no]anyowners' --description 'do not fail if the user invoking'
complete -c hdiutil -l skipunreadable --description 'skip files that can\'t be read by the copying ... [See Man Page]'
complete -c hdiutil -l copyuid --description 'perform the copy as the given user'
complete -c hdiutil -l pmap --description 'add partition map'
complete -c hdiutil -l tasks
complete -c hdiutil -l device --description 'specify a device to use for burning'
complete -c hdiutil -l testburn --description 'don\'t turn on laser (laser defaults to on)'
complete -c hdiutil -l anydevice --description 'explicitly allow burning to devices not quali... [See Man Page]'
complete -c hdiutil -l '[no]eject' --description 'do [not] eject disc after burning'
complete -c hdiutil -l '[no]verifyburn' --description 'do [not] verify disc contents after burn'
complete -c hdiutil -l '[no]addpmap' --description 'do [not] add partition map if necessary'
complete -c hdiutil -l '[no]skipfinalfree' --description 'do [not] skip final free partition'
complete -c hdiutil -l '[no]optimizeimage' --description 'do [not] optimize filesystem for burning'
complete -c hdiutil -l '[no]forceclose' --description 'do [not] force the disc to be closed after bu... [See Man Page]'
complete -c hdiutil -l nounderrun --description 'Disable the default buffer underrun protectio... [See Man Page]'
complete -c hdiutil -l '[no]synthesize' --description '[Don\'t] Synthesize a hybrid filesystem for th... [See Man Page]'
complete -c hdiutil -l speed --description '1, 2, 4, 6, '
complete -c hdiutil -l sizequery --description 'calculate the size of disc required (the size... [See Man Page]'
complete -c hdiutil -l erase --description 'prompt for optical media (DVD-RW/CD-RW) and t... [See Man Page]'
complete -c hdiutil -l fullerase --description 'erase all sectors of the disc (this usually t... [See Man Page]'
complete -c hdiutil -l list --description 'list all burning devices, with OpenFirmware p... [See Man Page]'
complete -c hdiutil -l hfs --description 'Generate an HFS+ filesystem'
complete -c hdiutil -l iso --description 'Generate an ISO9660 Level 2 filesystem with R... [See Man Page]'
complete -c hdiutil -l joliet --description 'Generate Joliet extensions to ISO9660'
complete -c hdiutil -l udf --description 'Generate a UDF filesystem'
complete -c hdiutil -l hfs-blessed-directory --description 'Path to directory which should be'
complete -c hdiutil -l hfs-openfolder --description 'Path to a directory that will be opened by th... [See Man Page]'
complete -c hdiutil -l hfs-startupfile-size --description 'Allocate an empty HFS+ Startup File of the sp... [See Man Page]'
complete -c hdiutil -l abstract-file --description 'Path to a file in the source directory (and t... [See Man Page]'
complete -c hdiutil -l bibliography-file --description 'Path to a file in the source directory (and t... [See Man Page]'
complete -c hdiutil -l copyright-file --description 'Path to a file in the source directory (and t... [See Man Page]'
complete -c hdiutil -l application --description 'Application string (ISO9660/Joliet)'
complete -c hdiutil -l preparer --description 'Preparer string (ISO9660/Joliet)'
complete -c hdiutil -l publisher --description 'Publisher string (ISO9660/Joliet)'
complete -c hdiutil -l system-id --description 'System Identification string (ISO9660/Joliet)... [See Man Page]'
complete -c hdiutil -l keep-mac-specific --description 'Expose Macintosh-specific files (such as '
complete -c hdiutil -l eltorito-boot --description 'Path to an El Torito boot image within the so... [See Man Page]'
complete -c hdiutil -l hard-disk-boot --description 'Use El Torito Hard Disk Emulation mode'
complete -c hdiutil -l no-emul-boot --description 'Use El Torito No Emulation mode'
complete -c hdiutil -l no-boot --description 'Mark the El Torito image as non-bootable'
complete -c hdiutil -l boot-load-seg --description 'For a No Emulation boot image, load the data ... [See Man Page]'
complete -c hdiutil -l boot-load-size --description 'For a No Emulation boot image, load the speci... [See Man Page]'
complete -c hdiutil -l eltorito-platform --description 'Use the specified numeric platform ID in the ... [See Man Page]'
complete -c hdiutil -l eltorito-specification --description 'For complex layouts involving multiple boot i... [See Man Page]'
complete -c hdiutil -l udf-version --description 'Version of UDF filesystem to generate'
complete -c hdiutil -l default-volume-name --description 'Default volume name for all filesystems, unle... [See Man Page]'
complete -c hdiutil -l hfs-volume-name --description 'Volume name for just the HFS+ filesystem if i... [See Man Page]'
complete -c hdiutil -l iso-volume-name --description 'Volume name for just the ISO9660 filesystem i... [See Man Page]'
complete -c hdiutil -l joliet-volume-name --description 'Volume name for just the Joliet filesystem if... [See Man Page]'
complete -c hdiutil -l udf-volume-name --description 'Volume name for just the UDF filesystem if it... [See Man Page]'
complete -c hdiutil -l hide-all --description 'A glob expression of files and directories th... [See Man Page]'
complete -c hdiutil -l hide-hfs --description 'A glob expression of files and directories th... [See Man Page]'
complete -c hdiutil -l hide-iso --description 'A glob expression of files and directories th... [See Man Page]'
complete -c hdiutil -l hide-joliet --description 'A glob expression of files and directories th... [See Man Page]'
complete -c hdiutil -l hide-udf --description 'A glob expression of files and directories th... [See Man Page]'
complete -c hdiutil -l only-udf --description 'A glob expression of objects that should only... [See Man Page]'
complete -c hdiutil -l only-iso --description 'A glob expression of objects that should only... [See Man Page]'
complete -c hdiutil -l only-joliet --description 'A glob expression of objects that should only... [See Man Page]'
complete -c hdiutil -l print-size --description 'Preflight the data and calculate an upper bou... [See Man Page]'
complete -c hdiutil -l plistin --description 'Instead of using command-line parameters, use... [See Man Page]'
complete -c hdiutil -l noxml --description 'don\'t embed XML data for in-kernel attachment... [See Man Page]'
complete -c hdiutil -l norsrcfork --description 'don\'t embed resource fork data'
complete -c hdiutil -l checksum --description 'just print out the image checksum'
complete -c hdiutil -l imageonly --description 'only resize the image file, not the partition... [See Man Page]'
complete -c hdiutil -l partitiononly --description 'only resize a partition / filesystem in the i... [See Man Page]'
complete -c hdiutil -l partitionNumber
complete -c hdiutil -l growonly --description 'only allow the image to grow'
complete -c hdiutil -l shrinkonly --description 'only allow the image to shrink'
complete -c hdiutil -l nofinalgap --description 'allow resize to entirely eliminate the traili... [See Man Page]'
complete -c hdiutil -l limits --description 'Displays the minimum, current, and maximum si... [See Man Page]'
complete -c hdiutil -l segmentCount
complete -c hdiutil -l firstSegmentSize
complete -c hdiutil -l restricted --description 'Make restricted segments for use in multi-CD ... [See Man Page]'
complete -c hdiutil -l simple --description 'generate MediaKit\'s minimal report: basic par... [See Man Page]'
complete -c hdiutil -l standard --description 'generate MediaKit\'s standard report, which ad... [See Man Page]'
complete -c hdiutil -l complete --description 'generate MediaKit\'s comprehensive report, wit... [See Man Page]'
complete -c hdiutil -l endoffsets --description 'indicate last block of each partition'
complete -c hdiutil -l nofreespace --description 'suppress all free space reporting'
complete -c hdiutil -l shims --description 'report free space < 32 sectors'
complete -c hdiutil -l uuids --description 'show per-instance UUIDs for each partition'
complete -c hdiutil -l xml
complete -c hdiutil -l rsrcfork
complete -c hdiutil -l replaceall
complete -c hdiutil -l rez --description 'emit Rez format output'
