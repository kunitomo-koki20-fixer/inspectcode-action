FROM mcr.microsoft.com/dotnet/core/sdk:3.1

RUN curl -sf -o resharper-cli.zip -L "https://download.jetbrains.com/resharper/dotUltimate.2020.3/JetBrains.ReSharper.CommandLineTools.2020.3.zip" \
    && mkdir -p /resharper \
    && apt install unzip \
    && unzip resharper-cli.zip -d /resharper \
    && rm resharper-cli.zip

ENTRYPOINT [ "/resharper/inspectcode.sh" ]