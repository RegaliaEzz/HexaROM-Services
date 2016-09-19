.class public final Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;
.super Ljava/lang/Object;
.source "XMLDocumentScannerImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "TrailingMiscDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)V
    .locals 0

    .prologue
    .line 1212
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Z)Z
    .locals 9
    .param p1, "complete"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1237
    :cond_0
    const/4 v6, 0x0

    .line 1238
    .local v6, "again":Z
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fScannerState:I

    packed-switch v0, :pswitch_data_0

    .line 1319
    :goto_0
    :pswitch_0
    if-nez p1, :cond_0

    if-nez v6, :cond_0

    .line 1349
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1240
    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 1241
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1242
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 1243
    const/4 v6, 0x1

    .line 1244
    goto :goto_0

    .line 1246
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 1247
    const/4 v6, 0x1

    .line 1249
    goto :goto_0

    .line 1252
    :pswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    .line 1253
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1254
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 1255
    const/4 v6, 0x1

    .line 1256
    goto :goto_0

    .line 1257
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1258
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 1259
    const/4 v6, 0x1

    .line 1260
    goto :goto_0

    .line 1261
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1262
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v1, "MarkupNotRecognizedInMisc"

    .line 1263
    const/4 v2, 0x0

    .line 1262
    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1264
    const/4 v6, 0x1

    .line 1265
    goto :goto_0

    .line 1266
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1267
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v1, "MarkupNotRecognizedInMisc"

    .line 1268
    const/4 v2, 0x0

    .line 1267
    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1269
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanStartElement()Z

    .line 1270
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 1322
    :catch_0
    move-exception v5

    .line 1323
    .local v5, "e":Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 1324
    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v3

    .line 1323
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    move v0, v8

    .line 1325
    goto/16 :goto_1

    .line 1272
    .end local v5    # "e":Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
    :cond_5
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1273
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v1, "MarkupNotRecognizedInMisc"

    .line 1274
    const/4 v2, 0x0

    .line 1273
    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1275
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanStartElement()Z

    .line 1276
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 1327
    :catch_1
    move-exception v5

    .line 1328
    .local v5, "e":Ljava/io/CharConversionException;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 1329
    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1330
    const-string v2, "CharConversionFailure"

    .line 1328
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    move v0, v8

    .line 1333
    goto/16 :goto_1

    .line 1279
    .end local v5    # "e":Ljava/io/CharConversionException;
    :cond_6
    :try_start_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v1, "MarkupNotRecognizedInMisc"

    .line 1280
    const/4 v2, 0x0

    .line 1279
    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1335
    :catch_2
    move-exception v5

    .line 1339
    .local v5, "e":Ljava/io/EOFException;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    if-eqz v0, :cond_9

    .line 1340
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v1, "PrematureEOF"

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v8

    .line 1341
    goto/16 :goto_1

    .line 1285
    .end local v5    # "e":Ljava/io/EOFException;
    :pswitch_3
    :try_start_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanPI()V

    .line 1286
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    .line 1290
    :pswitch_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1291
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v1, "InvalidCommentStart"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1293
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanComment()V

    .line 1294
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    .line 1298
    :pswitch_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v7

    .line 1299
    .local v7, "ch":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_8

    .line 1300
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v0, v8

    .line 1301
    goto/16 :goto_1

    .line 1303
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v1, "ContentIllegalInTrailingMisc"

    .line 1304
    const/4 v2, 0x0

    .line 1303
    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1305
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1306
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    .line 1310
    .end local v7    # "ch":I
    :pswitch_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v1, "ReferenceIllegalInTrailingMisc"

    .line 1311
    const/4 v2, 0x0

    .line 1310
    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1312
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :pswitch_7
    move v0, v8

    .line 1316
    goto/16 :goto_1

    .line 1345
    .restart local v5    # "e":Ljava/io/EOFException;
    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v0, v8

    .line 1346
    goto/16 :goto_1

    .line 1238
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
