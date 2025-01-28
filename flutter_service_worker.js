'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"loader/loading.json": "a2f50f8024da40fbc5fbf34fc5c99007",
"loader/loading.css": "677f84e2d1252a74a303fba6b5628c17",
"loader/loader.js": "71331c9066fcfb3579b218ce51e8b98f",
"icons/Icon-maskable-192.png": "00f74fe6e0bdb41d52d203cbf1703d5f",
"icons/Icon-512.png": "5e2e4b1aa7bffb8320052e919542056f",
"icons/Icon-192.png": "3500ff668b6455ae78b4ff1d53eb29fa",
"icons/Icon-maskable-512.png": "0b9ad782a362b68113a222455285f8d0",
"version.json": "447e7a274eb6508114e9612ed7207f2e",
"flutter_bootstrap.js": "ca022b49f83af9164c5cbcfc39054241",
"manifest.json": "79a23ff24ac3a5e2b9dc3505cd30acbe",
"main.dart.js": "2f602d55b04558df4fe900c9dd01cbf9",
"index.html": "58fb951f3b1ac2eabbbe870f4238dfaa",
"/": "58fb951f3b1ac2eabbbe870f4238dfaa",
"assets/AssetManifest.json": "ad4d1aef9841e2c59f4d2c77c22b5975",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/fonts/MaterialIcons-Regular.otf": "3affefccbff8d575d65c7fa4328f3f58",
"assets/AssetManifest.bin": "1a860a076740b7ffbe6f6f75fbcca7d8",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/AssetManifest.bin.json": "ece33e2c9b0d74446df2c61f8182fae5",
"assets/NOTICES": "e52af88263c3f723481e00ac350336bb",
"assets/assets/animations/rive/face.riv": "3cc2413d84147204c5d8b74f6b4d095f",
"assets/assets/animations/rive/position_flag.riv": "d8656be7493013ad8585ec18b7425bb5",
"assets/assets/icons/company.png": "3d592e8740ef5c6d835bf0c1df3ffe60",
"assets/assets/icons/github.png": "ce87167efa38fca6886c19c502b1e8c0",
"assets/assets/icons/cursor.png": "c0e7706695db91279b5573adea56bb8a",
"assets/assets/icons/tools/c++.svg": "1809715a30cb6e4f9ba81f0fbbd63098",
"assets/assets/icons/tools/github.svg": "2817ac0fd10ee1122e502fd5a141356d",
"assets/assets/icons/tools/mysql.svg": "62e60e2dc16f54bcdeb17f9bc96bb393",
"assets/assets/icons/tools/git.svg": "5eed2c8cb62e1adfae09b0129a25a1a7",
"assets/assets/icons/tools/dart.svg": "20d7b82998ddc6f73a4310bf58e609df",
"assets/assets/icons/tools/kotlin.svg": "94e0a77ea6158d72c09683facdc057f5",
"assets/assets/icons/tools/nodejs.svg": "23a18bbb1377c88b2fcc15f321e18a66",
"assets/assets/icons/tools/typescript.svg": "91cee51eb9e6aa7287cd239132bd6a5c",
"assets/assets/icons/tools/python.svg": "4948e6764d2214fe0c09621c6defe06b",
"assets/assets/icons/tools/mongodb.svg": "409452f1b3c56ada4efdcfbd39ff1142",
"assets/assets/icons/tools/svelte.svg": "0b3aeb6bbd80f307bfedd2aa1a372ccd",
"assets/assets/icons/tools/react.svg": "f17203045e16b5a806505a0e22eaf79a",
"assets/assets/icons/tools/expressjs.svg": "4732f6bad0211edcf4346a276e030277",
"assets/assets/icons/tools/flutter.svg": "5c3a6308a335872a831a9f836f0e236c",
"assets/assets/icons/tools/firebase.svg": "1da8d950e3f30a69d7c957c26238e1de",
"assets/assets/icons/tools/prisma.svg": "f21075ad83450dd3ebd37042f5db73f4",
"assets/assets/icons/tools/php.svg": "c8ce6c54109cbc9d905fae27bb14819e",
"assets/assets/icons/ios.png": "ca0d25e20377334a3f44a53c234e4a04",
"assets/assets/icons/callout.svg": "ec632b12d969d8a65a0615d642f2fc51",
"assets/assets/icons/android.png": "5e2ac48e68a49a55752c5ac7dca2e925",
"assets/assets/icons/web.png": "523950855f06d8f995d5a96faac2bc1a",
"assets/assets/images/logo.png": "5e2e4b1aa7bffb8320052e919542056f",
"assets/assets/images/profile.jpeg": "9151a594b08364d6c2be153ee19c8f1a",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"favicon.png": "30205d5908ccb7c70a104cfb35a2555d"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
