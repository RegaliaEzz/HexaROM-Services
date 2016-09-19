.class public Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;
.super Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;
.source "XML11DocumentScannerImpl.java"


# instance fields
.field private final fString:Lmf/org/apache/xerces/xni/XMLString;

.field private final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    .line 62
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    .line 65
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 66
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 67
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 74
    return-void
.end method


# virtual methods
.method protected getVersionNotSupportedKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    const-string v0, "VersionNotSupported11"

    return-object v0
.end method

.method protected isInvalid(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 499
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result v0

    return v0
.end method

.method protected isInvalidLiteral(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 506
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isUnchangedByNormalization(Lmf/org/apache/xerces/xni/XMLString;)I
    .locals 5
    .param p1, "value"    # Lmf/org/apache/xerces/xni/XMLString;

    .prologue
    .line 485
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int v1, v3, v4

    .line 486
    .local v1, "end":I
    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 492
    const/4 v3, -0x1

    :goto_1
    return v3

    .line 487
    :cond_0
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v0, v3, v2

    .line 488
    .local v0, "c":I
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 489
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    sub-int v3, v2, v3

    goto :goto_1

    .line 486
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected isValidNCName(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 527
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCName(I)Z

    move-result v0

    return v0
.end method

.method protected isValidNameChar(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 513
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v0

    return v0
.end method

.method protected isValidNameStartChar(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 520
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameStart(I)Z

    move-result v0

    return v0
.end method

.method protected isValidNameStartHighSurrogate(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 535
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v0

    return v0
.end method

.method protected normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 5
    .param p1, "value"    # Lmf/org/apache/xerces/xni/XMLString;

    .prologue
    .line 454
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int v1, v3, v4

    .line 455
    .local v1, "end":I
    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 461
    return-void

    .line 456
    :cond_0
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v0, v3, v2

    .line 457
    .local v0, "c":I
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 458
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    const/16 v4, 0x20

    aput-char v4, v3, v2

    .line 455
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;I)V
    .locals 5
    .param p1, "value"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "fromIndex"    # I

    .prologue
    .line 468
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int v1, v3, v4

    .line 469
    .local v1, "end":I
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    add-int v2, v3, p2

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 475
    return-void

    .line 470
    :cond_0
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v0, v3, v2

    .line 471
    .local v0, "c":I
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 472
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    const/16 v4, 0x20

    aput-char v4, v3, v2

    .line 469
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected scanAttributeValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 12
    .param p1, "value"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "nonNormalizedValue"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "atName"    # Ljava/lang/String;
    .param p4, "checkEntities"    # Z
    .param p5, "eleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v6

    .line 163
    .local v6, "quote":I
    const/16 v7, 0x27

    if-eq v6, v7, :cond_0

    const/16 v7, 0x22

    if-eq v6, v7, :cond_0

    .line 164
    const-string v7, "OpenQuoteExpected"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p5, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :cond_0
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 168
    iget v3, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    .line 170
    .local v3, "entityDepth":I
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7, v6, p1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v0

    .line 176
    .local v0, "c":I
    const/4 v5, 0x0

    .line 177
    .local v5, "fromIndex":I
    if-ne v0, v6, :cond_2

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->isUnchangedByNormalization(Lmf/org/apache/xerces/xni/XMLString;)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_2

    .line 179
    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 180
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    .line 181
    .local v2, "cquote":I
    if-eq v2, v6, :cond_1

    .line 182
    const-string v7, "CloseQuoteExpected"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p5, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :cond_1
    const/4 v7, 0x1

    .line 373
    :goto_0
    return v7

    .line 186
    .end local v2    # "cquote":I
    :cond_2
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 187
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 188
    invoke-virtual {p0, p1, v5}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;I)V

    .line 193
    if-eq v0, v6, :cond_8

    .line 194
    const/4 v7, 0x1

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fScanningAttribute:Z

    .line 195
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 197
    :cond_3
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 202
    const/16 v7, 0x26

    if-ne v0, v7, :cond_17

    .line 203
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    .line 204
    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v3, v7, :cond_4

    .line 205
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 207
    :cond_4
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x23

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 208
    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v3, v7, :cond_5

    .line 209
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x23

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 211
    :cond_5
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->scanCharReferenceValue(Lmf/org/apache/xerces/util/XMLStringBuffer;Lmf/org/apache/xerces/util/XMLStringBuffer;)I

    move-result v1

    .line 212
    .local v1, "ch":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_6

    .line 352
    .end local v1    # "ch":I
    :cond_6
    :goto_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7, v6, p1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v0

    .line 353
    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v3, v7, :cond_7

    .line 354
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 356
    :cond_7
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 357
    if-ne v0, v6, :cond_3

    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v3, v7, :cond_3

    .line 358
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 363
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1, v7}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 364
    const/4 v7, 0x0

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fScanningAttribute:Z

    .line 366
    :cond_8
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p2, v7}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 369
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    .line 370
    .restart local v2    # "cquote":I
    if-eq v2, v6, :cond_9

    .line 371
    const-string v7, "CloseQuoteExpected"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p5, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    :cond_9
    iget-object v7, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v8, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v9, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {p2, v7, v8, v9}, Lmf/org/apache/xerces/xni/XMLString;->equals([CII)Z

    move-result v7

    goto/16 :goto_0

    .line 221
    .end local v2    # "cquote":I
    :cond_a
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "entityName":Ljava/lang/String;
    if-nez v4, :cond_d

    .line 223
    const-string v7, "NameRequiredInReference"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    :cond_b
    :goto_2
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_e

    .line 229
    const-string v7, "SemicolonRequiredInReference"

    .line 230
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    .line 229
    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    :cond_c
    :goto_3
    sget-object v7, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fAmpSymbol:Ljava/lang/String;

    if-ne v4, v7, :cond_f

    .line 236
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_1

    .line 225
    :cond_d
    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v3, v7, :cond_b

    .line 226
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_2

    .line 232
    :cond_e
    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v3, v7, :cond_c

    .line 233
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_3

    .line 243
    :cond_f
    sget-object v7, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fAposSymbol:Ljava/lang/String;

    if-ne v4, v7, :cond_10

    .line 244
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x27

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 251
    :cond_10
    sget-object v7, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fLtSymbol:Ljava/lang/String;

    if-ne v4, v7, :cond_11

    .line 252
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x3c

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 259
    :cond_11
    sget-object v7, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fGtSymbol:Ljava/lang/String;

    if-ne v4, v7, :cond_12

    .line 260
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x3e

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 267
    :cond_12
    sget-object v7, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fQuotSymbol:Ljava/lang/String;

    if-ne v4, v7, :cond_13

    .line 268
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x22

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 276
    :cond_13
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v7, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->isExternalEntity(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 277
    const-string v7, "ReferenceToExternalEntity"

    .line 278
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    .line 277
    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 281
    :cond_14
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v7, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->isDeclaredEntity(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 283
    if-eqz p4, :cond_16

    .line 284
    iget-boolean v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fValidation:Z

    if-eqz v7, :cond_15

    .line 285
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 286
    const-string v9, "EntityNotDeclared"

    .line 287
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    .line 288
    const/4 v11, 0x1

    .line 285
    invoke-virtual {v7, v8, v9, v10, v11}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 296
    :cond_15
    :goto_4
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v4, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 292
    :cond_16
    const-string v7, "EntityNotDeclared"

    .line 293
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    .line 292
    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 301
    .end local v4    # "entityName":Ljava/lang/String;
    :cond_17
    const/16 v7, 0x3c

    if-ne v0, v7, :cond_18

    .line 302
    const-string v7, "LessthanInAttValue"

    .line 303
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p5, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    .line 302
    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 305
    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v3, v7, :cond_6

    .line 306
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 309
    :cond_18
    const/16 v7, 0x25

    if-eq v0, v7, :cond_19

    const/16 v7, 0x5d

    if-ne v0, v7, :cond_1a

    .line 310
    :cond_19
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 311
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 312
    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v3, v7, :cond_6

    .line 313
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 323
    :cond_1a
    const/16 v7, 0xa

    if-eq v0, v7, :cond_1b

    const/16 v7, 0xd

    if-eq v0, v7, :cond_1b

    const/16 v7, 0x85

    if-eq v0, v7, :cond_1b

    const/16 v7, 0x2028

    if-ne v0, v7, :cond_1c

    .line 324
    :cond_1b
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 325
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 326
    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v3, v7, :cond_6

    .line 327
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 330
    :cond_1c
    const/4 v7, -0x1

    if-eq v0, v7, :cond_1d

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 331
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 332
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->scanSurrogates(Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 333
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 334
    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v3, v7, :cond_6

    .line 335
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    goto/16 :goto_1

    .line 344
    :cond_1d
    const/4 v7, -0x1

    if-eq v0, v7, :cond_6

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->isInvalidLiteral(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 345
    const-string v7, "InvalidCharInAttValue"

    .line 346
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p5, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    const/4 v9, 0x2

    const/16 v10, 0x10

    invoke-static {v0, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 345
    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 348
    iget v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v3, v7, :cond_6

    .line 349
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1
.end method

.method protected scanContent()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x5d

    .line 89
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    .line 90
    .local v1, "content":Lmf/org/apache/xerces/xni/XMLString;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanContent(Lmf/org/apache/xerces/xni/XMLString;)I

    move-result v0

    .line 91
    .local v0, "c":I
    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    const/16 v2, 0x85

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2028

    if-ne v0, v2, :cond_1

    .line 95
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 96
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 97
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 98
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 99
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 100
    const/4 v0, -0x1

    .line 102
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_2

    iget v2, v1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-lez v2, :cond_2

    .line 103
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v2, v1, v5}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 106
    :cond_2
    if-ne v0, v4, :cond_5

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    iget v2, v2, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-nez v2, :cond_5

    .line 107
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 108
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 112
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fInScanContent:Z

    .line 117
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 119
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 122
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    const-string v2, "CDEndInContent"

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v2, v2, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    if-eqz v2, :cond_4

    .line 127
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v2, v3, v5}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 129
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fInScanContent:Z

    .line 130
    const/4 v0, -0x1

    .line 132
    :cond_5
    return v0

    .line 120
    :cond_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_0
.end method

.method protected scanPubidLiteral(Lmf/org/apache/xerces/xni/XMLString;)Z
    .locals 10
    .param p1, "literal"    # Lmf/org/apache/xerces/xni/XMLString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x20

    const/4 v4, 0x0

    .line 404
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    .line 405
    .local v2, "quote":I
    const/16 v5, 0x27

    if-eq v2, v5, :cond_0

    const/16 v5, 0x22

    if-eq v2, v5, :cond_0

    .line 406
    const-string v5, "QuoteRequiredInPublicID"

    invoke-virtual {p0, v5, v9}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v4

    .line 446
    :goto_0
    return v1

    .line 410
    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 412
    const/4 v3, 0x1

    .line 413
    .local v3, "skipSpace":Z
    const/4 v1, 0x1

    .line 415
    .local v1, "dataok":Z
    :cond_1
    :goto_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    .line 417
    .local v0, "c":I
    if-eq v0, v8, :cond_2

    const/16 v5, 0xa

    if-eq v0, v5, :cond_2

    const/16 v5, 0xd

    if-eq v0, v5, :cond_2

    const/16 v5, 0x85

    if-eq v0, v5, :cond_2

    const/16 v5, 0x2028

    if-ne v0, v5, :cond_3

    .line 418
    :cond_2
    if-nez v3, :cond_1

    .line 420
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 421
    const/4 v3, 0x1

    .line 423
    goto :goto_1

    .line 424
    :cond_3
    if-ne v0, v2, :cond_5

    .line 425
    if-eqz v3, :cond_4

    .line 427
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v5, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    .line 429
    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1, v4}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    goto :goto_0

    .line 432
    :cond_5
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isPubid(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 433
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v6, v0

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 434
    const/4 v3, 0x0

    .line 435
    goto :goto_1

    .line 436
    :cond_6
    const/4 v5, -0x1

    if-ne v0, v5, :cond_7

    .line 437
    const-string v5, "PublicIDUnterminated"

    invoke-virtual {p0, v5, v9}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v4

    .line 438
    goto :goto_0

    .line 441
    :cond_7
    const/4 v1, 0x0

    .line 442
    const-string v5, "InvalidCharInPublicID"

    .line 443
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 442
    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected versionSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 539
    const-string v0, "1.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
