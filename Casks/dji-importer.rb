cask "dji-importer" do
  version "0.1.5"
  sha256 "9e58c85b4165c7e243eff71c03839c5362ff9dc84413e1250d47618bed2642cf"

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
