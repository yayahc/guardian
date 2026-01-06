FROM dart:3.8.0 AS build
WORKDIR /app

COPY ./shield .
RUN dart pub get
RUN dart compile exe ./bin/shield.dart -o ./shield

FROM scratch
COPY --from=build /runtime/ /
COPY --from=build /app/shield /app/

HEALTHCHECK --interval=10m --timeout=30s --start-period=30s --retries=3 CMD dart healthcheck.dart
EXPOSE 8080

CMD ["/app/shield"]
