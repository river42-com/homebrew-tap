cask "inode" do
  version "0.3.1,5"
  sha256 "1cd02d1cf1e2e467a1ddb8c1f3864606d17d3f1c9313f1fefcfc6cf124dc1240"

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
