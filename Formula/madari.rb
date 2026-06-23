class Madari < Formula
  desc "CLI tool to install, sync and manage local MCP servers"
  homepage "https://github.com/ankitvg/madari"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ankitvg/madari/releases/download/v#{version}/madari-darwin-arm64.tar.gz"
      sha256 "1895c4cc9d30bb35f898ff365a21b6de8a8c6bf7d6dcb49724d70242b45fdcdf"
    else
      url "https://github.com/ankitvg/madari/releases/download/v#{version}/madari-darwin-amd64.tar.gz"
      sha256 "9fad0604e634528a9f6406fa68eca36e464cbedb9d9a7a4a6db120872cec8e88"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ankitvg/madari/releases/download/v#{version}/madari-linux-arm64.tar.gz"
      sha256 "d852ba033d1c6c5ac2ffd290f88ab8a173ec9d31b64dfd1a0e668f846cb1d8ab"
    else
      url "https://github.com/ankitvg/madari/releases/download/v#{version}/madari-linux-amd64.tar.gz"
      sha256 "c1718b2ef28ab9778e8f718af09baa538b56ba339bca3741b4362e1359c10122"
    end
  end

  def install
    bin.install "madari"
    prefix.install "LICENSE"
    doc.install "README.md"
  end

  test do
    assert_match "madari - local MCP manager", shell_output("#{bin}/madari --help")
  end
end
