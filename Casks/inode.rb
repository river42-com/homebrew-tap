cask "inode" do
  version "0.2.1,3"
  sha256 "90d4b8d205da1b8e773d705d05aafc3e3af2e4755bea7f695190a9b3007ab677"

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
