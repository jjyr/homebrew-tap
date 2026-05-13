cask "dji-importer" do
  version "0.1.3"
  sha256 "8f1d0fe4c733da714911969ddaf70b0ee5aac736d830398a680e543e5881c942"

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
