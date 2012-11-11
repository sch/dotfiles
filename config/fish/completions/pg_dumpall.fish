# pg_dumpall: Deroffing man parser
# Autogenerated from man pages
complete -c pg_dumpall -s a -l data-only --description 'Dump only the data, not the schema (data defi... [See Man Page]'
complete -c pg_dumpall -s c -l clean --description 'Include SQL commands to clean (drop) database... [See Man Page]'
complete -c pg_dumpall -s f -l file --description 'Send output to the specified file'
complete -c pg_dumpall -s g -l globals-only --description 'Dump only global objects (roles and tablespac... [See Man Page]'
complete -c pg_dumpall -s i -l ignore-version --description 'A deprecated option that is now ignored'
complete -c pg_dumpall -s o -l oids --description 'Dump object identifiers (OIDs) as part of the... [See Man Page]'
complete -c pg_dumpall -s O -l no-owner --description 'Do not output commands to set ownership of ob... [See Man Page]'
complete -c pg_dumpall -s r -l roles-only --description 'Dump only roles, no databases or tablespaces'
complete -c pg_dumpall -s s -l schema-only --description 'Dump only the object definitions (schema), no... [See Man Page]'
complete -c pg_dumpall -s S -l superuser --description 'Specify the superuser user name to use when d... [See Man Page]'
complete -c pg_dumpall -s t -l tablespaces-only --description 'Dump only tablespaces, no databases or roles'
complete -c pg_dumpall -s v -l verbose --description 'Specifies verbose mode'
complete -c pg_dumpall -s V -l version --description 'Print the pg_dumpall version and exit'
complete -c pg_dumpall -s x -l no-privileges -l no-acl --description 'Prevent dumping of access privileges (grant/r... [See Man Page]'
complete -c pg_dumpall -l binary-upgrade --description 'This option is for use by in-place upgrade ut... [See Man Page]'
complete -c pg_dumpall -l column-inserts -l attribute-inserts --description 'Dump data as INSERT commands with explicit co... [See Man Page]'
complete -c pg_dumpall -l disable-dollar-quoting --description 'This option disables the use of dollar quotin... [See Man Page]'
complete -c pg_dumpall -l disable-triggers --description 'This option is only relevant when creating a ... [See Man Page]'
complete -c pg_dumpall -l inserts --description 'Dump data as INSERT commands (rather than COP... [See Man Page]'
complete -c pg_dumpall -l lock-wait-timeout --description 'Do not wait forever to acquire shared table l... [See Man Page]'
complete -c pg_dumpall -l no-security-labels --description 'Do not dump security labels'
complete -c pg_dumpall -l no-tablespaces --description 'Do not output commands to create tablespaces ... [See Man Page]'
complete -c pg_dumpall -l no-unlogged-table-data --description 'Do not dump the contents of unlogged tables'
complete -c pg_dumpall -l quote-all-identifiers --description 'Force quoting of all identifiers'
complete -c pg_dumpall -l use-set-session-authorization --description 'Output SQL-standard SET SESSION AUTHORIZATION... [See Man Page]'
complete -c pg_dumpall -s '?' -l help --description 'Show help about pg_dumpall command line argum... [See Man Page]'
complete -c pg_dumpall -s h -l host --description 'Specifies the host name of the machine on whi... [See Man Page]'
complete -c pg_dumpall -s l -l database --description 'Specifies the name of the database to connect... [See Man Page]'
complete -c pg_dumpall -s p -l port --description 'Specifies the TCP port or local Unix domain s... [See Man Page]'
complete -c pg_dumpall -s U -l username --description 'User name to connect as'
complete -c pg_dumpall -s w -l no-password --description 'Never issue a password prompt'
complete -c pg_dumpall -s W -l password --description 'Force pg_dumpall to prompt for a password bef... [See Man Page]'
complete -c pg_dumpall -l role --description 'Specifies a role name to be used to create th... [See Man Page]'
complete -c pg_dumpall -o 'O.'
complete -c pg_dumpall -o 'U)' --description 'pg_dumpall, but can switch to a role with the... [See Man Page]'

