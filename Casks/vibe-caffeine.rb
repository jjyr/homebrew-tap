cask "vibe-caffeine" do
  version "0.1.0"
  sha256 "PLACEHOLDER_SHA256"

  url "https://github.com/jjyr/vibe-caffeine/releases/download/v#{version}/VibeCaffeine.app.zip"
  name "Vibe Caffeine"
  desc "Menu bar app that prevents Mac sleep when AI coding tools are active"
  homepage "https://github.com/jjyr/vibe-caffeine"

  depends_on macos: ">= :ventura"

  app "VibeCaffeine.app"

  zap trash: [
    "~/Library/Preferences/com.jjy.VibeCaffeine.plist",
  ]
end
