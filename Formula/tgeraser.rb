class Tgeraser < Formula
  desc "Delete all your Telegram messages without admin privileges"
  homepage "https://github.com/WAOR/go-tgeraser"
  license "MIT"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/WAOR/go-tgeraser/releases/download/v0.5.0/tgeraser-darwin-arm64"
      sha256 "6f6f8e65ade7a3e5a15ac00d6ddf9472d85eaa650cd166d6c4188fe5f03e122f"
    else
      url "https://github.com/WAOR/go-tgeraser/releases/download/v0.5.0/tgeraser-darwin-amd64"
      sha256 "5bfca5297e1418736cb75fbac933c634a375690f93f035bdf9dbb2067e6c0163"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/WAOR/go-tgeraser/releases/download/v0.5.0/tgeraser-linux-arm64"
      sha256 "b2e7dcec30b109de1aee3e7302262ba1b264f276c33bbcb6d993ba3d9a1ba491"
    else
      url "https://github.com/WAOR/go-tgeraser/releases/download/v0.5.0/tgeraser-linux-amd64"
      sha256 "a89ecbabc4717487661aab543b3572e4a0473470e29c187b8ce1fb7d2a553f0e"
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
