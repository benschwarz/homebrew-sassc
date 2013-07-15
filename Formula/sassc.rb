require 'formula'

class Sassc < Formula
  head 'https://github.com/hcatlin/sassc.git'

  def install
    system "rm -rf libsass"
    system "git clone --depth 1 https://github.com/hcatlin/libsass.git libsass"

    system "make"
    bin.install './bin/sassc'
  end
end
