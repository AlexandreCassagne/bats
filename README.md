# bats
### Byte Array to String

Given a byte array, formatted as an array of human-readable numbers in the range 0...255 (*i.e.* 23, 41, ...), returns the string decoded as standard ASCII.

Usage: `bats 23, 1, 42, ...`

To make this easier to use with arrays, the tool treats the following characters in standard input like whitespace: `[`, `]`, `,`.
