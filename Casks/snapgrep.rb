cask "snapgrep" do
  version "0.25.0,62"
  sha256 "52c6cf757590da6a68e03a26a3abb4f2d7c092eda735fbc526185768be45fe3e"

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
