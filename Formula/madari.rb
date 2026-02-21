class Madari < Formula
  desc "CLI tool to install, sync and manage local MCP servers"
  homepage "https://github.com/ankitvg/madari"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ankitvg/madari/releases/download/v#{version}/madari-darwin-arm64.tar.gz"
      sha256 "6477467af95a83be895e36f33a78fe060b4aee313c1f9a4d7740fad61ae77128"
    else
      url "https://github.com/ankitvg/madari/releases/download/v#{version}/madari-darwin-amd64.tar.gz"
      sha256 "2985872f773c703cfff6834524ced32d91d1e842bb9afeee90a8a1ebbecf65ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ankitvg/madari/releases/download/v#{version}/madari-linux-arm64.tar.gz"
      sha256 "64b2118d1a5131b13aedd1485efba2c80cfae0403831bd13e470e74633e34d80"
    else
      url "https://github.com/ankitvg/madari/releases/download/v#{version}/madari-linux-amd64.tar.gz"
      sha256 "5f894807090ed60679162a08f087b227e0b9bb969f36a8f366c2fa48d3cfbf52"
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
