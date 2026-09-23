cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.14"
  sha256 arm:          "66c6c812d41f8e120409748899ea7e01040dcfd3d6b83f7090a7e425541f326b",
         x86_64:       "4dba76f16751a258a44580036d134073496eef6d724da3b9c3a782c923ed5ab2",
         arm64_linux:  "0018f844d8f8b32c38b73d12a50b765aae24096211a9ac30a91293eece0da276",
         x86_64_linux: "f53e4d912589e801cbd621daab31a504f89c54faf90a34b9d814192d98e79b8f"

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
