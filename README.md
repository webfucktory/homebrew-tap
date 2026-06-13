# webfucktory/homebrew-tap

Homebrew tap for [bgterm](https://github.com/webfucktory/bgterm).

```bash
brew tap webfucktory/tap
brew trust webfucktory/tap      # recent Homebrew requires trusting third-party taps
brew install --cask bgterm
```

bgterm is an unsigned build; the cask clears the quarantine flag on install so it
launches without a right-click → Open.
