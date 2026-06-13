cask "bgterm" do
  version "0.1.0"
  sha256 "dafa91bf26d3a409688abbaddd6d3e440dffe2e44ed373fe4534ccab0bd8cbac"

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
    "~/Library/Preferences/com.webfucktory.bgterm.plist",
  ]
end
