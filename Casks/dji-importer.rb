cask "dji-importer" do
  version "0.1.1"
  sha256 "db194cc6406a837e0a202552d19d3950f8a3a1709770dea8fd7f7fcb2d092a77"

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
