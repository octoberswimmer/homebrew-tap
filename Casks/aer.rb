cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.2.3"
  sha256 arm:          "be97ae176a8cd6d3f84e06c02ffe161ce918af54d72a50bb656cabcd8ab6c8f5",
         x86_64:       "167d11df675f54cda8bfc5d75e1e4a0cda0d443ff1eb88dbf38e2befd338c7d2",
         arm64_linux:  "4498a01acba575ea6dae2c41bea25f45a3147a153665d5c017c32bdf40d91bc6",
         x86_64_linux: "baad2ea393965645f66eb83b93476634afd44d421c1ab684481bdb7e0d623518"

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
