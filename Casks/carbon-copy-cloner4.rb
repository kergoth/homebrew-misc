cask 'carbon-copy-cloner4' do
  version '4.1.21.4630'
  sha256 'f8a42131aee64705550a018e870a2e70a7b88680121702454f20225bb246d456'

  url "https://bombich.com/software/download_ccc.php?v=#{version}"
  name 'Carbon Copy Cloner 4'
  homepage 'https://bombich.com/'

  app 'Carbon Copy Cloner.app'

  uninstall login_item: 'CCC User Agent',
            quit:       [
                          'com.bombich.ccc',
                          'com.bombich.cccuseragent',
                        ]

  zap delete: [
                '~/Library/Caches/com.bombich.ccc',
                '~/Library/Saved Application State/com.bombich.ccc.savedState',
              ],
      trash:  [
                '~/Library/Application Support/com.bombich.ccc',
                '~/Library/Preferences/com.bombich.ccc.plist',
              ]
end
