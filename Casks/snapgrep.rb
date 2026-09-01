cask "snapgrep" do
  version "0.37.0,101"
  sha256 "f37a3292a2893b2a6fbe98c1ea70bd26df5dad5151f7a0ec8b78bd82271037fc"

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
