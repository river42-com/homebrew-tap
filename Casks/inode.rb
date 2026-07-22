cask "inode" do
  version "0.9.2,20"
  sha256 "79d18890b6abf4a00aa4bfadd9935124e0a0b3b980d357e26c7331bad51132b2"

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
