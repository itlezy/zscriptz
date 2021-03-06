echo "You sure?"
read

#find . -type d -name "*ache*" -exec basename {} \; | sort | uniq

find . -type f -name "\~*" -exec rm -f {} \;
find . -type f -name "*.tmp" -exec rm -f {} \;
find . -type f -name "*.com" -exec rm -f {} \;
find . -type f -name "*.exe" -exec rm -f {} \;
find . -type f -name "*.pak" -exec rm -f {} \;
find . -type f -name "*.dll" -exec rm -f {} \;
find . -type f -name "*.lck" -exec rm -f {} \;
find . -type f -name "*.msi" -exec rm -f {} \;
find . -type f -name "*.db" -exec rm -f {} \;
find . -type f -name "*.sth" -exec rm -f {} \;
find . -type f -name "*.css" -exec rm -f {} \;
find . -type f -name "*.js" -exec rm -f {} \;
find . -type f -name "*.json" -exec rm -f {} \;
find . -type f -name "Thumbs.db" -exec rm -f {} \;

find . -type d -name "ActionCenterCache" -exec rm -rf {} \;
find . -type d -name "Adobe" -exec rm -rf {} \;
find . -type d -name "AppCache" -exec rm -rf {} \;
find . -type d -name "Application Cache" -exec rm -rf {} \;
find . -type d -name "AssetCache" -exec rm -rf {} \;
find . -type d -name "AvatarsCache" -exec rm -rf {} \;
find . -type d -name "BingPageDataCache" -exec rm -rf {} \;
find . -type d -name "CacheWritableAdobeRoot" -exec rm -rf {} \;
find . -type d -name "CachedFiles" -exec rm -rf {} \;
find . -type d -name "Caches" -exec rm -rf {} \;
find . -type d -name "ComputeCache" -exec rm -rf {} \;
find . -type d -name "CryptnetUrlCache" -exec rm -rf {} \;
find . -type d -name "DeviceSearchCache" -exec rm -rf {} \;
find . -type d -name "EcsCache0" -exec rm -rf {} \;
find . -type d -name "Extensions" -exec rm -rf {} \;
find . -type d -name "Feeds Cache" -exec rm -rf {} \;
find . -type d -name "File System" -exec rm -rf {} \;
find . -type d -name "GLCache" -exec rm -rf {} \;
find . -type d -name "GPUCache" -exec rm -rf {} \;
find . -type d -name "GrShaderCache" -exec rm -rf {} \;
find . -type d -name "IECompatCache" -exec rm -rf {} \;
find . -type d -name "IECompatUACache" -exec rm -rf {} \;
find . -type d -name "IECompatUaCache" -exec rm -rf {} \;
find . -type d -name "INetCache" -exec rm -rf {} \;
find . -type d -name "ImageCache" -exec rm -rf {} \;
find . -type d -name "Internet Explorer" -exec rm -rf {} \;
find . -type d -name "IndexedDB" -exec rm -rf {} \;
find . -type d -name "LocalCache" -exec rm -rf {} \;
find . -type d -name "NativeCache" -exec rm -rf {} \;
find . -type d -name "OfflineCache" -exec rm -rf {} \;
find . -type d -name "PRICache" -exec rm -rf {} \;
find . -type d -name "PnaclTranslationCache" -exec rm -rf {} \;
find . -type d -name "ScriptCache" -exec rm -rf {} \;
find . -type d -name "ShaderCache" -exec rm -rf {} \;
find . -type d -name "SystemCache" -exec rm -rf {} \;
find . -type d -name "TargetedContentCache" -exec rm -rf {} \;
find . -type d -name "WebCache" -exec rm -rf {} \;
find . -type d -name "WebServiceCache" -exec rm -rf {} \;
find . -type d -name "cache2" -exec rm -rf {} \;
find . -type d -name "cachestr" -exec rm -rf {} \;
find . -type d -name "ecache" -exec rm -rf {} \;
find . -type d -name "emo_cache" -exec rm -rf {} \;
find . -type d -name "jumpListCache" -exec rm -rf {} \;
find . -type d -name "media_cache_v2" -exec rm -rf {} \;
find . -type d -name "onlinethumbnailcache" -exec rm -rf {} \;
find . -type d -name "perUserCache_0" -exec rm -rf {} \;
find . -type d -name "shader-cache" -exec rm -rf {} \;
find . -type d -name "simcache" -exec rm -rf {} \;
find . -type d -name "Shockwave Flash" -exec rm -rf {} \;
find . -type d -name "startupCache" -exec rm -rf {} \;
find . -type d -name "sumatrapdfcache" -exec rm -rf {} \;
find . -type d -name "Code Cache" -exec rm -rf {} \;
find . -type d -name "INetCache" -exec rm -rf {} \;
find . -type d -name "Cache" -exec rm -rf {} \;
find . -type d -name "Local Storage" -exec rm -rf {} \;
find . -type d -name "Storage" -exec rm -rf {} \;
find . -type d -name "Content.IE5" -exec rm -rf {} \;
find . -type d -name "CacheStorage" -exec rm -rf {} \;
find . -type d -name "SharedCacheContainers" -exec rm -rf {} \;
find . -type d -name "AppIconCache" -exec rm -rf {} \;
find . -type d -name "History" -exec rm -rf {} \;
find . -type d -name "CryptnetUrlCache" -exec rm -rf {} \;
find . -type d -name "ImageCache" -exec rm -rf {} \;
find . -type d -name "sumatrapdfcache" -exec rm -rf {} \;
find . -type d -name "htmlcache" -exec rm -rf {} \;
find . -type d -name "safebrowsing" -exec rm -rf {} \;
find . -type d -name "Cookies" -exec rm -rf {} \;
find . -type d -name "RemEngine" -exec rm -rf {} \;
find . -type d -name "Macromedia" -exec rm -rf {} \;
find . -type d -name "Flash Player" -exec rm -rf {} \;
find . -type d -name "cache" -exec rm -rf {} \;
find . -type d -name "tmp"   -exec rm -rf {} \;
find . -type d -name "tmp*"   -exec rm -rf {} \;
find . -type d -name "Temp"  -exec rm -rf {} \;
find . -type d -name "Temp*"  -exec rm -rf {} \;
find . -type d -name "WER"  -exec rm -rf {} \;

# find . -type d -name "Application Data"  -exec rm -rf {} \;
# find . -type d -name "Local Settings"    -exec rm -rf {} \;

find . -type d -empty           -exec rmdir {} \;
find . -type d -empty           -exec rmdir {} \;
find . -type d -empty           -exec rmdir {} \;
find . -type d -empty           -exec rmdir {} \;
find . -type d -empty           -exec rmdir {} \;
find . -type d -empty           -exec rmdir {} \;
find . -type d -empty           -exec rmdir {} \;
find . -type d -empty           -exec rmdir {} \;
find . -type d -empty           -exec rmdir {} \;
find . -type d -empty           -exec rmdir {} \;
