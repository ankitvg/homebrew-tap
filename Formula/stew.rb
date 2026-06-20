class Stew < Formula
  desc "CLI for append-only markdown project memory ledgers"
  homepage "https://github.com/ankitvg/stew"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ankitvg/stew/releases/download/v#{version}/stew_v#{version}_darwin_arm64.tar.gz"
      sha256 "42924807b280e36a630071406422624d743e677c49adc6a678f2baaf18fdd262"
    end

    on_intel do
      url "https://github.com/ankitvg/stew/releases/download/v#{version}/stew_v#{version}_darwin_amd64.tar.gz"
      sha256 "563e28e75d96c4846c74bd7e0de21970888d73abd5fc04dd97c91b846a14c0ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ankitvg/stew/releases/download/v#{version}/stew_v#{version}_linux_arm64.tar.gz"
      sha256 "6db69a87bb4f32d486f5185b38d205e8c98a02b7df23f3a98949ae17ee57c865"
    end

    on_intel do
      url "https://github.com/ankitvg/stew/releases/download/v#{version}/stew_v#{version}_linux_amd64.tar.gz"
      sha256 "d11973fac5ef3ed93f1c73f98dadb56b128c7681c5605b41b0f372a73602054d"
    end
  end

  def install
    bin.install "stew"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/stew version")
  end
end
