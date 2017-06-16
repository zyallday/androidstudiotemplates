android{
	signingConfigs {
		release {
			storeFile file("keystores/${storeFileName}")
			keyAlias "${keyAlias}"
      		keyPassword "${keyPass}"
      		storePassword "${keyPass}"
		}
	}

	buildTypes {
		release {
			signingConfig signingConfigs.release
		}
	}
}