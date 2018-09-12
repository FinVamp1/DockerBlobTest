FROM microsoft/azure-functions-node8:2.0
ENV AzureWebJobsScriptRoot=/home/site/wwwroot
ENV consoleLoggingMode=always
ENV AzureWebJobsStorage=DefaultEndpointsProtocol=https;AccountName=testfinlocaldev;AccountKey=FBAaWtOuPCa0NSjY6N4Fh43snR/1FfLd2KLSKBbfx+MSc974iCYDUTwOLcZKq78eC272xPN68rI+WJy9Pwzmgg==;EndpointSuffix=core.windows.net
COPY . /home/site/wwwroot