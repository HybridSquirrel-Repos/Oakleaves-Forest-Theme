lua << EOF
package.loaded['forest'] = nil
package.loaded['forest.util'] = nil
package.loaded['forest.colors'] = nil
package.loaded['forest.theme'] = nil
package.loaded['forest.functions'] = nil

require('forest').set()
EOF
