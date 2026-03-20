cask "localhost" do
  version "0.1.2"
  sha256 "b3ebc4a15dc11c67961b6d18ce50baf4eb71b16dc890a683709876c2f0a4f825"

  url "https://github.com/efeecllk/localhost/releases/download/v#{version}/localhost_#{version}_aarch64.dmg"
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
