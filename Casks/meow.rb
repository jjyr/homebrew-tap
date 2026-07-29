cask "meow" do
  version "0.0.1"
  sha256 "9dc93bdad0e469f22517edcdabcee1bcf75b9c3e886633e9c74d9082cd99d45e"

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
