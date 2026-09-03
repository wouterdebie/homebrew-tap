cask "davit" do
  version "0.1.27"
  sha256 "647288b9ee2a5b032d843b7868948a1a583824a8db665181ca4a688233ac3302"

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
