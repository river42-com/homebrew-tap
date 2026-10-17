cask "inode" do
  version "0.14.1,33"
  sha256 "cc42c1a6fef87853ad3a18e550a7965714fad37e98b8b29f98a67826d8f844e8"

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
