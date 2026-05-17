cask "dji-importer" do
  version "0.1.6"
  sha256 "8d746e97aaf5550544019085397479d846307a5cc6522cbf1f9ab56e64952606"

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
