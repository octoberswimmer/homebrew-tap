cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.0-beta.4"
  sha256 arm:          "a0a98cdab2eeab4409544831ad521b3598668946cb119cdb81555d313c882f78",
         x86_64:       "a1479f7d263bbe0370234126cb0c30ca968eca78ded2ff8f72fd679e81d28d47",
         arm64_linux:  "c94e78fa9f707ac74f8a9923eb03e99f18cedb37b90af8c35b0739bb47059e4f",
         x86_64_linux: "bb55a9f9c7f9e938a0c402079eb04afaeabb8fc198cc27e8448bebc2e47280e7"

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
