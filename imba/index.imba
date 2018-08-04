

# ---------------------
# hack against tag duplication
# try to remove it and do several updates
if module:hot
    if document:body
        document:body:innerHTML = ''
    module:hot.accept
# ---------------------

console.log 'running'

tag Simple
    def setup
        @x = Math.floor(Math.random * 300)
        @y = Math.floor(Math.random * 300)
    def render
        <self.hello css:top="{@y}px" css:left="{@x}px"> 'Hello world'

Imba.mount <Simple>
