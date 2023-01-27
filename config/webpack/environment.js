const { environment } = require('@rails/webpacker')
const webpack = require('webpack')
environment.plugincs.append('provider',
	new.webpack.ProviderPlugin({
		$:'jquery',
		jQuery:'jquery',
		Popper:['popper.js','default']
	}))
module.exports = environment
