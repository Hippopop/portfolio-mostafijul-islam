'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "888483df48293866f9f41d3d9274a779",
"icons/Icon-512.png": "5e2e4b1aa7bffb8320052e919542056f",
"icons/Icon-maskable-512.png": "0b9ad782a362b68113a222455285f8d0",
"icons/Icon-192.png": "3500ff668b6455ae78b4ff1d53eb29fa",
"icons/Icon-maskable-192.png": "00f74fe6e0bdb41d52d203cbf1703d5f",
"manifest.json": "79a23ff24ac3a5e2b9dc3505cd30acbe",
"loader/loading.json": "a2f50f8024da40fbc5fbf34fc5c99007",
"loader/loading.css": "677f84e2d1252a74a303fba6b5628c17",
"loader/loader.js": "71331c9066fcfb3579b218ce51e8b98f",
"index.html": "58fb951f3b1ac2eabbbe870f4238dfaa",
"/": "58fb951f3b1ac2eabbbe870f4238dfaa",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin.json": "ece33e2c9b0d74446df2c61f8182fae5",
"assets/assets/icons/ios.png": "ca0d25e20377334a3f44a53c234e4a04",
"assets/assets/icons/cursor.png": "c0e7706695db91279b5573adea56bb8a",
"assets/assets/icons/tools/mongodb.svg": "409452f1b3c56ada4efdcfbd39ff1142",
"assets/assets/icons/tools/kotlin.svg": "94e0a77ea6158d72c09683facdc057f5",
"assets/assets/icons/tools/nodejs.svg": "23a18bbb1377c88b2fcc15f321e18a66",
"assets/assets/icons/tools/react.svg": "f17203045e16b5a806505a0e22eaf79a",
"assets/assets/icons/tools/typescript.svg": "91cee51eb9e6aa7287cd239132bd6a5c",
"assets/assets/icons/tools/prisma.svg": "f21075ad83450dd3ebd37042f5db73f4",
"assets/assets/icons/tools/dart.svg": "20d7b82998ddc6f73a4310bf58e609df",
"assets/assets/icons/tools/github.svg": "2817ac0fd10ee1122e502fd5a141356d",
"assets/assets/icons/tools/flutter.svg": "5c3a6308a335872a831a9f836f0e236c",
"assets/assets/icons/tools/git.svg": "5eed2c8cb62e1adfae09b0129a25a1a7",
"assets/assets/icons/tools/python.svg": "4948e6764d2214fe0c09621c6defe06b",
"assets/assets/icons/tools/c++.svg": "1809715a30cb6e4f9ba81f0fbbd63098",
"assets/assets/icons/tools/php.svg": "c8ce6c54109cbc9d905fae27bb14819e",
"assets/assets/icons/tools/mysql.svg": "62e60e2dc16f54bcdeb17f9bc96bb393",
"assets/assets/icons/tools/svelte.svg": "0b3aeb6bbd80f307bfedd2aa1a372ccd",
"assets/assets/icons/tools/firebase.svg": "1da8d950e3f30a69d7c957c26238e1de",
"assets/assets/icons/tools/expressjs.svg": "4732f6bad0211edcf4346a276e030277",
"assets/assets/icons/web.png": "523950855f06d8f995d5a96faac2bc1a",
"assets/assets/icons/company.png": "3d592e8740ef5c6d835bf0c1df3ffe60",
"assets/assets/icons/callout.svg": "ec632b12d969d8a65a0615d642f2fc51",
"assets/assets/icons/github.png": "ce87167efa38fca6886c19c502b1e8c0",
"assets/assets/icons/android.png": "5e2ac48e68a49a55752c5ac7dca2e925",
"assets/assets/images/logo.png": "5e2e4b1aa7bffb8320052e919542056f",
"assets/assets/images/profile.jpeg": "9151a594b08364d6c2be153ee19c8f1a",
"assets/assets/animations/rive/position_flag.riv": "d8656be7493013ad8585ec18b7425bb5",
"assets/assets/animations/rive/face.riv": "3cc2413d84147204c5d8b74f6b4d095f",
"assets/fonts/MaterialIcons-Regular.otf": "4407c83bd8654993b17ca4ff12f54afa",
"assets/NOTICES": "1ea06a15155dab4e9cf9371a1609060d",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/AssetManifest.bin": "1a860a076740b7ffbe6f6f75fbcca7d8",
"assets/AssetManifest.json": "ad4d1aef9841e2c59f4d2c77c22b5975",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"favicon.png": "30205d5908ccb7c70a104cfb35a2555d",
"flutter_bootstrap.js": "a4e462b5097cfd79d1173c14e404e26a",
"version.json": "447e7a274eb6508114e9612ed7207f2e",
"main.dart.js": "a07d30e4220c5e9a4a96b1f71849c8ba"};
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
