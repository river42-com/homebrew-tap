cask "snapgrep" do
  version "0.27.2,80"
  sha256 "c6a26d135fa4e403f5311460482ac4248f38bcbfd1685f9ff9e6391cd927d1a2"

  url "https://snapgrep.com/updates/SnapGrep-#{version.csv.first}.zip"
  name "SnapGrep"
  desc "Search, copy, and act on any text visible on screen"
  homepage "https://snapgrep.com/"

  livecheck do
    url "https://snapgrep.com/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "SnapGrep.app"

  uninstall quit: "com.river42.snapgrep"

  zap trash: [
    "~/Library/Caches/com.river42.snapgrep",
    "~/Library/HTTPStorages/com.river42.snapgrep",
    "~/Library/Preferences/com.river42.snapgrep.plist",
  ]
end
