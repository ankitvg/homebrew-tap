class Madari < Formula
  desc "CLI tool to install, sync and manage local MCP servers"
  homepage "https://github.com/ankitvg/madari"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ankitvg/madari/releases/download/v#{version}/madari-darwin-arm64.tar.gz"
      sha256 "c355f99b1db1fcce53b3dd0e4a703f0ea8eef000b9e6dcbc53aa57a92e32d0ca"
    else
      url "https://github.com/ankitvg/madari/releases/download/v#{version}/madari-darwin-amd64.tar.gz"
      sha256 "94e4146780c2fc41437f94c9225fcca0411d19a0e95f16616c1e063ff5161969"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ankitvg/madari/releases/download/v#{version}/madari-linux-arm64.tar.gz"
      sha256 "fcd9fd3b9858d34115b3bf55b9b3dc62b88230daddccd1cec521c1140ff8836a"
    else
      url "https://github.com/ankitvg/madari/releases/download/v#{version}/madari-linux-amd64.tar.gz"
      sha256 "34ee61bfb9def0ff8f670b5009cb65406543cb93e0f9636d438e2ab396ec4f91"
    end
  end

  def install
    bin.install "madari"
    prefix.install "LICENSE"
    doc.install "README.md"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/madari --help")
  end
end
