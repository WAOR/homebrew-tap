class Tgeraser < Formula
  desc "Delete all your Telegram messages without admin privileges"
  homepage "https://github.com/WAOR/go-tgeraser"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/WAOR/go-tgeraser/releases/download/v0.4.0/tgeraser-darwin-arm64"
      sha256 "6393a525b7d8ae5da19479362338a2deab0e8ac409754142386668df79b92be4"
    else
      url "https://github.com/WAOR/go-tgeraser/releases/download/v0.4.0/tgeraser-darwin-amd64"
      sha256 "4e8f39adf304d7fc9661fea8328578d3eb97dd156734df4c9602f6783885bc0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/WAOR/go-tgeraser/releases/download/v0.4.0/tgeraser-linux-arm64"
      sha256 "56c72f7a92c2d4669e478bb4c0f25509346142fed72af5942073b7333e72bc53"
    else
      url "https://github.com/WAOR/go-tgeraser/releases/download/v0.4.0/tgeraser-linux-amd64"
      sha256 "bcf6b3a1e11d3d65d083e250298135ae3888f64b4f97a07024569bc06c9d7331"
    end
  end

  def install
    binary = Dir["tgeraser*"].first
    bin.install binary => "tgeraser"
  end

  test do
    assert_match "tgeraser version", shell_output("#{bin}/tgeraser --version")
  end
end
