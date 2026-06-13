cask "bgterm" do
  version "0.1.0"
  sha256 "1f8f162cc5439b9e4e2989b82399fcdfa4eadb8cae85988ece8c1f08860c7e62"

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
    "~/Library/Preferences/io.goappo.bgterm.plist",
  ]
end
