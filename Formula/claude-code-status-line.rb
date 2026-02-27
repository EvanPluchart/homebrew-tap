class ClaudeCodeStatusLine < Formula
  desc "Fully customizable, multi-line statusline for Claude Code"
  homepage "https://github.com/EvanPluchart/claude-code-status-line"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/EvanPluchart/claude-code-status-line/releases/download/v0.1.1/claude-code-status-line_0.1.1_darwin_arm64.tar.gz"
      sha256 "e47e2366ccf98d0b9ecc4de8e0d0d8828e985384ccb85e426eeee19e1354cfd8"
    end

    on_intel do
      url "https://github.com/EvanPluchart/claude-code-status-line/releases/download/v0.1.1/claude-code-status-line_0.1.1_darwin_amd64.tar.gz"
      sha256 "b7dd1652b0fefdf7654ff2afe6b169805ffd996390f37c83b1cc7c8ad4105625"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/EvanPluchart/claude-code-status-line/releases/download/v0.1.1/claude-code-status-line_0.1.1_linux_arm64.tar.gz"
      sha256 "4669ed80157d35e3f139e662e306e89c00103db27f24570b20ab2129290fabe5"
    end

    on_intel do
      url "https://github.com/EvanPluchart/claude-code-status-line/releases/download/v0.1.1/claude-code-status-line_0.1.1_linux_amd64.tar.gz"
      sha256 "d1fd4fe79ab694305fc09a0d28d7103ecf0e4353445eeee253b83945d15c3672"
    end
  end

  def install
    bin.install "claude-code-status-line"
  end

  test do
    assert_match "claude-code-status-line", shell_output("#{bin}/claude-code-status-line version")
  end
end
