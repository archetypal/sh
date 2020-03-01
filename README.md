# Shell Script Examples

Shell script examples.

## [Parameter Expansion](expanstion.sh)

Parameter expansion - ${1-x} for example.

```bash
# unset and not null  (unintuitively, unset is not null by definition)
./expansion.sh
# set and null
./expansion.sh ""
# set and not null
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

Read/parse a file

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
