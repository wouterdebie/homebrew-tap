cask "davit" do
  version "0.1.34"
  sha256 "bd6bddcbdc39c7bca5914d1c214aeb530ff4b26befc7c290413193fa7fdea493"

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
