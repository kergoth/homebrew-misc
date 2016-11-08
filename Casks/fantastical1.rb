cask 'fantastical1' do
  version '1.3.19'
  sha256 'a0c8f05072c686aeedd79640ceb887a2b07d6c1f6378b88e53ecdbcd2cb26eec'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast.php',
          :sha256 => '3d789ff8dd91c8ebc1b63d2811ec17e0a950433b03605d8c10eef010733cf79a'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'
  license :freemium

  app 'Fantastical.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
