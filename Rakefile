desc 'Build and deploy'
task :default do
	# Settings
	ssh_user = 'root@sparanoid.com'
	remote_root = '/srv/www/sparanoid.com/public_html/lab/7z'
	exclude_files = ''

	# Deploy
	puts '>>> Deploying to VPS'
	sh "jekyll --no-server --no-auto && rake minify && rsync -avz --delete #{exclude_files} _site/  #{ssh_user}:#{remote_root}"
	puts '>>> Deployed.'
end

desc 'Minified HTML'
task :minify do
  puts '>>> Minifying HTML'
  sh "java -jar _build/htmlcompressor.jar -r --type html --remove-intertag-spaces --remove-quotes --remove-http-protocol --remove-https-protocol --compress-js --compress-css -o _site _site"
  puts '>>> Minified.'
end