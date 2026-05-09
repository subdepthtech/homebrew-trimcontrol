cask "trimcontrol" do
  version "0.1.0"
  sha256 "fb8e3a456f9a77b4843326c0bf1cb20533b26d91728eaa4380b65f549d1f823b"

  url "https://github.com/subdepthtech/TrimControl/releases/download/v#{version}/TrimControl-#{version}-arm64.dmg"
  name "TrimControl"
  desc "Open source and text files in Neovim from Finder"
  homepage "https://github.com/subdepthtech/TrimControl"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "TrimControl.app"

  uninstall quit: "com.subdepthtech.trimcontrol"

  zap trash: "~/Library/Preferences/com.subdepthtech.trimcontrol.plist"

  caveats <<~EOS
    Open TrimControl after installation and use Apply all defaults to register
    Finder file-type handlers for this user.
  EOS
end
