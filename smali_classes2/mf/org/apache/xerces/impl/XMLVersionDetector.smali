.class public Lmf/org/apache/xerces/impl/XMLVersionDetector;
.super Ljava/lang/Object;
.source "XMLVersionDetector.java"


# static fields
.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final XML11_VERSION:[C

.field protected static final fVersionSymbol:Ljava/lang/String;

.field protected static final fXMLSymbol:Ljava/lang/String;


# instance fields
.field protected fEncoding:Ljava/lang/String;

.field protected fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private final fExpectedVersionString:[C

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->XML11_VERSION:[C

    .line 71
    const-string v0, "version"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fVersionSymbol:Ljava/lang/String;

    .line 74
    const-string v0, "[xml]"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fXMLSymbol:Ljava/lang/String;

    return-void

    .line 50
    nop

    :array_0
    .array-data 2
        0x31s
        0x2es
        0x31s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEncoding:Ljava/lang/String;

    .line 87
    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 88
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    .line 44
    return-void

    .line 87
    :array_0
    .array-data 2
        0x3cs
        0x3fs
        0x78s
        0x6ds
        0x6cs
        0x20s
        0x76s
        0x65s
        0x72s
        0x73s
        0x69s
        0x6fs
        0x6es
        0x3ds
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
    .end array-data
.end method

.method private fixupCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager;[CI)V
    .locals 9
    .param p1, "manager"    # Lmf/org/apache/xerces/impl/XMLEntityManager;
    .param p2, "scannedChars"    # [C
    .param p3, "length"    # I

    .prologue
    const/4 v8, 0x0

    .line 218
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getCurrentEntity()Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-result-object v0

    .line 219
    .local v0, "currentEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;
    iget v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    iget v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v3, v4

    add-int/2addr v3, p3

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 221
    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 222
    .local v2, "tempCh":[C
    iget v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/2addr v3, p3

    iget v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [C

    iput-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 223
    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v4, v2

    invoke-static {v2, v8, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    .end local v2    # "tempCh":[C
    :cond_0
    iget v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-ge v3, p3, :cond_2

    .line 227
    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v5, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v6, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    iget v7, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v6, v7

    invoke-static {v3, v4, v5, p3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    iget v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    iget v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v4, p3, v4

    add-int/2addr v3, v4

    iput v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    .line 235
    :cond_1
    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {p2, v8, v3, v8, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    iput v8, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 237
    iput v8, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    .line 238
    iput v8, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 239
    const/4 v3, 0x1

    iput v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iput v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 240
    return-void

    .line 231
    :cond_2
    move v1, p3

    .local v1, "i":I
    :goto_0
    iget v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-ge v1, v3, :cond_1

    .line 232
    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/16 v4, 0x20

    aput-char v4, v3, v1

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public determineDocVersion(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)S
    .locals 12
    .param p1, "inputSource"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v10, -0x1

    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 145
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    sget-object v2, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fXMLSymbol:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v1, v2, p1, v11, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setupCurrentEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEncoding:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setScannerVersion(S)V

    .line 150
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object v8

    .line 152
    .local v8, "scanner":Lmf/org/apache/xerces/impl/XMLEntityScanner;
    :try_start_0
    const-string v1, "<?xml"

    invoke-virtual {v8, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    :goto_0
    return v0

    .line 156
    :cond_0
    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipDeclSpaces()Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    const/4 v11, 0x5

    invoke-direct {p0, v1, v2, v11}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fixupCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager;[CI)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 190
    :catch_0
    move-exception v5

    .line 191
    .local v5, "e":Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v3

    .line 191
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    move v0, v10

    .line 193
    goto :goto_0

    .line 160
    .end local v5    # "e":Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
    :cond_1
    :try_start_1
    const-string v1, "version"

    invoke-virtual {v8, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 161
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    const/4 v11, 0x6

    invoke-direct {p0, v1, v2, v11}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fixupCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager;[CI)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 195
    :catch_1
    move-exception v5

    .line 196
    .local v5, "e":Ljava/io/CharConversionException;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 197
    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 198
    const-string v2, "CharConversionFailure"

    .line 196
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    move v0, v10

    .line 201
    goto :goto_0

    .line 164
    .end local v5    # "e":Ljava/io/CharConversionException;
    :cond_2
    :try_start_2
    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipDeclSpaces()Z

    .line 166
    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_3

    .line 167
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    const/16 v11, 0xd

    invoke-direct {p0, v1, v2, v11}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fixupCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager;[CI)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 204
    :catch_2
    move-exception v5

    .line 205
    .local v5, "e":Ljava/io/EOFException;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 206
    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 207
    const-string v2, "PrematureEOF"

    .line 205
    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move v0, v10

    .line 210
    goto :goto_0

    .line 170
    .end local v5    # "e":Ljava/io/EOFException;
    :cond_3
    :try_start_3
    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 171
    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipDeclSpaces()Z

    .line 172
    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v7

    .line 173
    .local v7, "quoteChar":I
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    const/16 v2, 0xe

    int-to-char v11, v7

    aput-char v11, v1, v2

    .line 174
    const/4 v9, 0x0

    .local v9, "versionPos":I
    :goto_1
    sget-object v1, Lmf/org/apache/xerces/impl/XMLVersionDetector;->XML11_VERSION:[C

    array-length v1, v1

    if-lt v9, v1, :cond_5

    .line 178
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    const/16 v2, 0x12

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v11

    int-to-char v11, v11

    aput-char v11, v1, v2

    .line 179
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    const/16 v11, 0x13

    invoke-direct {p0, v1, v2, v11}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fixupCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager;[CI)V

    .line 180
    const/4 v6, 0x0

    .line 181
    .local v6, "matched":I
    :goto_2
    sget-object v1, Lmf/org/apache/xerces/impl/XMLVersionDetector;->XML11_VERSION:[C

    array-length v1, v1

    if-lt v6, v1, :cond_6

    .line 185
    :cond_4
    sget-object v1, Lmf/org/apache/xerces/impl/XMLVersionDetector;->XML11_VERSION:[C

    array-length v1, v1

    if-ne v6, v1, :cond_7

    :goto_3
    move v0, v4

    goto/16 :goto_0

    .line 175
    .end local v6    # "matched":I
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    add-int/lit8 v2, v9, 0xf

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v11

    int-to-char v11, v11

    aput-char v11, v1, v2

    .line 174
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 182
    .restart local v6    # "matched":I
    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    add-int/lit8 v2, v6, 0xf

    aget-char v1, v1, v2

    sget-object v2, Lmf/org/apache/xerces/impl/XMLVersionDetector;->XML11_VERSION:[C

    aget-char v2, v2, v6
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2

    if-ne v1, v2, :cond_4

    .line 181
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    move v4, v0

    .line 187
    goto :goto_3
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 3
    .param p1, "componentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 102
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 103
    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 104
    const-string v1, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/XMLEntityManager;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    .line 105
    const/16 v0, 0xe

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 107
    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public startDocumentParsing(Lmf/org/apache/xerces/impl/XMLEntityHandler;S)V
    .locals 4
    .param p1, "scanner"    # Lmf/org/apache/xerces/impl/XMLEntityHandler;
    .param p2, "version"    # S

    .prologue
    const/4 v1, 0x1

    .line 117
    if-ne p2, v1, :cond_0

    .line 118
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setScannerVersion(S)V

    .line 124
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    .line 129
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    .line 131
    sget-object v0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fXMLSymbol:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getCurrentResourceIdentifier()Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEncoding:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 132
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setScannerVersion(S)V

    goto :goto_0
.end method
