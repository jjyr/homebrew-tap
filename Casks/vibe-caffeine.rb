cask "vibe-caffeine" do
  version "0.1.1"
  sha256 "5b2271606b0e2ecb64c80327e287d6d5afccaf3a66adbca9a8d654099397a597"

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
