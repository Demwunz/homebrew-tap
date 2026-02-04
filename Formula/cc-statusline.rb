class CcStatusline < Formula
  desc "Lightweight statusline for Claude Code showing context usage and costs"
  homepage "https://github.com/Demwunz/cc-statusline"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Demwunz/cc-statusline/releases/download/v0.3.0/cc-statusline-darwin-arm64"
      sha256 "00fad9ed8dc11f62c55efba094c7c5808716a7a9b3bb48211cbfaa0d97d4f00b"

      def install
        bin.install "cc-statusline-darwin-arm64" => "cc-statusline"
      end
    end

    on_intel do
      url "https://github.com/Demwunz/cc-statusline/releases/download/v0.3.0/cc-statusline-darwin-x86_64"
      sha256 "b89004e58ac2f25df603b438ee9517ba488a814b347df768df35137e4634551d"

      def install
        bin.install "cc-statusline-darwin-x86_64" => "cc-statusline"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cc-statusline --version")
  end
end
