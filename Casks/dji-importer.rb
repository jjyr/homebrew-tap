cask "dji-importer" do
  version "0.1.4"
  sha256 "d26a43b19d86783f226c6b6cbe873b0b1dc1b38a004e5118690a22242a2be0ae"

  url "https://github.com/jjyr/dji-importer/releases/download/v#{version}/DJIImporter.app.zip"
  name "DJI Importer"
  desc "Import DJI Pocket 3 media into Apple Photos"
  homepage "https://github.com/jjyr/dji-importer"

  depends_on macos: :ventura

  app "DJIImporter.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/DJIImporter.app"],
                   sudo: false
  end

  zap trash: "~/Library/Preferences/com.jjy.DJIImporter.plist"
end
