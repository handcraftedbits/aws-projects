cd ${repo_dir}/postprocess
npm install
gulp

# Fix resume PDF and publish site.

./node_modules/.bin/http-server ${repo_dir}/public &

npm run export-pdf http://localhost:8080/resume ../public/resume-cjh-public
rm -rf ../public/resume.html