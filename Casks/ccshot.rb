cask "ccshot" do
  version "0.7.0,7"
  sha256 "06103b7688ed5fbd7337eb9dad1e2177e365cba2fcd35b798a29b2cebf0f14b4"

  url "https://ccshot.net/updates/ccshot-#{version.csv.first}.zip"
  name "ccshot"
  desc "Menu bar screenshot tool that sends one capture to many destinations"
  homepage "https://ccshot.net/"

  livecheck do
    url "https://ccshot.net/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "ccshot.app"
  binary "#{appdir}/ccshot.app/Contents/MacOS/ccshot"

  uninstall quit: "com.river42.ccshot"

  zap trash: [
    "~/Library/Application Support/ccshot",
    "~/Library/Caches/com.river42.ccshot",
    "~/Library/HTTPStorages/com.river42.ccshot",
    "~/Library/Preferences/com.river42.ccshot.plist",
  ]
end
