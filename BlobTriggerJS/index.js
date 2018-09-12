module.exports = function (context, myBlob) {
    const contentType = context.bindingData.properties.contentType;
    context.log("JavaScript blob trigger function processed blob \n Name:", context.bindingData.name, "\n Blob Size:", myBlob.length, "Bytes");
    context.log('JavaScript blob trigger function is looking at: ', contentType);
    if (contentType.includes("image")) {
        // Read image with Jimp
        context.log('This worked');
      } else {
        context.log(`Cannot process the file with content type:`, contentType);
        context.done();
      }

    context.done();
};