cask "vibe-caffeine" do
  version "0.1.0"
  sha256 "cec183f69ee0557f5f6f1c076e028e2160ca0dac87db2789c6ecf59cbb51ff1d"

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
