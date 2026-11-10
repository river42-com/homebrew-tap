cask "ccshot" do
  version "0.7.1,8"
  sha256 "d55f09b83ac302909f86cf8228f02714baad6da1bfaf92ce08b9ba75caca121e"

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
