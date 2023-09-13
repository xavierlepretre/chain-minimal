FROM --platform=linux golang:1.21

# Substitute BIN for your bin directory.
# Substitute VERSION for the current released version.
ENV BIN="/usr/local/bin"
ENV VERSION="1.26.1"
RUN curl -sSL "https://github.com/bufbuild/buf/releases/download/v${VERSION}/buf-$(uname -s)-$(uname -m)" -o "${BIN}/buf"
RUN chmod +x "${BIN}/buf"
