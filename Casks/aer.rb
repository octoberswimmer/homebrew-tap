cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.0"
  sha256 arm:          "b7f957c64e5a978a4a0ce5276f92b90f19650ce5038935b3cd10cb401c4ec392",
         x86_64:       "923de9e29d228ae49433bcb0519476264515c2ffc74afe06c8585f2081e6e9eb",
         arm64_linux:  "7bad4ad1e93bc2088e3a5231f828c7e94d73fac33c0d27bd36a7e4d0438c4167",
         x86_64_linux: "42a631847236abfba59925b726ca398af6a473e1e1c0f57f74a3fe6e979c0576"

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
