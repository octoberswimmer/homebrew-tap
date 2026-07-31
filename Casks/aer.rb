cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.28"
  sha256 arm:          "1425621e0fcf63bbb5e12cadd13c20f878dc7815f1685dfdceb790f81972b83f",
         x86_64:       "766e8e44ba0d457994353b2d740282c9bb8e85287ddd3a8ff49a9b76a0595648",
         arm64_linux:  "ccd9b7c89c6d1a206f01a5e607a44dc723d55fffe9bb857f512b2cbbacfade27",
         x86_64_linux: "deacec409a37d4a41b3c79c776c6a934bf505580854317661bd67eb6d0a2d5cd"

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
