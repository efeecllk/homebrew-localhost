cask "localhost" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "PLACEHOLDER_ARM64_SHA256",
         intel: "PLACEHOLDER_X64_SHA256"

  url "https://github.com/efeecllk/localhost/releases/download/v#{version}/localhost_#{version}_#{arch}.dmg"
  name "localhost"
  desc "macOS menu bar app that auto-detects running dev processes grouped by project"
  homepage "https://github.com/efeecllk/localhost"

  depends_on macos: ">= :ventura"

  app "localhost.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/localhost.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.efecelik.localhost",
    "~/Library/Caches/com.efecelik.localhost",
    "~/Library/Preferences/com.efecelik.localhost.plist",
    "~/Library/Saved Application State/com.efecelik.localhost.savedState",
  ]
end
