# guacamole-guacd

This project provides a custom Docker image for [Apache Guacamole guacd](https://guacamole.apache.org/), with enhanced font support for improved Unicode and emoji rendering.

## Features
- Based on `guacamole/guacd:1.5.5`
- Installs additional fonts for broad Unicode, CJK, and emoji support:
  - Noto (including CJK and Emoji)
  - DejaVu
- Suitable for remote desktop sessions requiring special symbols, emojis, and multilingual text rendering

## Usage

1. **Build the Docker image:**
   ```sh
   docker build -t custom-guacd .
   ```

2. **Run the container:**
   ```sh
   docker run -d --name guacd custom-guacd
   ```

3. **Connect your Guacamole web application to this guacd instance as usual.**

## Font Installation Details
The following font packages are installed:
- `font-noto`
- `font-noto-cjk`
- `font-noto-cjk-extra`
- `font-noto-emoji`
- `font-dejavu`

This ensures support for a wide range of scripts, symbols, and emojis.

## Customization
If you need additional fonts, you can modify the `Dockerfile` to install them as needed.

## License
This project inherits the license of the upstream `guacamole/guacd` image and the installed font packages.