cask "vibe-caffeine" do
  version "0.1.2"
  sha256 "d5a56094b76ee87ffa6626bc7d46ff2d4a5a9a2a7dcf93a78fc38419070f8863"

  url "https://github.com/jjyr/vibe-caffeine/releases/download/v#{version}/VibeCaffeine.app.zip"
  name "Vibe Caffeine"
  desc "Menu bar app that prevents Mac sleep when AI coding tools are active"
  homepage "https://github.com/jjyr/vibe-caffeine"

  depends_on macos: ">= :ventura"

  app "VibeCaffeine.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/VibeCaffeine.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.jjy.VibeCaffeine.plist",
  ]
end
