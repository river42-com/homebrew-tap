cask "inode" do
  version "0.3.2,6"
  sha256 "55af22d50834f9ee1674850d0843038fc93e6017afcdef255a016dda73f2371a"

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
