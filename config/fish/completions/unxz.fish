# unxz: Deroffing man parser
# Autogenerated from man pages
complete -c unxz -s z -l compress --description Compress
complete -c unxz -s d -l decompress -l uncompress --description Decompress
complete -c unxz -s t -l test --description 'Test the integrity of compressed R files '
complete -c unxz -s l -l list --description 'Print information about compressed R files '
complete -c unxz -s k -l keep --description 'Don\'t delete the input files'
complete -c unxz -s f -l force --description 'This option has several effects: '
complete -c unxz -s c -l stdout -l to-stdout --description 'Write the compressed or decompressed data to ... [See Man Page]'
complete -c unxz -l no-sparse --description 'Disable creation of sparse files'
complete -c unxz -s S -l suffix --description 'When compressing, use  '
complete -c unxz -l 'files[' --description 'Read the filenames to process from R file ; i... [See Man Page]'
complete -c unxz -l 'files0[' --description 'This is identical to --files[=file] except th... [See Man Page]'
complete -c unxz -s F -l format --description 'Specify the file  format to compress or decom... [See Man Page]'
complete -c unxz -s C -l check --description 'Specify the type of the integrity check'
complete -c unxz -s 0 -s 9 --description 'Select a compression preset level'
complete -c unxz -s 3 --description 'These are somewhat fast presets'
complete -c unxz -s 4 -s 6 --description 'Good to very good compression while keeping d... [See Man Page]'
complete -c unxz -s 7 --description 'These are like  -6 but with higher compressor... [See Man Page]'
complete -c unxz -s e -l extreme --description 'Use a slower variant of the selected compress... [See Man Page]'
complete -c unxz -l best
complete -c unxz -l memlimit-compress --description 'Set a memory usage limit for compression'
complete -c unxz -l memlimit-decompress --description 'Set a memory usage limit for decompression'
complete -c unxz -s M -l memlimit -l memory --description 'This is equivalent to specifying --memlimit-c... [See Man Page]'
complete -c unxz -l no-adjust --description 'Display an error and exit if the compression ... [See Man Page]'
complete -c unxz -s T -l threads --description 'Specify the number of worker threads to use'
complete -c unxz -l 'lzma2['
complete -c unxz -l 'sparc['
complete -c unxz -l 'delta[' --description 'Add the Delta filter to the filter chain'
complete -c unxz -s q -l quiet --description 'Suppress warnings and notices'
complete -c unxz -s v -l verbose --description 'Be verbose'
complete -c unxz -s Q -l no-warn --description 'Don\'t set the exit status to 2 even if a cond... [See Man Page]'
complete -c unxz -l robot --description 'Print messages in a machine-parsable format'
complete -c unxz -l info-memory --description 'Display, in human-readable format, how much p... [See Man Page]'
complete -c unxz -s h -l help --description 'Display a help message describing the most co... [See Man Page]'
complete -c unxz -s H -l long-help --description 'Display a help message describing all feature... [See Man Page]'
complete -c unxz -o 6e --description 'may be worth considering too'
complete -c unxz -o '0	256'
complete -c unxz -o '1	1'
complete -c unxz -o '2	2'
complete -c unxz -o '3	4'
complete -c unxz -o '4	4'
complete -c unxz -o '5	8'
complete -c unxz -o '6	8'
complete -c unxz -o '7	16'
complete -c unxz -o '8	32'
complete -c unxz -o '9	64' --description 'Column descriptions:'
complete -c unxz -o 3e --description and
complete -c unxz -o 5e --description 'use slightly faster settings (lower CompCPU) ... [See Man Page]'
complete -c unxz -o 4e --description and
complete -c unxz -o '0e	256'
complete -c unxz -o '1e	1'
complete -c unxz -o '2e	2'
complete -c unxz -o '3e	4'
complete -c unxz -o '4e	4'
complete -c unxz -o '5e	8'
complete -c unxz -o '6e	8'
complete -c unxz -o '7e	16'
complete -c unxz -o '8e	32'
complete -c unxz -o '9e	64' --description 'For example, there are a total of four preset... [See Man Page]'
complete -c unxz -s 5
complete -c unxz -l fast
complete -c unxz -l 'lzma1['
complete -c unxz -l 'x86['
complete -c unxz -l 'powerpc['
complete -c unxz -l 'ia64['
complete -c unxz -l 'arm['
complete -c unxz -l 'armthumb['
complete -c unxz -s V -l version --description 'Display the version number of xz and liblzma ... [See Man Page]'
complete -c unxz -o '0	3'
complete -c unxz -o '1	9'
complete -c unxz -o '2	17'
complete -c unxz -o '3	32'
complete -c unxz -o '4	48'
complete -c unxz -o '5	94'
complete -c unxz -o '6	94'
complete -c unxz -o '7	186'
complete -c unxz -o '8	370'
complete -c unxz -o '9	674' --description 'The default preset level in LZMA Utils is'
complete -c unxz -l rsyncable --description 'to create rsyncable '
complete -c unxz -s P --description 'option to xargs (1) sets the number of parall... [See Man Page]'
complete -c unxz -s n --description 'option depends on how many files there are to... [See Man Page]'
complete -c unxz -o T1 --description 'for xz is there to force it to single-threade... [See Man Page]'
complete -c unxz -o '0	0'
complete -c unxz -o '3	3'
complete -c unxz -o '5	5'
complete -c unxz -o '6	6'
complete -c unxz -o '5e	7'
complete -c unxz -o vv --description '( --verbose --verbose ) like in the above exa... [See Man Page]'
complete -c unxz -l x86 --description 'is specified after'
complete -c unxz -l lzma2 --description 'xz will give an error, because there cannot b... [See Man Page]'

