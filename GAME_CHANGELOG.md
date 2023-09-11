# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.10.0621] - 2014-05-15

### Added

- Allowed network access in devmode
- Bumped version to 1.0.10.0621

### Fixed

- Parsing of custom map names containing a "."
- The Gamespy-replacement server will soon gain support for authenticating CD keys, allowing server operators to create meaningful ban files to keep out griefers (who could otherwise easily create a new online ID). This feature is still in testing and is not yet active.
- Reading sv_ban_penalty from init.txt
- Enabled refractive Active Camo on Nvidia cards, which had previously used an alpha fade. (AMD cardsalready have this)
- Handling of video cards with >= 2GB of memory
- Fixed a family of index-out-of-bounds bugs which had been exploited to crash clients

### Changed

- Modified 2003-era upper bound on the video resolution picker. Use at your own risk; the game is untested at 4800x3600.
- Chatbox settings to work with newer resolutions
- Disabled executable_is_valid checksum from strings.dll
- Models node limit updated to 63
- Removed some verbose debug logging of gamespy connections
- Removed halt on cache file verify error
- Made banlist parsing not case-sensitive
- Moved Gamespy services to use new non-Gamespy server
