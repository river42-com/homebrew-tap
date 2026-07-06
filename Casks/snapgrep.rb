cask "snapgrep" do
  version "0.21.1,45"
  sha256 "dd2ba73dcb76d7c83466fc16cf81f42295c805b75900472812dee557d452efc0"

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
  depends_on macos: ">= :sequoia"

  app "SnapGrep.app"

  uninstall quit: "com.river42.snapgrep"

  zap trash: [
    "~/Library/Caches/com.river42.snapgrep",
    "~/Library/HTTPStorages/com.river42.snapgrep",
    "~/Library/Preferences/com.river42.snapgrep.plist",
  ]
end
