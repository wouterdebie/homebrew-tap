cask "davit" do
  version "0.1.17"
  sha256 "e0ee9190010dee49038b245a3eb0ac653da92e0f01ff218e4007c950228884e4"

  url "https://github.com/wouterdebie/davit/releases/download/v#{version}/Davit-#{version}.zip",
      verified: "github.com/wouterdebie/davit/"
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
