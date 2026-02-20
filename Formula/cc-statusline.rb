class CcStatusline < Formula
  desc "Lightweight statusline for Claude Code showing context usage and costs"
  homepage "https://github.com/Demwunz/cc-statusline"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Demwunz/cc-statusline/releases/download/v0.7.1/cc-statusline-darwin-arm64"
      sha256 "06df5592a3ababd09e1c622b5a80a2d057b9a123ec25d95f65f6bb8c587412b4"

      def install
        bin.install "cc-statusline-darwin-arm64" => "cc-statusline"
      end
    end

    on_intel do
      url "https://github.com/Demwunz/cc-statusline/releases/download/v0.7.1/cc-statusline-darwin-x86_64"
      sha256 "bbcaf8cba43134929b456701c447c5bfd93f2fd4081f948bb1400c0a33559ce8"

      def install
        bin.install "cc-statusline-darwin-x86_64" => "cc-statusline"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cc-statusline --version")
  end
end
