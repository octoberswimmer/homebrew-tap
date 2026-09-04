cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.0"
  sha256 arm:          "012370e11487c0214caf806a7d5d622af9ee44083822fa5f9de2bdcdbdbcaa70",
         x86_64:       "a3bb9a767994414b9cedf81d7ccb84df20554e00a4ec2e48fcf04e24e4435cce",
         arm64_linux:  "7245d0ab65b53afa21eb250d523cdcc6ddf0c1c2e9d36c0cefb33cf9be2e91e5",
         x86_64_linux: "72a280a812915d738def1355f51412fe6b047596b12b85879a7f6259c7cd5cf2"

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
