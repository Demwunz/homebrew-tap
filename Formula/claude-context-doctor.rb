class ClaudeContextDoctor < Formula
  desc "Diagnostic TUI tool for Claude Code context management"
  homepage "https://github.com/Demwunz/claude-context-doctor"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Demwunz/claude-context-doctor/releases/download/v0.1.0/claude-context-doctor-macos-x86_64.tar.gz"
      sha256 "PLACEHOLDER_X86_64"
    end
    on_arm do
      url "https://github.com/Demwunz/claude-context-doctor/releases/download/v0.1.0/claude-context-doctor-macos-aarch64.tar.gz"
      sha256 "PLACEHOLDER_AARCH64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Demwunz/claude-context-doctor/releases/download/v0.1.0/claude-context-doctor-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_X86_64"
    end
    on_arm do
      url "https://github.com/Demwunz/claude-context-doctor/releases/download/v0.1.0/claude-context-doctor-linux-aarch64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_AARCH64"
    end
  end

  def install
    bin.install "claude-context-doctor"
  end

  test do
    assert_match "Claude Context Doctor", shell_output("#{bin}/claude-context-doctor --help")
  end
end
