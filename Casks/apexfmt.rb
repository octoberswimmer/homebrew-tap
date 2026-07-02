cask "apexfmt" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.57.0"
  sha256 arm:          "b6f37dfe54f7569e97874a0e002a3379f529b2bb9e59739c2bac1cf3d782ec31",
         x86_64:       "faad760c0b63b798cd11099d69b0dbd2c8943635774a59799777f63f97b4af82",
         arm64_linux:  "3797b24d426f97ba830c6bbc1bca55062b3d9cbcf6ccac9498d32b211d0c85c5",
         x86_64_linux: "34325269b2be2a1b2f31ba96da70ae0eca0cb3a1460f17543a5c11e4e4881568"

  url "https://github.com/octoberswimmer/apexfmt/releases/download/v#{version}/apexfmt_#{os}_#{arch}_v#{version}.zip"
  name "apexfmt"
  desc "Format Apex code automatically"
  homepage "https://www.octoberswimmer.com/tools/apexfmt/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "apexfmt"
end
