class CcStatusline < Formula
  desc "Lightweight statusline for Claude Code showing context usage and costs"
  homepage "https://github.com/Demwunz/cc-statusline"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Demwunz/cc-statusline/releases/download/v0.4.0/cc-statusline-darwin-arm64"
      sha256 "fbaaa57d5176765fdc5885752f5c35f9dea09452878006302d11a6f36473e16b"

      def install
        bin.install "cc-statusline-darwin-arm64" => "cc-statusline"
      end
    end

    on_intel do
      url "https://github.com/Demwunz/cc-statusline/releases/download/v0.4.0/cc-statusline-darwin-x86_64"
      sha256 "1e6b00f56ece1931dde3ad6288703242e6146ab8a7bd9deb3cbebd826dd91950"

      def install
        bin.install "cc-statusline-darwin-x86_64" => "cc-statusline"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cc-statusline --version")
  end
end
