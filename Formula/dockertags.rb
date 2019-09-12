# This file was generated by GoReleaser. DO NOT EDIT.
class Dockertags < Formula
  desc "docker container tag viewer"
  homepage "https://github.com/goodwithtech/dockertags"
  version "0.0.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/goodwithtech/dockertags/releases/download/v0.0.4/dockertags_0.0.4_macOS-64bit.tar.gz"
    sha256 "efc8b0452319e870b9bc92ee1da6eda7937e69a8fd6bcdb3aa377f544b6ed647"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/goodwithtech/dockertags/releases/download/v0.0.4/dockertags_0.0.4_Linux-64bit.tar.gz"
      sha256 "5b877343bb56ca594fcc1ceec224b3041470c4915923d121a5b64e29ff0b9418"
    end
  end

  def install
    bin.install "dockertags"
  end

  test do
    system "#{bin}/program --version"
  end
end
