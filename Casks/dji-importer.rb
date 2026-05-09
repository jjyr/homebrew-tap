cask "dji-importer" do
  version "0.1.0"
  sha256 "15a7bb6891e683bade2323694b8ecb3c4e52c5bbd9e3c121c690e573704d4d1f"

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
