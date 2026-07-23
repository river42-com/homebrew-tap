cask "snapgrep" do
  version "0.34.2,97"
  sha256 "6c1482b860fcd78fc75d89da2a97a60d40aa426a40bc1f93ad27bc4c1503dbc5"

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
