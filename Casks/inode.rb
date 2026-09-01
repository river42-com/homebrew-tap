cask "inode" do
  version "0.10.0,28"
  sha256 "5623b26bada2a15fb021d251a5b1987d56981de04ed47bb39b22ad8de23ce512"

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
