cask "apexfmt" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.60.0"
  sha256 arm:          "45343ea6674511c0690e2a5e662d810b738fe1ead8f5c4f2764bc9db09b96115",
         x86_64:       "71531b0677dc2f96bf83929659262ad8aeeb332544da33784cf3379023c8fb46",
         arm64_linux:  "42c8edbd6e40e6725ae97053840c32ac964238f16b2346c725af0edc4f2683cd",
         x86_64_linux: "0ac147715751fb3866df68f549ba7c3afdfae65e50fc32780a017e0414231b46"

  url "https://github.com/octoberswimmer/apexfmt/releases/download/v#{version}/apexfmt_#{os}_#{arch}_v#{version}.zip",
      verified: "github.com/octoberswimmer/apexfmt/"
  name "apexfmt"
  desc "Format Apex code automatically"
  homepage "https://www.octoberswimmer.com/tools/apexfmt/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "apexfmt"
end
