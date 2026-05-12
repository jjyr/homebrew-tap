cask "dji-importer" do
  version "0.1.1"
  sha256 "f56fda2c5ed3735b0b575a1a713ce4777cdb474441be2001a7497d0e2af87c66"

  url "https://github.com/jjyr/dji-importer/releases/download/v#{version}/DJIImporter.app.zip"
  name "DJI Importer"
  desc "Import DJI Pocket 3 media into Apple Photos"
  homepage "https://github.com/jjyr/dji-importer"

  depends_on macos: ">= :ventura"

  app "DJIImporter.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/DJIImporter.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.jjy.DJIImporter.plist",
  ]
end
