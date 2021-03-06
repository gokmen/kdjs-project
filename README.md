# kdjs-project: yet another kd.js project

## Getting Started

After cloning the repo, cd into `kdjs-project` directory and do;

```
  $ npm install
  $ gulp # if not installed before; npm install -g gulp
```

This will open your browser with `localhost:9000` and you should see the `kdjs-project` project alive \o/

## Updating Code

You can then update the code with your favourite editor (like Vim), all changes will be automatically applied to all open browsers, on code changes like updating `app/src/app.coffee` will trigger `compiler` first and sends `reload` event to all open browsers. If you change any style like `app/styl/app.styl` it will be streamed to open browsers and will take effect without reloading. All the compiled code and styles are in `dist` folder which is generated by builder.

## File Structure

```
  ├── LICENSE                        # LICENSE file (MIT)
  ├── README.md                      # this file for generic README data
  ├── app                            # main app folder
  │   ├── images                     # images folder, includes standart icons
  │   │   ├── apple-touch-icon.png
  │   │   └── favicon.ico
  │   ├── index.html                 # entry point for your web app
  │   ├── src
  │   │   └── app.coffee             # main app source code
  │   └── styl
  │       └── app.styl               # main app style file
  ├── gulpfile.coffee                # gulp recipe
  └── package.json                   # npm packages
```

## Using a custom package

Just install package in your root folder, as you do with `npm`

```
  $ npm install some_cool_package --save
```

Then in your code just `require` it, browserify will do the rest;

```coffee
  cool = require 'some_cool_package'
```

## Production

By default while developing there is no minify or uglify process happening but for production environments to reduce the file sizes we need to tell builder (gulp) to generate output for production;

```
  $ gulp production
```

This will clean existing compiled files first then build everything for production. You can use the `./dist` folder to deploy your app, all the required files are in that folder, production ready.

## License

MIT
