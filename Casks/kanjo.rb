cask "kanjo" do
  version "0.6.9"
  sha256 "053ee8687162b40a51bf0fda7a22718e9986a86db23be844fe181e28bdc35c20"

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
