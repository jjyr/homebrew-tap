cask "vibe-caffeine" do
  version "0.1.5"
  sha256 "490315a144a3e38df28b98fe16ff82cf3d31bc25cace817a6c71435988c8d58f"

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
