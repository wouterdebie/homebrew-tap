cask "davit" do
  version "0.1.14"
  sha256 "5c70898b6e06251b32fd90986c9533a4e628d25ed2ffad9a420d38b722b08195"

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
