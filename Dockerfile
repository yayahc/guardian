FROM dart:3.8.0 AS build
WORKDIR /app

COPY ./guardian .
RUN dart pub get
RUN dart compile exe ./bin/guardian.dart -o ./guardian

FROM scratch
COPY --from=build /runtime/ /
COPY --from=build /app/guardian /app/

HEALTHCHECK --interval=10m --timeout=30s --start-period=30s --retries=3 CMD dart healthcheck.dart
EXPOSE 8080

CMD ["/app/guardian"]
