require 'formula'

class LibsassHead < Formula
  homepage 'https://github.com/hcatlin/libsass'
  head 'https://github.com/hcatlin/libsass.git'

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end
