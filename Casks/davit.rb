cask "davit" do
  version "0.1.20"
  sha256 "d9da9aef073b1ca105163e905438e9ea88c4821b00a5447db1fac9bcb38fbecc"

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
