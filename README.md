# longtimeno-c/homebrew-tap

Homebrew formulae for [MediaViewer](https://github.com/longtimeno-c/mediaviewer)'s command line.

## driftwire

Send files to a computer nearby, or anywhere with a code, from a terminal. It sends to and
receives from MediaViewer's Driftwire and another driftwire, and needs no MediaViewer.

```sh
brew install longtimeno-c/tap/driftwire
```

`brew upgrade` keeps it up to date and `brew uninstall driftwire` removes it. macOS 14 or later.
The program is signed with its publisher's Developer ID and notarized by Apple.

## How this repository changes

`Formula/driftwire.rb` is written by the release workflow of
[longtimeno-c/mediaviewer](https://github.com/longtimeno-c/mediaviewer) for each stable release (its
`driftwire-homebrew` job): it points at that release's `driftwire-<version>-macos-universal.tar.gz`
and its SHA-256. An edit here is replaced by the next release. Questions and bugs go to
https://github.com/longtimeno-c/mediaviewer/issues.
