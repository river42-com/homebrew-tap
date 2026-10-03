cask "inode" do
  version "0.13.0,31"
  sha256 "8cb8463fd0f2f93df4ea4385989dbf3907f41b8fb9b4b4b54f8f1d9db96bcad9"

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
