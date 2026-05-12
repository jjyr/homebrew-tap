cask "dji-importer" do
  version "0.1.2"
  sha256 "8443e033df3fd15fc8b33a302cd4f7bc9b665216b08b70555a5a1ff869824f07"

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
