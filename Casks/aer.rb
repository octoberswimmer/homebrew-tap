cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.0-beta.8"
  sha256 arm:          "62ac64fc94977ea87726ec9f53f5af9f375fbcf62516217fa57b434030e9819e",
         x86_64:       "e55d270127a1f82c6908168388f032f7ad7277a24be9a107aa28e856edf2fa22",
         arm64_linux:  "1d3e47a9df57ca156e1cfbe441db9890588ee5a3d55df39fdb8583e151516b46",
         x86_64_linux: "abbc69f78dea78adadf3847639cfe0847730f3dc4b88f7b9963bd9aa801abf28"

  url "https://github.com/octoberswimmer/aer-dist/releases/download/v#{version}/aer_#{os}_#{arch}_v#{version}.zip"
  name "aer"
  desc "Apex Execution Runtime"
  homepage "https://www.octoberswimmer.com/tools/aer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  binary "aer"
end
