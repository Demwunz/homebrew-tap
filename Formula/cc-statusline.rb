class CcStatusline < Formula
  desc "Lightweight statusline for Claude Code showing context usage and costs"
  homepage "https://github.com/Demwunz/cc-statusline"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Demwunz/cc-statusline/releases/download/v0.7.0/cc-statusline-darwin-arm64"
      sha256 "ba390aa63eb386d21e6f6901682d7674d795cbfded8559162a603e3c2dcd941b"

      def install
        bin.install "cc-statusline-darwin-arm64" => "cc-statusline"
      end
    end

    on_intel do
      url "https://github.com/Demwunz/cc-statusline/releases/download/v0.7.0/cc-statusline-darwin-x86_64"
      sha256 "8b6828e9e4b7855e881d6df5d82404b3ac17db7de1491307bed21a99606a2a27"

      def install
        bin.install "cc-statusline-darwin-x86_64" => "cc-statusline"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cc-statusline --version")
  end
end
