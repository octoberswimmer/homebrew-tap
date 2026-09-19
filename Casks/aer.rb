cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.10"
  sha256 arm:          "2dcf8f1e78480ea2e6f2929db3d7009bc3de9b2f9237ec0214741937e307dece",
         x86_64:       "e3a5503de2f21fbb309d665f6db179d7f41f157399e825c6992dfe96dea6caae",
         arm64_linux:  "d43f8eff2813b88903cdf96a3442e3fd66754102914be6c8c851fe23577f0c48",
         x86_64_linux: "2895ae21a65f2d2c187743f66b42bd84262d26288b441ff61008b15dae48a0a0"

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
