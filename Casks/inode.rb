cask "inode" do
  version "0.9.9,27"
  sha256 "d9ad903a20dacf41e302435a32931af20130c5e94d4ac261b4b31bdfa429b9b0"

  url "https://inode.pro/updates/Inode-#{version.csv.first}.zip"
  name "Inode"
  desc "File manager that thinks along"
  homepage "https://inode.pro/"

  livecheck do
    url "https://inode.pro/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Inode.app"

  uninstall quit: "com.river42.inode"

  zap trash: [
    "~/Library/Caches/com.river42.inode",
    "~/Library/HTTPStorages/com.river42.inode",
    "~/Library/Preferences/com.river42.inode.plist",
  ]
end
