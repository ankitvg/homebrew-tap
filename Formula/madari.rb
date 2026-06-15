class Madari < Formula
  desc "CLI tool to install, sync and manage local MCP servers"
  homepage "https://github.com/ankitvg/madari"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ankitvg/madari/releases/download/v#{version}/madari-darwin-arm64.tar.gz"
      sha256 "801cd28eb37624512288cfdacff79f0674983825022dfdbafa0a252d147739a7"
    else
      url "https://github.com/ankitvg/madari/releases/download/v#{version}/madari-darwin-amd64.tar.gz"
      sha256 "243c7aca97cd0028aaf27e1523b846e04ec04cd5a4c11a414f88bbf5b01753c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ankitvg/madari/releases/download/v#{version}/madari-linux-arm64.tar.gz"
      sha256 "bf8fc6ac44fe2fffeef8f5121271b75414165db4f70189ba23d3d29c46c7d12a"
    else
      url "https://github.com/ankitvg/madari/releases/download/v#{version}/madari-linux-amd64.tar.gz"
      sha256 "04e0f19d8bea237cc53116f6e96dd2bc3e12f8faa2333617d9582e2b0fabb4b6"
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
