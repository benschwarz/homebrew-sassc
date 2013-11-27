require 'formula'

class Sassc < Formula
  head 'https://github.com/hcatlin/sassc.git'
  homepage 'https://github.com/hcatlin/sassc'
  
  resource 'libsass' do
    url 'https://github.com/hcatlin/libsass/archive/master.tar.gz'
  end

  def install
    (buildpath/'libsass').install resource('libsass')

    ENV['SASS_LIBSASS_PATH'] = (buildpath/'libsass')

    system "make"
    bin.install (buildpath/'bin'/'sassc')
  end
end
