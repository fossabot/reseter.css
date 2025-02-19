#!/bin/sh

echo "⏳ Compiling STYLUS..."
stylus src/stylus/reseter.styl -o build/stylus/reseter.css
echo "✅ Compiled STYLUS"
echo "⏳ Adding Vendor Prefixes..."
postcss build/stylus/reseter.css -r --no-map -u autoprefixer
echo "✅ Added Vendor Prefixes"
echo "⏳ Minifing Output"
cleancss build/stylus/reseter.css -o build/stylus/reseter.min.css
echo "✅ Minified Output"
echo "⏳ Compressing Output"
bundlewatch --max-size 3kb build/stylus/reseter.css build/stylus/reseter.min.css
echo "✅ Compressed Output"