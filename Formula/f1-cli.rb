# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class F1Cli < Formula
  desc "UDP Data Dumper for Formula 1 game"
  homepage "https://github.com/racing-telemetry"
  version "0.0.1-rc.2"
  license "Apache"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/racing-telemetry/f1-cli/releases/download/v0.0.1-rc.2/f1-cli_Darwin_arm64.tar.gz"
      sha256 "a781f392f6bcad1201620b18a78dce1c2a998841891b37a9814816921d7d313d"

      def install
        bin.install "f1"
        bash_completion.install "completions/f1.bash" => "f1"
        zsh_completion.install "completions/f1.zsh" => "_f1"
        fish_completion.install "completions/f1.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/racing-telemetry/f1-cli/releases/download/v0.0.1-rc.2/f1-cli_Darwin_x86_64.tar.gz"
      sha256 "f8c6c0fdbc0e8ff7b7b9f31426abbe86dd8aa08e5587827316be374c81a4b360"

      def install
        bin.install "f1"
        bash_completion.install "completions/f1.bash" => "f1"
        zsh_completion.install "completions/f1.zsh" => "_f1"
        fish_completion.install "completions/f1.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/racing-telemetry/f1-cli/releases/download/v0.0.1-rc.2/f1-cli_Linux_armv7.tar.gz"
      sha256 "2bd4d8a6edbe0cab60f4c4d285fd4865e722eb18fa637ebfa8f38c11ca24ed92"

      def install
        bin.install "f1"
        bash_completion.install "completions/f1.bash" => "f1"
        zsh_completion.install "completions/f1.zsh" => "_f1"
        fish_completion.install "completions/f1.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/racing-telemetry/f1-cli/releases/download/v0.0.1-rc.2/f1-cli_Linux_arm64.tar.gz"
      sha256 "82b4a31147c593a93aa4c6c06d47a5859fbca5784bd3943c07da11311ce15a74"

      def install
        bin.install "f1"
        bash_completion.install "completions/f1.bash" => "f1"
        zsh_completion.install "completions/f1.zsh" => "_f1"
        fish_completion.install "completions/f1.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/racing-telemetry/f1-cli/releases/download/v0.0.1-rc.2/f1-cli_Linux_x86_64.tar.gz"
      sha256 "809bce9f838e312673a339b44accb944f0130b577429484538a02d87658e9d21"

      def install
        bin.install "f1"
        bash_completion.install "completions/f1.bash" => "f1"
        zsh_completion.install "completions/f1.zsh" => "_f1"
        fish_completion.install "completions/f1.fish"
      end
    end
  end

  depends_on "go" => :optional

  test do
    system "#{bin}/f1 version"
  end
end
