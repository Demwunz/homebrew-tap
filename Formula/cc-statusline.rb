class CcStatusline < Formula
  desc "Lightweight statusline for Claude Code showing context usage and costs"
  homepage "https://github.com/Demwunz/cc-statusline"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Demwunz/cc-statusline/releases/download/v0.4.0/cc-statusline-darwin-arm64"
      sha256 "e17a2e64ed67bc1f696e6f3ab716559c4deea568984465b3b29b5bff0c0e8f2c"

      def install
        bin.install "cc-statusline-darwin-arm64" => "cc-statusline"
      end
    end

    on_intel do
      url "https://github.com/Demwunz/cc-statusline/releases/download/v0.4.0/cc-statusline-darwin-x86_64"
      sha256 "48f71ae010b602ae2614c35220a79500093a15b535632fd1bb1fb836dc7488bf"

      def install
        bin.install "cc-statusline-darwin-x86_64" => "cc-statusline"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cc-statusline --version")
  end
end
