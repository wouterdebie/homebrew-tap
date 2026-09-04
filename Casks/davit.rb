cask "davit" do
  version "0.1.29"
  sha256 "07baf0d5d1bedcea9092a98d91cc78b964230a44de79a9d9ba4dd12b3ce2d87f"

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
