cask "localhost" do
  version "0.1.0"
  sha256 "9a233d81f45d79be0e2cead436f0e68ca71a1bce84ea4528e6749f7814403f9f"

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
