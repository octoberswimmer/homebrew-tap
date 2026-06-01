cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.6"
  sha256 arm:          "4b9102d95b10446636994d5e8b0f36b68f21054cf6ba6cdb7fd5096a7eccaf94",
         x86_64:       "8e2356f4f480533f0b6d9e797ad99eb53e2e9a07bb205cdc756f64a965e3b096",
         arm64_linux:  "d828700822f453f6ee8f4b48d6971968dbbd3ffd1db43fd56779c941ea51af9e",
         x86_64_linux: "8e95672e2c30af660276437a5253786b946bb0fe622c6a8b8b593a24d1355dc3"

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
