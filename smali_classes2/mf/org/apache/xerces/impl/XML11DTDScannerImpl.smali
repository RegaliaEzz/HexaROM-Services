.class public Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;
.super Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;
.source "XML11DTDScannerImpl.java"


# instance fields
.field private final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;-><init>()V

    .line 59
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 66
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "errorReporter"    # Lmf/org/apache/xerces/impl/XMLErrorReporter;
    .param p3, "entityManager"    # Lmf/org/apache/xerces/impl/XMLEntityManager;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;)V

    .line 59
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 72
    return-void
.end method


# virtual methods
.method protected getVersionNotSupportedKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    const-string v0, "VersionNotSupported11"

    return-object v0
.end method

.method protected isInvalid(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 202
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isInvalidLiteral(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 209
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
    .line 188
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int v1, v3, v4

    .line 189
    .local v1, "end":I
    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 195
    const/4 v3, -0x1

    :goto_1
    return v3

    .line 190
    :cond_0
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v0, v3, v2

    .line 191
    .local v0, "c":I
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    sub-int v3, v2, v3

    goto :goto_1

    .line 189
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected isValidNCName(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 230
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCName(I)Z

    move-result v0

    return v0
.end method

.method protected isValidNameChar(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 216
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v0

    return v0
.end method

.method protected isValidNameStartChar(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 223
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameStart(I)Z

    move-result v0

    return v0
.end method

.method protected isValidNameStartHighSurrogate(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 238
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v0

    return v0
.end method

.method protected normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 5
    .param p1, "value"    # Lmf/org/apache/xerces/xni/XMLString;

    .prologue
    .line 157
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int v1, v3, v4

    .line 158
    .local v1, "end":I
    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 164
    return-void

    .line 159
    :cond_0
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v0, v3, v2

    .line 160
    .local v0, "c":I
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    const/16 v4, 0x20

    aput-char v4, v3, v2

    .line 158
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;I)V
    .locals 5
    .param p1, "value"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "fromIndex"    # I

    .prologue
    .line 171
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int v1, v3, v4

    .line 172
    .local v1, "end":I
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    add-int v2, v3, p2

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 178
    return-void

    .line 173
    :cond_0
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v0, v3, v2

    .line 174
    .local v0, "c":I
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    const/16 v4, 0x20

    aput-char v4, v3, v2

    .line 172
    :cond_1
    add-int/lit8 v2, v2, 0x1

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

    .line 107
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    .line 108
    .local v2, "quote":I
    const/16 v5, 0x27

    if-eq v2, v5, :cond_0

    const/16 v5, 0x22

    if-eq v2, v5, :cond_0

    .line 109
    const-string v5, "QuoteRequiredInPublicID"

    invoke-virtual {p0, v5, v9}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v4

    .line 149
    :goto_0
    return v1

    .line 113
    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 115
    const/4 v3, 0x1

    .line 116
    .local v3, "skipSpace":Z
    const/4 v1, 0x1

    .line 118
    .local v1, "dataok":Z
    :cond_1
    :goto_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    .line 120
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

    .line 121
    :cond_2
    if-nez v3, :cond_1

    .line 123
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 124
    const/4 v3, 0x1

    .line 126
    goto :goto_1

    .line 127
    :cond_3
    if-ne v0, v2, :cond_5

    .line 128
    if-eqz v3, :cond_4

    .line 130
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v5, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    .line 132
    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1, v4}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    goto :goto_0

    .line 135
    :cond_5
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isPubid(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 136
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v6, v0

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 137
    const/4 v3, 0x0

    .line 138
    goto :goto_1

    .line 139
    :cond_6
    const/4 v5, -0x1

    if-ne v0, v5, :cond_7

    .line 140
    const-string v5, "PublicIDUnterminated"

    invoke-virtual {p0, v5, v9}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v4

    .line 141
    goto :goto_0

    .line 144
    :cond_7
    const/4 v1, 0x0

    .line 145
    const-string v5, "InvalidCharInPublicID"

    .line 146
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 145
    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected versionSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 245
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
