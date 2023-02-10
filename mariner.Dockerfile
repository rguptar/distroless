FROM mcr.microsoft.com/cbl-mariner/base/core:2.0 as build-env
RUN tdnf upgrade -y \ 
    && tdnf install ca-certificates-microsoft -y \
    && tdnf clean all
RUN tdnf install -y nodejs
COPY . /app
WORKDIR /app
RUN npm ci --omit=dev

FROM mcr.microsoft.com/cbl-mariner/distroless/debug:2.0
COPY --from=build-env /app /app
WORKDIR /app
CMD ["/app/index.js"]