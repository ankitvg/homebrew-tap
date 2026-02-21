class Madari < Formula
  desc "CLI tool to install, sync and manage local MCP servers"
  homepage "https://github.com/ankitvg/madari"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ankitvg/madari/releases/download/v#{version}/madari-darwin-arm64.tar.gz"
      sha256 "08bb19dce5a089de713b644e5d49e4fad3e29623e8ce3e2305d27c0ab5147902"
    else
      url "https://github.com/ankitvg/madari/releases/download/v#{version}/madari-darwin-amd64.tar.gz"
      sha256 "e0453a7f8b92464167398d36bc851838d82be7f8e80424116565d425977bb5df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ankitvg/madari/releases/download/v#{version}/madari-linux-arm64.tar.gz"
      sha256 "2e73f6d7b5517f0bad6b02cd94c23f64b58e9200a5f7edfb87c98165e37534de"
    else
      url "https://github.com/ankitvg/madari/releases/download/v#{version}/madari-linux-amd64.tar.gz"
      sha256 "0234625073dbf831bc0e1df765dba1b7238d449666e713e80da68429bccdb8a9"
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
