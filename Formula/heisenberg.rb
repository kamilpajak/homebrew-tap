# typed: false
# frozen_string_literal: true

class Heisenberg < Formula
  desc "AI-powered test failure analysis for GitHub repositories"
  homepage "https://github.com/kamilpajak/heisenberg"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kamilpajak/heisenberg/releases/download/v0.1.0/heisenberg_0.1.0_darwin_x86_64.tar.gz"
      sha256 "de6f3c56c323ac9e4ee328510030e21738d31d4e346013b5c93dad370b7243d9"
    end
    on_arm do
      url "https://github.com/kamilpajak/heisenberg/releases/download/v0.1.0/heisenberg_0.1.0_darwin_arm64.tar.gz"
      sha256 "9c3690ff48f926c4adf046928517eb4da9cf23ff3be719afc1fda025a2f94f36"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kamilpajak/heisenberg/releases/download/v0.1.0/heisenberg_0.1.0_linux_x86_64.tar.gz"
      sha256 "41a0ec081eaf04fe2e2482421eedf7f48e22f90057e396873b6260b80be90ca1"
    end
    on_arm do
      url "https://github.com/kamilpajak/heisenberg/releases/download/v0.1.0/heisenberg_0.1.0_linux_arm64.tar.gz"
      sha256 "478539a97520c91d43cdbf8f32e533a5606a04325bb2ca26a62b92f9eba90ff7"
    end
  end

  def install
    bin.install "heisenberg"
  end

  test do
    assert_match "heisenberg", shell_output("#{bin}/heisenberg --help")
  end
end
