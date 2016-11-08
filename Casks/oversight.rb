cask 'oversight' do
  version '1.0.0'
  sha256 'e20b7d91f4301f26236607e5c204286b1901cd138ae6c3a66865c09a95746bc5'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/OverSight_#{version}.zip"
  name 'Oversight'
  homepage 'https://objective-see.com/products/oversight.html'

  installer manual: 'Oversight_Installer.app'

  uninstall quit:       'com.objective-see.OverSightHelper',
            login_item: 'OverSight Helper',
            delete:     '/Applications/OverSight.app'

  zap delete: [
                '~/Library/Caches/com.objective-see.OverSight',
                '~/Library/Caches/com.objective-see.OverSightHelper',
                '~/Library/Preferences/com.objective-see.OverSight.plist',
              ]
end
