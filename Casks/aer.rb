cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.24"
  sha256 arm:          "d414ceb93992134fe0a02bea4b845966c03952e5ce39320053888e99cd6bc891",
         x86_64:       "2538a92affb5e7f58cb98766b89394995c1dd423b830837d9c975d53cdf334f5",
         arm64_linux:  "0e96a948f91ceb2dc28b19c4930098f8d84c6b63530526a0c35b11e0ff574ebc",
         x86_64_linux: "8352fc146b62b082d77e861641819eaa910e00c6c0e1f534524f065a7c63c6e7"

  url "https://github.com/octoberswimmer/aer-dist/releases/download/v#{version}/aer_#{os}_#{arch}_v#{version}.zip",
      verified: "github.com/octoberswimmer/aer-dist/"
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
