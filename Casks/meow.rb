cask "meow" do
  version "0.1.0"
  sha256 "e65ca98db10337a48c05125aeb8e6d641efcaa2ebb3bfb1c6fe477aafec04048"

  url "https://github.com/jjyr/meow-translate/releases/download/v#{version}/Meow-v#{version}-macOS.zip"
  name "Meow"
  desc "Translate DRM-free EPUB books with AI"
  homepage "https://github.com/jjyr/meow-translate"

  depends_on macos: :ventura

  app "Meow.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Meow.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/app.meow.translate",
    "~/Library/Preferences/app.meow.translate.plist",
  ]
end
