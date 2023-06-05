get(){
  git clone https://github.com/apache/beam-starter-typescript.git

}
build(){
  npm install
  npm run build
  node dist/src/main.js --input_text="Greetings"
}
$@
