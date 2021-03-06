class RbenvRuby231 < FPM::Cookery::Recipe

  homepage 'https://www.ruby-lang.org/'
  name 'rbenv-ruby-2.3.5'
  version '1'

  source "https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.5.tar.gz"
  sha256 '5462f7bbb28beff5da7441968471ed922f964db1abdce82b8860608acc23ddcc'

  maintainer 'GOV.UK <govuk-dev@digital.cabinet-office.gov.uk>'
  license 'Ruby'

  build_depends 'autoconf', 'bison', 'build-essential', 'libssl-dev',
                'libyaml-dev', 'libreadline6-dev', 'zlib1g-dev',
                'libncurses5-dev', 'libffi-dev', 'libgdbm3', 'libgdbm-dev'

  depends 'rbenv', 'libssl1.0.0', 'libyaml-0-2', 'libreadline6', 'zlib1g',
          'libncurses5', 'libffi6', 'libgdbm3', 'libtinfo5'

  section 'interpreters'
  description 'Ruby version for use with rbenv
Specific version of Ruby for use with a system install of rbenv.'

  def build
    configure prefix: '/usr/lib/rbenv/versions/2.3.5'
    make
  end

  def install
    make :install, 'DESTDIR' => destdir
  end
end
