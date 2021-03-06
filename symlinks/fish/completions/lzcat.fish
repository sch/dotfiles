# lzcat: Deroffing man parser
# Autogenerated from man pages
complete -c lzcat -s z -l compress --description Compress
complete -c lzcat -s d -l decompress -l uncompress --description Decompress
complete -c lzcat -s t -l test --description 'Test the integrity of compressed R files '
complete -c lzcat -s l -l list --description 'Print information about compressed R files '
complete -c lzcat -s k -l keep --description 'Don\'t delete the input files'
complete -c lzcat -s f -l force --description 'This option has several effects: '
complete -c lzcat -s c -l stdout -l to-stdout --description 'Write the compressed or decompressed data to ... [See Man Page]'
complete -c lzcat -l no-sparse --description 'Disable creation of sparse files'
complete -c lzcat -s S -l suffix --description 'When compressing, use  '
complete -c lzcat -l 'files[' --description 'Read the filenames to process from R file ; i... [See Man Page]'
complete -c lzcat -l 'files0[' --description 'This is identical to --files[=file] except th... [See Man Page]'
complete -c lzcat -s F -l format --description 'Specify the file  format to compress or decom... [See Man Page]'
complete -c lzcat -s C -l check --description 'Specify the type of the integrity check'
complete -c lzcat -s 0 -s 9 --description 'Select a compression preset level'
complete -c lzcat -s 3 --description 'These are somewhat fast presets'
complete -c lzcat -s 4 -s 6 --description 'Good to very good compression while keeping d... [See Man Page]'
complete -c lzcat -s 7 --description 'These are like  -6 but with higher compressor... [See Man Page]'
complete -c lzcat -s e -l extreme --description 'Use a slower variant of the selected compress... [See Man Page]'
complete -c lzcat -l best
complete -c lzcat -l memlimit-compress --description 'Set a memory usage limit for compression'
complete -c lzcat -l memlimit-decompress --description 'Set a memory usage limit for decompression'
complete -c lzcat -s M -l memlimit -l memory --description 'This is equivalent to specifying --memlimit-c... [See Man Page]'
complete -c lzcat -l no-adjust --description 'Display an error and exit if the compression ... [See Man Page]'
complete -c lzcat -s T -l threads --description 'Specify the number of worker threads to use'
complete -c lzcat -l 'lzma2['
complete -c lzcat -l 'sparc['
complete -c lzcat -l 'delta[' --description 'Add the Delta filter to the filter chain'
complete -c lzcat -s q -l quiet --description 'Suppress warnings and notices'
complete -c lzcat -s v -l verbose --description 'Be verbose'
complete -c lzcat -s Q -l no-warn --description 'Don\'t set the exit status to 2 even if a cond... [See Man Page]'
complete -c lzcat -l robot --description 'Print messages in a machine-parsable format'
complete -c lzcat -l info-memory --description 'Display, in human-readable format, how much p... [See Man Page]'
complete -c lzcat -s h -l help --description 'Display a help message describing the most co... [See Man Page]'
complete -c lzcat -s H -l long-help --description 'Display a help message describing all feature... [See Man Page]'
complete -c lzcat -o 6e --description 'may be worth considering too'
complete -c lzcat -o '0	256'
complete -c lzcat -o '1	1'
complete -c lzcat -o '2	2'
complete -c lzcat -o '3	4'
complete -c lzcat -o '4	4'
complete -c lzcat -o '5	8'
complete -c lzcat -o '6	8'
complete -c lzcat -o '7	16'
complete -c lzcat -o '8	32'
complete -c lzcat -o '9	64' --description 'Column descriptions:'
complete -c lzcat -o 3e --description and
complete -c lzcat -o 5e --description 'use slightly faster settings (lower CompCPU) ... [See Man Page]'
complete -c lzcat -o 4e --description and
complete -c lzcat -o '0e	256'
complete -c lzcat -o '1e	1'
complete -c lzcat -o '2e	2'
complete -c lzcat -o '3e	4'
complete -c lzcat -o '4e	4'
complete -c lzcat -o '5e	8'
complete -c lzcat -o '6e	8'
complete -c lzcat -o '7e	16'
complete -c lzcat -o '8e	32'
complete -c lzcat -o '9e	64' --description 'For example, there are a total of four preset... [See Man Page]'
complete -c lzcat -s 5
complete -c lzcat -l fast
complete -c lzcat -l 'lzma1['
complete -c lzcat -l 'x86['
complete -c lzcat -l 'powerpc['
complete -c lzcat -l 'ia64['
complete -c lzcat -l 'arm['
complete -c lzcat -l 'armthumb['
complete -c lzcat -s V -l version --description 'Display the version number of xz and liblzma ... [See Man Page]'
complete -c lzcat -o '0	3'
complete -c lzcat -o '1	9'
complete -c lzcat -o '2	17'
complete -c lzcat -o '3	32'
complete -c lzcat -o '4	48'
complete -c lzcat -o '5	94'
complete -c lzcat -o '6	94'
complete -c lzcat -o '7	186'
complete -c lzcat -o '8	370'
complete -c lzcat -o '9	674' --description 'The default preset level in LZMA Utils is'
complete -c lzcat -l rsyncable --description 'to create rsyncable '
complete -c lzcat -s P --description 'option to xargs (1) sets the number of parall... [See Man Page]'
complete -c lzcat -s n --description 'option depends on how many files there are to... [See Man Page]'
complete -c lzcat -o T1 --description 'for xz is there to force it to single-threade... [See Man Page]'
complete -c lzcat -o '0	0'
complete -c lzcat -o '3	3'
complete -c lzcat -o '5	5'
complete -c lzcat -o '6	6'
complete -c lzcat -o '5e	7'
complete -c lzcat -o vv --description '( --verbose --verbose ) like in the above exa... [See Man Page]'
complete -c lzcat -l x86 --description 'is specified after'
complete -c lzcat -l lzma2 --description 'xz will give an error, because there cannot b... [See Man Page]'

