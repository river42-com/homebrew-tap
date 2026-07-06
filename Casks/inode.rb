cask "inode" do
  version "0.3.0,4"
  sha256 "354794064ce2a849d891067ee4047906886f4e7a069f4349bbd75dda52122e11"

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

  uninstall quit: "at.sysinit.inode"

  zap trash: [
    "~/Library/Caches/at.sysinit.inode",
    "~/Library/HTTPStorages/at.sysinit.inode",
    "~/Library/Preferences/at.sysinit.inode.plist",
  ]
end
