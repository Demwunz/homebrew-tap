class CcStatusline < Formula
  desc "Lightweight statusline for Claude Code showing context usage and costs"
  homepage "https://github.com/Demwunz/cc-statusline"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Demwunz/cc-statusline/releases/download/v0.5.0/cc-statusline-darwin-arm64"
      sha256 "bbf0a8bd746e6711243d092e7c6377e8ce74cfb08e08ecf796234b24b445efad"

      def install
        bin.install "cc-statusline-darwin-arm64" => "cc-statusline"
      end
    end

    on_intel do
      url "https://github.com/Demwunz/cc-statusline/releases/download/v0.5.0/cc-statusline-darwin-x86_64"
      sha256 "49ef392f2f7709b25943f9280589a68b2297c2c145b26a869028f4e9221fb542"

      def install
        bin.install "cc-statusline-darwin-x86_64" => "cc-statusline"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cc-statusline --version")
  end
end
