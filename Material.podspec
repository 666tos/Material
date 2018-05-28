Pod::Spec.new do |s|
	s.name = 'Material'
	s.version = '2.14.0'
	s.license = 'BSD-3-Clause'
	s.summary = 'A UI/UX framework for creating beautiful applications.'
	s.homepage = 'http://cosmicmind.com'
	s.social_media_url = 'https://www.facebook.com/cosmicmindcom'
	s.authors = { 'CosmicMind, Inc.' => 'support@cosmicmind.com' }
 	s.source = { :git => 'https://github.com/CosmicMind/Material.git', :tag => s.version }

	s.default_subspec = 'Core'

    s.ios.deployment_target = "10.1"
    s.tvos.deployment_target = "10.1"

	s.subspec 'Core' do |s|
        s.ios.deployment_target = "10.1"
        s.tvos.deployment_target = "10.1"
		s.source_files = 'Sources/**/*.swift'
		s.requires_arc = true
		s.resource_bundles = {
			'com.cosmicmind.material.icons' => ['Sources/**/*.xcassets'],
			'com.cosmicmind.material.fonts' => ['Sources/**/*.ttf']
		}

		s.dependency 'Motion', '~> 1.4.0'
	end
end
