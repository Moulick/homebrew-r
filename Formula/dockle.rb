# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dockle < Formula
  desc "Simple security auditing, helping build the Best Docker Images"
  homepage "https://github.com/goodwithtech/dockle"
  version "0.3.13"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/goodwithtech/dockle/releases/download/v0.3.13/dockle_0.3.13_macOS-64bit.tar.gz"
    sha256 "06f55ee278f8bf2537398692c36a90a3ca300a599cc4ea8323486cf2db9425bc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/goodwithtech/dockle/releases/download/v0.3.13/dockle_0.3.13_macOS-ARM64.tar.gz"
    sha256 "b55daf11c82eeea2c6b8eca24b984aec2125804b27434d81f8e2407deab1b4a0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/goodwithtech/dockle/releases/download/v0.3.13/dockle_0.3.13_Linux-64bit.tar.gz"
    sha256 "52595423f77325a833752ea910c6c1d4c9de54296c2f9eab93b3806488bd3d4a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/goodwithtech/dockle/releases/download/v0.3.13/dockle_0.3.13_Linux-ARM64.tar.gz"
    sha256 "c3773c0c1eac221f4fb11638e3a8ab2eed29aa6b344887d817dccc8bc7b7e6a3"
  end

  def install
    bin.install "dockle"
  end

  test do
    system "#{bin}/program --version"
  end
end
