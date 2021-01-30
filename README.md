# Shell Script Examples

Shell script examples.

## [Parameter Expansion](expanstion.sh)

[Parameter expansion](https://pubs.opengroup.org/onlinepubs/009695399/utilities/xcu_chap02.html#tag_02_06_02) tests and examples.  For example, [ -z ${1+x} ] will return an exit code of 0 (true) if $1 is unset, ${1-x} will default to x if $1 is unset.  

```bash
# unset and not empty  (unintuitively, unset is not null by definition)
./expansion.sh
# set and empty
./expansion.sh ""
# set and not empty
./expansion.sh 4343
```

## [File Type](filetype.sh)

Test the file types.

```bash
# terminal not a regular file
./filetype.sh 0
# regular file
./filetype.sh README.md
```

## [Read](read.sh)

Read/parse a file with no need to have a blank line at the end of the file.

```bash
./read.sh
```

## [Test Integer](testinteger.sh)

Test integer comparisons.

```bash
./testinteger.sh 1 2
```

## [Words](words.sh)

Usage of "$@".

```bash
./words.sh one "" 3 "hello there" four
```

# References

Shell documentation:

https://pubs.opengroup.org/onlinepubs/009695399/utilities/xcu_chap02.html
https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html
