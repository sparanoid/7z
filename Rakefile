desc 'Build and deploy'
task :default do
  sh 'jekyll --no-server --no-auto && rsync -avz --delete --exclude=a.css _site/ root@sparanoid.com:/srv/www/sparanoid.com/public_html/lab/7z'
end