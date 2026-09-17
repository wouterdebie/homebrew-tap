cask "davit" do
  version "0.1.35"
  sha256 "ac6dc0838b9b64755a0cf6bd1babff60ea9a994f985fc21eba5f2c01a3e6c033"

  url "https://github.com/wouterdebie/davit/releases/download/v#{version}/Davit-#{version}.zip"
  name "Davit"
  desc "UI for Apple's container platform"
  homepage "https://davit.app/"

  livecheck do
    url "https://github.com/wouterdebie/davit"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Davit.app"

  zap trash: [
    "~/Library/Application Support/dev.wouter.davit",
    "~/Library/Preferences/dev.wouter.davit.plist",
    "~/Library/Saved Application State/dev.wouter.davit.savedState",
  ]
end
