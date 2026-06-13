cask "bgterm" do
  version "0.1.0"
  sha256 "5d97a550fabb31f050f760259c7b54960e024b3b4f2b8b28d79bb580e10b84fc"

  url "https://github.com/webfucktory/bgterm/releases/download/v#{version}/bgterm-v#{version}.zip"
  name "bgterm"
  desc "Interactive terminal as the desktop wallpaper"
  homepage "https://github.com/webfucktory/bgterm"

  app "bgterm.app"

  # Unsigned build: clear the quarantine flag so it launches without right-click.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/bgterm.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.webfktory.bgterm.plist",
  ]
end
