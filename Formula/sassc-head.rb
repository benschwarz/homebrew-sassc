require 'formula'

class SasscHead < Formula
  homepage ''
  head 'https://github.com/hcatlin/sassc.git'

  depends_on "libsass-head"

  def install
    system "make"
    bin.install './bin/sassc'
  end

  test do
    system "#{bin}/sassc", "-h"
  end
end
