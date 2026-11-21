cask "kanjo" do
  version "0.6.11"
  sha256 "a06533956facc1b7c3523d8f72d3d8d3d5b8eb219bd5cdbb38447afbcfc4f834"

  url "https://github.com/mammut001/kanjo/releases/download/v#{version}/Kanjo-#{version}-macos.dmg"
  name "Kanjo"
  desc "Menu bar app showing how much AI coding agents cost per git repo"
  homepage "https://github.com/mammut001/kanjo"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Kanjo.app"

  # The usage ledger (~/.local/share/kanjo) is kept on purpose: it may hold
  # history whose source logs no longer exist.
  zap trash: [
    "~/.cache/kanjo",
    "~/.config/kanjo",
    "~/Library/Caches/com.lanshuagent.kanjo",
    "~/Library/Preferences/com.lanshuagent.kanjo.plist",
  ]
end
