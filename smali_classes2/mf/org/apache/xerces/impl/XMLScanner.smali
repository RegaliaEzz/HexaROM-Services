.class public abstract Lmf/org/apache/xerces/impl/XMLScanner;
.super Ljava/lang/Object;
.source "XMLScanner.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;


# static fields
.field protected static final DEBUG_ATTR_NORMALIZATION:Z = false

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NOTIFY_CHAR_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-char-refs"

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final fAmpSymbol:Ljava/lang/String;

.field protected static final fAposSymbol:Ljava/lang/String;

.field protected static final fEncodingSymbol:Ljava/lang/String;

.field protected static final fGtSymbol:Ljava/lang/String;

.field protected static final fLtSymbol:Ljava/lang/String;

.field protected static final fQuotSymbol:Ljava/lang/String;

.field protected static final fStandaloneSymbol:Ljava/lang/String;

.field protected static final fVersionSymbol:Ljava/lang/String;


# instance fields
.field protected fCharRefLiteral:Ljava/lang/String;

.field protected fEntityDepth:I

.field protected fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field protected fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fNamespaces:Z

.field protected fNotifyCharRefs:Z

.field protected fParserSettings:Z

.field protected fReportEntity:Z

.field protected final fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

.field protected fScanningAttribute:Z

.field private final fString:Lmf/org/apache/xerces/xni/XMLString;

.field private final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field protected fValidation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    const-string v0, "version"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/XMLScanner;->fVersionSymbol:Ljava/lang/String;

    .line 161
    const-string v0, "encoding"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/XMLScanner;->fEncodingSymbol:Ljava/lang/String;

    .line 164
    const-string v0, "standalone"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/XMLScanner;->fStandaloneSymbol:Ljava/lang/String;

    .line 167
    const-string v0, "amp"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/XMLScanner;->fAmpSymbol:Ljava/lang/String;

    .line 170
    const-string v0, "lt"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/XMLScanner;->fLtSymbol:Ljava/lang/String;

    .line 173
    const-string v0, "gt"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/XMLScanner;->fGtSymbol:Ljava/lang/String;

    .line 176
    const-string v0, "quot"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/XMLScanner;->fQuotSymbol:Ljava/lang/String;

    .line 179
    const-string v0, "apos"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/XMLScanner;->fAposSymbol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fValidation:Z

    .line 122
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fNotifyCharRefs:Z

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fParserSettings:Z

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fCharRefLiteral:Ljava/lang/String;

    .line 190
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fString:Lmf/org/apache/xerces/xni/XMLString;

    .line 193
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 196
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 199
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 202
    new-instance v0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    .line 62
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 1475
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    .line 1477
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    .line 1478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fReportEntity:Z

    .line 1479
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    .line 1480
    return-void
.end method


# virtual methods
.method public endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1232
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    .line 1234
    return-void
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 308
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fValidation:Z

    .line 311
    :goto_0
    return v0

    .line 310
    :cond_0
    const-string v0, "http://apache.org/xml/features/scanner/notify-char-refs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fNotifyCharRefs:Z

    goto :goto_0

    .line 313
    :cond_1
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method protected getVersionNotSupportedKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1420
    const-string v0, "VersionNotSupported"

    return-object v0
.end method

.method protected isInvalid(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1373
    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v0

    return v0
.end method

.method protected isInvalidLiteral(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1380
    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v0

    return v0
.end method

.method protected isUnchangedByNormalization(Lmf/org/apache/xerces/xni/XMLString;)I
    .locals 5
    .param p1, "value"    # Lmf/org/apache/xerces/xni/XMLString;

    .prologue
    .line 1170
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int v1, v3, v4

    .line 1171
    .local v1, "end":I
    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 1183
    const/4 v3, -0x1

    :goto_1
    return v3

    .line 1172
    :cond_0
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v0, v3, v2

    .line 1179
    .local v0, "c":I
    const/16 v3, 0x20

    if-ge v0, v3, :cond_1

    .line 1180
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    sub-int v3, v2, v3

    goto :goto_1

    .line 1171
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected isValidNCName(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1401
    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isNCName(I)Z

    move-result v0

    return v0
.end method

.method protected isValidNameChar(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1387
    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v0

    return v0
.end method

.method protected isValidNameStartChar(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1394
    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v0

    return v0
.end method

.method protected isValidNameStartHighSurrogate(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1409
    const/4 v0, 0x0

    return v0
.end method

.method protected normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 6
    .param p1, "value"    # Lmf/org/apache/xerces/xni/XMLString;

    .prologue
    const/16 v5, 0x20

    .line 1127
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int v1, v3, v4

    .line 1128
    .local v1, "end":I
    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 1140
    return-void

    .line 1129
    :cond_0
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v0, v3, v2

    .line 1136
    .local v0, "c":I
    if-ge v0, v5, :cond_1

    .line 1137
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aput-char v5, v3, v2

    .line 1128
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;I)V
    .locals 6
    .param p1, "value"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "fromIndex"    # I

    .prologue
    const/16 v5, 0x20

    .line 1147
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int v1, v3, v4

    .line 1148
    .local v1, "end":I
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    add-int v2, v3, p2

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 1160
    return-void

    .line 1149
    :cond_0
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v0, v3, v2

    .line 1156
    .local v0, "c":I
    if-ge v0, v5, :cond_1

    .line 1157
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aput-char v5, v3, v2

    .line 1148
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1468
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1470
    const/4 v2, 0x2

    .line 1468
    invoke-virtual {v0, v1, p1, p2, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 1471
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLScanner;->init()V

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fValidation:Z

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fNotifyCharRefs:Z

    .line 328
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 4
    .param p1, "componentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 220
    :try_start_0
    const-string v1, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fParserSettings:Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fParserSettings:Z

    if-nez v1, :cond_0

    .line 227
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLScanner;->init()V

    .line 258
    :goto_1
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fParserSettings:Z

    goto :goto_0

    .line 232
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :cond_0
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 233
    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 234
    const-string v1, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/XMLEntityManager;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    .line 238
    :try_start_1
    const-string v1, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fValidation:Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    :goto_2
    :try_start_2
    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fNamespaces:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 250
    :goto_3
    :try_start_3
    const-string v1, "http://apache.org/xml/features/scanner/notify-char-refs"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fNotifyCharRefs:Z
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 256
    :goto_4
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLScanner;->init()V

    goto :goto_1

    .line 240
    :catch_1
    move-exception v0

    .line 241
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fValidation:Z

    goto :goto_2

    .line 246
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_2
    move-exception v0

    .line 247
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fNamespaces:Z

    goto :goto_3

    .line 252
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_3
    move-exception v0

    .line 253
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fNotifyCharRefs:Z

    goto :goto_4
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
    .line 765
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v6

    .line 766
    .local v6, "quote":I
    const/16 v7, 0x27

    if-eq v6, v7, :cond_0

    const/16 v7, 0x22

    if-eq v6, v7, :cond_0

    .line 767
    const-string v7, "OpenQuoteExpected"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p5, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 770
    :cond_0
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 771
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    .line 773
    .local v3, "entityDepth":I
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7, v6, p1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v0

    .line 779
    .local v0, "c":I
    const/4 v5, 0x0

    .line 780
    .local v5, "fromIndex":I
    if-ne v0, v6, :cond_2

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/XMLScanner;->isUnchangedByNormalization(Lmf/org/apache/xerces/xni/XMLString;)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_2

    .line 782
    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 783
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    .line 784
    .local v2, "cquote":I
    if-eq v2, v6, :cond_1

    .line 785
    const-string v7, "CloseQuoteExpected"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p5, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 787
    :cond_1
    const/4 v7, 0x1

    .line 973
    :goto_0
    return v7

    .line 789
    .end local v2    # "cquote":I
    :cond_2
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 790
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 791
    invoke-virtual {p0, p1, v5}, Lmf/org/apache/xerces/impl/XMLScanner;->normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;I)V

    .line 796
    if-eq v0, v6, :cond_8

    .line 797
    const/4 v7, 0x1

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fScanningAttribute:Z

    .line 798
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 800
    :cond_3
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 805
    const/16 v7, 0x26

    if-ne v0, v7, :cond_17

    .line 806
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    .line 807
    iget v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v3, v7, :cond_4

    .line 808
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 810
    :cond_4
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x23

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 811
    iget v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v3, v7, :cond_5

    .line 812
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x23

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 814
    :cond_5
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLScanner;->scanCharReferenceValue(Lmf/org/apache/xerces/util/XMLStringBuffer;Lmf/org/apache/xerces/util/XMLStringBuffer;)I

    move-result v1

    .line 815
    .local v1, "ch":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_6

    .line 952
    .end local v1    # "ch":I
    :cond_6
    :goto_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7, v6, p1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v0

    .line 953
    iget v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v3, v7, :cond_7

    .line 954
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 956
    :cond_7
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/XMLScanner;->normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 957
    if-ne v0, v6, :cond_3

    iget v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v3, v7, :cond_3

    .line 958
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 963
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1, v7}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 964
    const/4 v7, 0x0

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fScanningAttribute:Z

    .line 966
    :cond_8
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p2, v7}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 969
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    .line 970
    .restart local v2    # "cquote":I
    if-eq v2, v6, :cond_9

    .line 971
    const-string v7, "CloseQuoteExpected"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p5, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 973
    :cond_9
    iget-object v7, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v8, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v9, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {p2, v7, v8, v9}, Lmf/org/apache/xerces/xni/XMLString;->equals([CII)Z

    move-result v7

    goto/16 :goto_0

    .line 824
    .end local v2    # "cquote":I
    :cond_a
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v4

    .line 825
    .local v4, "entityName":Ljava/lang/String;
    if-nez v4, :cond_d

    .line 826
    const-string v7, "NameRequiredInReference"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 831
    :cond_b
    :goto_2
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_e

    .line 832
    const-string v7, "SemicolonRequiredInReference"

    .line 833
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    .line 832
    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 838
    :cond_c
    :goto_3
    sget-object v7, Lmf/org/apache/xerces/impl/XMLScanner;->fAmpSymbol:Ljava/lang/String;

    if-ne v4, v7, :cond_f

    .line 839
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_1

    .line 828
    :cond_d
    iget v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v3, v7, :cond_b

    .line 829
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_2

    .line 835
    :cond_e
    iget v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v3, v7, :cond_c

    .line 836
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_3

    .line 846
    :cond_f
    sget-object v7, Lmf/org/apache/xerces/impl/XMLScanner;->fAposSymbol:Ljava/lang/String;

    if-ne v4, v7, :cond_10

    .line 847
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x27

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 854
    :cond_10
    sget-object v7, Lmf/org/apache/xerces/impl/XMLScanner;->fLtSymbol:Ljava/lang/String;

    if-ne v4, v7, :cond_11

    .line 855
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x3c

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 862
    :cond_11
    sget-object v7, Lmf/org/apache/xerces/impl/XMLScanner;->fGtSymbol:Ljava/lang/String;

    if-ne v4, v7, :cond_12

    .line 863
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x3e

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 870
    :cond_12
    sget-object v7, Lmf/org/apache/xerces/impl/XMLScanner;->fQuotSymbol:Ljava/lang/String;

    if-ne v4, v7, :cond_13

    .line 871
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x22

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 879
    :cond_13
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v7, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->isExternalEntity(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 880
    const-string v7, "ReferenceToExternalEntity"

    .line 881
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    .line 880
    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 884
    :cond_14
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v7, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->isDeclaredEntity(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 886
    if-eqz p4, :cond_16

    .line 887
    iget-boolean v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fValidation:Z

    if-eqz v7, :cond_15

    .line 888
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 889
    const-string v9, "EntityNotDeclared"

    .line 890
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    .line 891
    const/4 v11, 0x1

    .line 888
    invoke-virtual {v7, v8, v9, v10, v11}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 899
    :cond_15
    :goto_4
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v4, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 895
    :cond_16
    const-string v7, "EntityNotDeclared"

    .line 896
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    .line 895
    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 904
    .end local v4    # "entityName":Ljava/lang/String;
    :cond_17
    const/16 v7, 0x3c

    if-ne v0, v7, :cond_18

    .line 905
    const-string v7, "LessthanInAttValue"

    .line 906
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p5, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    .line 905
    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 907
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 908
    iget v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v3, v7, :cond_6

    .line 909
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 912
    :cond_18
    const/16 v7, 0x25

    if-eq v0, v7, :cond_19

    const/16 v7, 0x5d

    if-ne v0, v7, :cond_1a

    .line 913
    :cond_19
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 914
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 915
    iget v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v3, v7, :cond_6

    .line 916
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 923
    :cond_1a
    const/16 v7, 0xa

    if-eq v0, v7, :cond_1b

    const/16 v7, 0xd

    if-ne v0, v7, :cond_1c

    .line 924
    :cond_1b
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 925
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 926
    iget v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v3, v7, :cond_6

    .line 927
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 930
    :cond_1c
    const/4 v7, -0x1

    if-eq v0, v7, :cond_1d

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 931
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 932
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/impl/XMLScanner;->scanSurrogates(Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 933
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 934
    iget v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v3, v7, :cond_6

    .line 935
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    goto/16 :goto_1

    .line 944
    :cond_1d
    const/4 v7, -0x1

    if-eq v0, v7, :cond_6

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLScanner;->isInvalidLiteral(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 945
    const-string v7, "InvalidCharInAttValue"

    .line 946
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

    .line 945
    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 947
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 948
    iget v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v3, v7, :cond_6

    .line 949
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1
.end method

.method protected scanCharReferenceValue(Lmf/org/apache/xerces/util/XMLStringBuffer;Lmf/org/apache/xerces/util/XMLStringBuffer;)I
    .locals 11
    .param p1, "buf"    # Lmf/org/apache/xerces/util/XMLStringBuffer;
    .param p2, "buf2"    # Lmf/org/apache/xerces/util/XMLStringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1257
    const/4 v4, 0x0

    .line 1258
    .local v4, "hex":Z
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x78

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1259
    if-eqz p2, :cond_0

    const/16 v7, 0x78

    invoke-virtual {p2, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1260
    :cond_0
    const/4 v4, 0x1

    .line 1261
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1262
    const/4 v1, 0x1

    .line 1264
    .local v1, "digit":Z
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    .line 1265
    .local v0, "c":I
    const/16 v7, 0x30

    if-lt v0, v7, :cond_1

    const/16 v7, 0x39

    if-le v0, v7, :cond_10

    .line 1266
    :cond_1
    const/16 v7, 0x61

    if-lt v0, v7, :cond_2

    const/16 v7, 0x66

    if-le v0, v7, :cond_10

    .line 1267
    :cond_2
    const/16 v7, 0x41

    if-lt v0, v7, :cond_3

    const/16 v7, 0x46

    .line 1265
    if-le v0, v7, :cond_10

    :cond_3
    const/4 v1, 0x0

    .line 1268
    :goto_0
    if-eqz v1, :cond_12

    .line 1269
    if-eqz p2, :cond_4

    int-to-char v7, v0

    invoke-virtual {p2, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1270
    :cond_4
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1271
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1274
    :cond_5
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    .line 1275
    const/16 v7, 0x30

    if-lt v0, v7, :cond_6

    const/16 v7, 0x39

    if-le v0, v7, :cond_11

    .line 1276
    :cond_6
    const/16 v7, 0x61

    if-lt v0, v7, :cond_7

    const/16 v7, 0x66

    if-le v0, v7, :cond_11

    .line 1277
    :cond_7
    const/16 v7, 0x41

    if-lt v0, v7, :cond_8

    const/16 v7, 0x46

    .line 1275
    if-le v0, v7, :cond_11

    :cond_8
    const/4 v1, 0x0

    .line 1278
    :goto_1
    if-eqz v1, :cond_a

    .line 1279
    if-eqz p2, :cond_9

    int-to-char v7, v0

    invoke-virtual {p2, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1280
    :cond_9
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1281
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1283
    :cond_a
    if-nez v1, :cond_5

    .line 1318
    :goto_2
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1319
    const-string v7, "SemicolonRequiredInCharRef"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1321
    :cond_b
    if-eqz p2, :cond_c

    const/16 v7, 0x3b

    invoke-virtual {p2, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1324
    :cond_c
    const/4 v6, -0x1

    .line 1326
    .local v6, "value":I
    :try_start_0
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1327
    if-eqz v4, :cond_1b

    const/16 v7, 0x10

    .line 1326
    :goto_3
    invoke-static {v8, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 1330
    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/XMLScanner;->isInvalid(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1331
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v7, v7, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1332
    .local v3, "errorBuf":Ljava/lang/StringBuffer;
    if-eqz v4, :cond_d

    const/16 v7, 0x78

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1333
    :cond_d
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v7, v7, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v8, v8, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v9, v9, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v3, v7, v8, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1334
    const-string v7, "InvalidCharRef"

    .line 1335
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1334
    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1349
    .end local v3    # "errorBuf":Ljava/lang/StringBuffer;
    :cond_e
    :goto_4
    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 1350
    int-to-char v7, v6

    invoke-virtual {p1, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1359
    :goto_5
    iget-boolean v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fNotifyCharRefs:Z

    if-eqz v7, :cond_f

    const/4 v7, -0x1

    if-eq v6, v7, :cond_f

    .line 1360
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v7, "#"

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_1e

    const-string v7, "x"

    :goto_6
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1361
    .local v5, "literal":Ljava/lang/String;
    iget-boolean v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fScanningAttribute:Z

    if-nez v7, :cond_f

    .line 1362
    iput-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fCharRefLiteral:Ljava/lang/String;

    .line 1366
    .end local v5    # "literal":Ljava/lang/String;
    :cond_f
    return v6

    .line 1265
    .end local v6    # "value":I
    :cond_10
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1275
    :cond_11
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1286
    :cond_12
    const-string v7, "HexdigitRequiredInCharRef"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1292
    .end local v0    # "c":I
    .end local v1    # "digit":Z
    :cond_13
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1293
    const/4 v1, 0x1

    .line 1295
    .restart local v1    # "digit":Z
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    .line 1296
    .restart local v0    # "c":I
    const/16 v7, 0x30

    if-lt v0, v7, :cond_18

    const/16 v7, 0x39

    if-gt v0, v7, :cond_18

    const/4 v1, 0x1

    .line 1297
    :goto_7
    if-eqz v1, :cond_1a

    .line 1298
    if-eqz p2, :cond_14

    int-to-char v7, v0

    invoke-virtual {p2, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1299
    :cond_14
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1300
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1303
    :cond_15
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    .line 1304
    const/16 v7, 0x30

    if-lt v0, v7, :cond_19

    const/16 v7, 0x39

    if-gt v0, v7, :cond_19

    const/4 v1, 0x1

    .line 1305
    :goto_8
    if-eqz v1, :cond_17

    .line 1306
    if-eqz p2, :cond_16

    int-to-char v7, v0

    invoke-virtual {p2, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1307
    :cond_16
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1308
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1310
    :cond_17
    if-nez v1, :cond_15

    goto/16 :goto_2

    .line 1296
    :cond_18
    const/4 v1, 0x0

    goto :goto_7

    .line 1304
    :cond_19
    const/4 v1, 0x0

    goto :goto_8

    .line 1313
    :cond_1a
    const-string v7, "DigitRequiredInCharRef"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1327
    .restart local v6    # "value":I
    :cond_1b
    const/16 v7, 0xa

    goto/16 :goto_3

    .line 1338
    :catch_0
    move-exception v2

    .line 1341
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v7, v7, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1342
    .restart local v3    # "errorBuf":Ljava/lang/StringBuffer;
    if-eqz v4, :cond_1c

    const/16 v7, 0x78

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1343
    :cond_1c
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v7, v7, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v8, v8, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v9, v9, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v3, v7, v8, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1344
    const-string v7, "InvalidCharRef"

    .line 1345
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1344
    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1354
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "errorBuf":Ljava/lang/StringBuffer;
    :cond_1d
    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->highSurrogate(I)C

    move-result v7

    invoke-virtual {p1, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1355
    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->lowSurrogate(I)C

    move-result v7

    invoke-virtual {p1, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_5

    .line 1360
    :cond_1e
    const-string v7, ""

    goto/16 :goto_6
.end method

.method protected scanComment(Lmf/org/apache/xerces/util/XMLStringBuffer;)V
    .locals 5
    .param p1, "text"    # Lmf/org/apache/xerces/util/XMLStringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 719
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 720
    :cond_0
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v2, "--"

    invoke-virtual {v1, v2, p1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanData(Ljava/lang/String;Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 733
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 734
    const-string v1, "DashDashInComment"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    :cond_1
    return-void

    .line 721
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    .line 722
    .local v0, "c":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 723
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 724
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/XMLScanner;->scanSurrogates(Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    goto :goto_0

    .line 726
    :cond_3
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLScanner;->isInvalidLiteral(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    const-string v1, "InvalidCharInComment"

    .line 728
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 727
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    goto :goto_0
.end method

.method protected scanExternalID([Ljava/lang/String;Z)V
    .locals 11
    .param p1, "identifiers"    # [Ljava/lang/String;
    .param p2, "optionalSystemId"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 992
    const/4 v4, 0x0

    .line 993
    .local v4, "systemId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 994
    .local v2, "publicId":Ljava/lang/String;
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v6, "PUBLIC"

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 995
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v5

    if-nez v5, :cond_0

    .line 996
    const-string v5, "SpaceRequiredAfterPUBLIC"

    invoke-virtual {p0, v5, v8}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 998
    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/impl/XMLScanner;->scanPubidLiteral(Lmf/org/apache/xerces/xni/XMLString;)Z

    .line 999
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v5}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1001
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez p2, :cond_1

    .line 1002
    const-string v5, "SpaceRequiredBetweenPublicAndSystem"

    invoke-virtual {p0, v5, v8}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1006
    :cond_1
    if-nez v2, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v6, "SYSTEM"

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1007
    :cond_2
    if-nez v2, :cond_3

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1008
    const-string v5, "SpaceRequiredAfterSYSTEM"

    invoke-virtual {p0, v5, v8}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1010
    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v3

    .line 1011
    .local v3, "quote":I
    const/16 v5, 0x27

    if-eq v3, v5, :cond_5

    const/16 v5, 0x22

    if-eq v3, v5, :cond_5

    .line 1012
    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    .line 1015
    aput-object v8, p1, v9

    .line 1016
    aput-object v2, p1, v10

    .line 1052
    .end local v3    # "quote":I
    :goto_0
    return-void

    .line 1019
    .restart local v3    # "quote":I
    :cond_4
    const-string v5, "QuoteRequiredInSystemID"

    invoke-virtual {p0, v5, v8}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1021
    :cond_5
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1022
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fString:Lmf/org/apache/xerces/xni/XMLString;

    .line 1023
    .local v1, "ident":Lmf/org/apache/xerces/xni/XMLString;
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5, v3, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v5

    if-eq v5, v3, :cond_9

    .line 1024
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1026
    :cond_6
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v5, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 1027
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    .line 1028
    .local v0, "c":I
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isMarkup(I)Z

    move-result v5

    if-nez v5, :cond_7

    const/16 v5, 0x5d

    if-ne v0, v5, :cond_b

    .line 1029
    :cond_7
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1039
    :cond_8
    :goto_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5, v3, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v5

    if-ne v5, v3, :cond_6

    .line 1040
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v5, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 1041
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 1043
    .end local v0    # "c":I
    :cond_9
    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1044
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1045
    const-string v5, "SystemIDUnterminated"

    invoke-virtual {p0, v5, v8}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    .end local v1    # "ident":Lmf/org/apache/xerces/xni/XMLString;
    .end local v3    # "quote":I
    :cond_a
    aput-object v4, p1, v9

    .line 1051
    aput-object v2, p1, v10

    goto :goto_0

    .line 1031
    .restart local v0    # "c":I
    .restart local v1    # "ident":Lmf/org/apache/xerces/xni/XMLString;
    .restart local v3    # "quote":I
    :cond_b
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1032
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/impl/XMLScanner;->scanSurrogates(Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    goto :goto_1

    .line 1034
    :cond_c
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLScanner;->isInvalidLiteral(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1035
    const-string v5, "InvalidCharInSystemID"

    .line 1036
    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 1035
    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1037
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    goto :goto_1
.end method

.method protected scanPI()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 615
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fReportEntity:Z

    .line 616
    const/4 v0, 0x0

    .line 617
    .local v0, "target":Ljava/lang/String;
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fNamespaces:Z

    if-eqz v1, :cond_1

    .line 618
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanNCName()Ljava/lang/String;

    move-result-object v0

    .line 622
    :goto_0
    if-nez v0, :cond_0

    .line 623
    const-string v1, "PITargetRequired"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLScanner;->scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V

    .line 628
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fReportEntity:Z

    .line 630
    return-void

    .line 620
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 12
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Lmf/org/apache/xerces/xni/XMLString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/16 v8, 0x3a

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 647
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 648
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 649
    .local v1, "c0":C
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 650
    .local v2, "c1":C
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 651
    .local v3, "c2":C
    const/16 v6, 0x78

    if-ne v1, v6, :cond_0

    const/16 v6, 0x6d

    if-ne v2, v6, :cond_0

    const/16 v6, 0x6c

    if-ne v3, v6, :cond_0

    .line 652
    const-string v6, "ReservedPITarget"

    invoke-virtual {p0, v6, v11}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    .end local v1    # "c0":C
    .end local v2    # "c1":C
    .end local v3    # "c2":C
    :cond_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v6

    if-nez v6, :cond_3

    .line 658
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, "?>"

    invoke-virtual {v6, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 660
    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/XMLString;->clear()V

    .line 699
    :goto_0
    return-void

    .line 664
    :cond_1
    iget-boolean v6, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fNamespaces:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v6

    if-ne v6, v8, :cond_7

    .line 665
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 666
    new-instance v4, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v4, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(Ljava/lang/String;)V

    .line 667
    .local v4, "colonName":Lmf/org/apache/xerces/util/XMLStringBuffer;
    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 668
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v5

    .line 669
    .local v5, "str":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 670
    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 671
    :cond_2
    const-string v6, "ColonNotLegalWithNS"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 680
    .end local v4    # "colonName":Lmf/org/apache/xerces/util/XMLStringBuffer;
    .end local v5    # "str":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v6}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 682
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, "?>"

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v6, v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanData(Ljava/lang/String;Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 684
    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    .line 685
    .local v0, "c":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_5

    .line 686
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 687
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/XMLScanner;->scanSurrogates(Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    .line 695
    :cond_5
    :goto_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, "?>"

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v6, v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanData(Ljava/lang/String;Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 697
    .end local v0    # "c":I
    :cond_6
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p2, v6}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    goto :goto_0

    .line 675
    :cond_7
    const-string v6, "SpaceRequiredInPI"

    invoke-virtual {p0, v6, v11}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 689
    .restart local v0    # "c":I
    :cond_8
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLScanner;->isInvalidLiteral(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 690
    const-string v6, "InvalidCharInPI"

    .line 691
    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 690
    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    goto :goto_2
.end method

.method public scanPseudoAttribute(ZLmf/org/apache/xerces/xni/XMLString;)Ljava/lang/String;
    .locals 8
    .param p1, "scanningTextDecl"    # Z
    .param p2, "value"    # Lmf/org/apache/xerces/xni/XMLString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 546
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getCurrentEntity()Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-result-object v4

    invoke-static {v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->print(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V

    .line 548
    if-nez v2, :cond_0

    .line 549
    const-string v4, "PseudoAttrNameExpected"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipDeclSpaces()Z

    .line 552
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 553
    if-eqz p1, :cond_8

    const-string v4, "EqRequiredInTextDecl"

    .line 554
    :goto_0
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    .line 553
    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipDeclSpaces()Z

    .line 557
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v3

    .line 558
    .local v3, "quote":I
    const/16 v4, 0x27

    if-eq v3, v4, :cond_2

    const/16 v4, 0x22

    if-eq v3, v4, :cond_2

    .line 559
    if-eqz p1, :cond_9

    const-string v4, "QuoteRequiredInTextDecl"

    .line 560
    :goto_1
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    .line 559
    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 563
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4, v3, p2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v0

    .line 564
    .local v0, "c":I
    if-eq v0, v3, :cond_6

    .line 565
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 567
    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, p2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 568
    const/4 v4, -0x1

    if-eq v0, v4, :cond_5

    .line 569
    const/16 v4, 0x26

    if-eq v0, v4, :cond_4

    const/16 v4, 0x25

    if-eq v0, v4, :cond_4

    const/16 v4, 0x3c

    if-eq v0, v4, :cond_4

    const/16 v4, 0x5d

    if-ne v0, v4, :cond_a

    .line 570
    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 586
    :cond_5
    :goto_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4, v3, p2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v0

    .line 587
    if-ne v0, v3, :cond_3

    .line 588
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, p2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 589
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p2, v4}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 591
    :cond_6
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 592
    if-eqz p1, :cond_d

    const-string v4, "CloseQuoteMissingInTextDecl"

    .line 594
    :goto_3
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    .line 592
    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    :cond_7
    return-object v2

    .line 554
    .end local v0    # "c":I
    .end local v3    # "quote":I
    :cond_8
    const-string v4, "EqRequiredInXMLDecl"

    goto/16 :goto_0

    .line 560
    .restart local v3    # "quote":I
    :cond_9
    const-string v4, "QuoteRequiredInXMLDecl"

    goto :goto_1

    .line 575
    .restart local v0    # "c":I
    :cond_a
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 576
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/XMLScanner;->scanSurrogates(Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    goto :goto_2

    .line 578
    :cond_b
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLScanner;->isInvalidLiteral(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 579
    if-eqz p1, :cond_c

    .line 580
    const-string v1, "InvalidCharInTextDecl"

    .line 582
    .local v1, "key":Ljava/lang/String;
    :goto_4
    new-array v4, v7, [Ljava/lang/Object;

    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 581
    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    goto :goto_2

    .line 580
    .end local v1    # "key":Ljava/lang/String;
    :cond_c
    const-string v1, "InvalidCharInXMLDecl"

    goto :goto_4

    .line 593
    :cond_d
    const-string v4, "CloseQuoteMissingInXMLDecl"

    goto :goto_3
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

    .line 1077
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    .line 1078
    .local v2, "quote":I
    const/16 v5, 0x27

    if-eq v2, v5, :cond_0

    const/16 v5, 0x22

    if-eq v2, v5, :cond_0

    .line 1079
    const-string v5, "QuoteRequiredInPublicID"

    invoke-virtual {p0, v5, v9}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v4

    .line 1118
    :goto_0
    return v1

    .line 1083
    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1085
    const/4 v3, 0x1

    .line 1086
    .local v3, "skipSpace":Z
    const/4 v1, 0x1

    .line 1088
    .local v1, "dataok":Z
    :cond_1
    :goto_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    .line 1089
    .local v0, "c":I
    if-eq v0, v8, :cond_2

    const/16 v5, 0xa

    if-eq v0, v5, :cond_2

    const/16 v5, 0xd

    if-ne v0, v5, :cond_3

    .line 1090
    :cond_2
    if-nez v3, :cond_1

    .line 1092
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1093
    const/4 v3, 0x1

    .line 1095
    goto :goto_1

    .line 1096
    :cond_3
    if-ne v0, v2, :cond_5

    .line 1097
    if-eqz v3, :cond_4

    .line 1099
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v5, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    .line 1101
    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1, v4}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    goto :goto_0

    .line 1104
    :cond_5
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isPubid(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1105
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v6, v0

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1106
    const/4 v3, 0x0

    .line 1107
    goto :goto_1

    .line 1108
    :cond_6
    const/4 v5, -0x1

    if-ne v0, v5, :cond_7

    .line 1109
    const-string v5, "PublicIDUnterminated"

    invoke-virtual {p0, v5, v9}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v4

    .line 1110
    goto :goto_0

    .line 1113
    :cond_7
    const/4 v1, 0x0

    .line 1114
    const-string v5, "InvalidCharInPublicID"

    .line 1115
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 1114
    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected scanSurrogates(Lmf/org/apache/xerces/util/XMLStringBuffer;)Z
    .locals 8
    .param p1, "buf"    # Lmf/org/apache/xerces/util/XMLStringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1435
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v1

    .line 1436
    .local v1, "high":I
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    .line 1437
    .local v2, "low":I
    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1438
    const-string v5, "InvalidCharInContent"

    .line 1439
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    .line 1438
    invoke-virtual {p0, v5, v4}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1458
    :goto_0
    return v3

    .line 1442
    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1445
    int-to-char v5, v1

    int-to-char v6, v2

    invoke-static {v5, v6}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    .line 1448
    .local v0, "c":I
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLScanner;->isInvalid(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1449
    const-string v5, "InvalidCharInContent"

    .line 1450
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    .line 1449
    invoke-virtual {p0, v5, v4}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1455
    :cond_1
    int-to-char v3, v1

    invoke-virtual {p1, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1456
    int-to-char v3, v2

    invoke-virtual {p1, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    move v3, v4

    .line 1458
    goto :goto_0
.end method

.method protected scanXMLDeclOrTextDecl(Z[Ljava/lang/String;)V
    .locals 18
    .param p1, "scanningTextDecl"    # Z
    .param p2, "pseudoAttributeValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 361
    const/4 v14, 0x0

    .line 362
    .local v14, "version":Ljava/lang/String;
    const/4 v9, 0x0

    .line 363
    .local v9, "encoding":Ljava/lang/String;
    const/4 v12, 0x0

    .line 366
    .local v12, "standalone":Ljava/lang/String;
    const/4 v5, 0x0

    .line 367
    .local v5, "STATE_VERSION":I
    const/4 v3, 0x1

    .line 368
    .local v3, "STATE_ENCODING":I
    const/4 v4, 0x2

    .line 369
    .local v4, "STATE_STANDALONE":I
    const/4 v2, 0x3

    .line 370
    .local v2, "STATE_DONE":I
    const/4 v13, 0x0

    .line 372
    .local v13, "state":I
    const/4 v8, 0x0

    .line 373
    .local v8, "dataFoundForTarget":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v15}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipDeclSpaces()Z

    move-result v11

    .line 381
    .local v11, "sawSpace":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v15}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getCurrentEntity()Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-result-object v6

    .line 382
    .local v6, "currEnt":Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;
    iget-boolean v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->literal:Z

    .line 383
    .local v7, "currLiteral":Z
    const/4 v15, 0x0

    iput-boolean v15, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->literal:Z

    .line 384
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v15}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v15

    const/16 v16, 0x3f

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 479
    if-eqz v7, :cond_0

    .line 480
    const/4 v15, 0x1

    iput-boolean v15, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->literal:Z

    .line 482
    :cond_0
    if-eqz p1, :cond_1

    const/4 v15, 0x3

    if-eq v13, v15, :cond_1

    .line 483
    const-string v15, "MorePseudoAttributes"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    :cond_1
    if-eqz p1, :cond_18

    .line 489
    if-nez v8, :cond_2

    if-nez v9, :cond_2

    .line 490
    const-string v15, "EncodingDeclRequired"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v16, 0x3f

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v15

    if-nez v15, :cond_3

    .line 501
    const-string v15, "XMLDeclUnterminated"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v16, 0x3e

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v15

    if-nez v15, :cond_4

    .line 504
    const-string v15, "XMLDeclUnterminated"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    :cond_4
    const/4 v15, 0x0

    aput-object v14, p2, v15

    .line 510
    const/4 v15, 0x1

    aput-object v9, p2, v15

    .line 511
    const/4 v15, 0x2

    aput-object v12, p2, v15

    .line 513
    return-void

    .line 385
    :cond_5
    const/4 v8, 0x1

    .line 386
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XMLScanner;->fString:Lmf/org/apache/xerces/xni/XMLString;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lmf/org/apache/xerces/impl/XMLScanner;->scanPseudoAttribute(ZLmf/org/apache/xerces/xni/XMLString;)Ljava/lang/String;

    move-result-object v10

    .line 387
    .local v10, "name":Ljava/lang/String;
    packed-switch v13, :pswitch_data_0

    .line 473
    const-string v15, "NoMorePseudoAttributes"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v15}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipDeclSpaces()Z

    move-result v11

    goto/16 :goto_0

    .line 389
    :pswitch_0
    sget-object v15, Lmf/org/apache/xerces/impl/XMLScanner;->fVersionSymbol:Ljava/lang/String;

    if-ne v10, v15, :cond_9

    .line 390
    if-nez v11, :cond_7

    .line 391
    if-eqz p1, :cond_8

    .line 392
    const-string v15, "SpaceRequiredBeforeVersionInTextDecl"

    .line 394
    :goto_3
    const/16 v16, 0x0

    .line 391
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XMLScanner;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v15}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v14

    .line 397
    const/4 v13, 0x1

    .line 398
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lmf/org/apache/xerces/impl/XMLScanner;->versionSupported(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 399
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/XMLScanner;->getVersionNotSupportedKey()Ljava/lang/String;

    move-result-object v15

    .line 400
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v14, v16, v17

    .line 399
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 393
    :cond_8
    const-string v15, "SpaceRequiredBeforeVersionInXMLDecl"

    goto :goto_3

    .line 403
    :cond_9
    sget-object v15, Lmf/org/apache/xerces/impl/XMLScanner;->fEncodingSymbol:Ljava/lang/String;

    if-ne v10, v15, :cond_e

    .line 404
    if-nez p1, :cond_a

    .line 405
    const-string v15, "VersionInfoRequired"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    :cond_a
    if-nez v11, :cond_b

    .line 408
    if-eqz p1, :cond_c

    .line 409
    const-string v15, "SpaceRequiredBeforeEncodingInTextDecl"

    .line 411
    :goto_4
    const/16 v16, 0x0

    .line 408
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XMLScanner;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v15}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v9

    .line 414
    if-eqz p1, :cond_d

    const/4 v13, 0x3

    .line 415
    :goto_5
    goto :goto_2

    .line 410
    :cond_c
    const-string v15, "SpaceRequiredBeforeEncodingInXMLDecl"

    goto :goto_4

    .line 414
    :cond_d
    const/4 v13, 0x2

    goto :goto_5

    .line 417
    :cond_e
    if-eqz p1, :cond_f

    .line 418
    const-string v15, "EncodingDeclRequired"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 421
    :cond_f
    const-string v15, "VersionInfoRequired"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 427
    :pswitch_1
    sget-object v15, Lmf/org/apache/xerces/impl/XMLScanner;->fEncodingSymbol:Ljava/lang/String;

    if-ne v10, v15, :cond_13

    .line 428
    if-nez v11, :cond_10

    .line 429
    if-eqz p1, :cond_11

    .line 430
    const-string v15, "SpaceRequiredBeforeEncodingInTextDecl"

    .line 432
    :goto_6
    const/16 v16, 0x0

    .line 429
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XMLScanner;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v15}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v9

    .line 435
    if-eqz p1, :cond_12

    const/4 v13, 0x3

    .line 438
    :goto_7
    goto/16 :goto_2

    .line 431
    :cond_11
    const-string v15, "SpaceRequiredBeforeEncodingInXMLDecl"

    goto :goto_6

    .line 435
    :cond_12
    const/4 v13, 0x2

    goto :goto_7

    .line 439
    :cond_13
    if-nez p1, :cond_15

    sget-object v15, Lmf/org/apache/xerces/impl/XMLScanner;->fStandaloneSymbol:Ljava/lang/String;

    if-ne v10, v15, :cond_15

    .line 440
    if-nez v11, :cond_14

    .line 441
    const-string v15, "SpaceRequiredBeforeStandalone"

    .line 442
    const/16 v16, 0x0

    .line 441
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XMLScanner;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v15}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 445
    const/4 v13, 0x3

    .line 446
    const-string v15, "yes"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "no"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 447
    const-string v15, "SDDeclInvalid"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v12, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 451
    :cond_15
    const-string v15, "EncodingDeclRequired"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 456
    :pswitch_2
    sget-object v15, Lmf/org/apache/xerces/impl/XMLScanner;->fStandaloneSymbol:Ljava/lang/String;

    if-ne v10, v15, :cond_17

    .line 457
    if-nez v11, :cond_16

    .line 458
    const-string v15, "SpaceRequiredBeforeStandalone"

    .line 459
    const/16 v16, 0x0

    .line 458
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XMLScanner;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v15}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 462
    const/4 v13, 0x3

    .line 463
    const-string v15, "yes"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "no"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 464
    const-string v15, "SDDeclInvalid"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v12, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 468
    :cond_17
    const-string v15, "EncodingDeclRequired"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 494
    .end local v10    # "name":Ljava/lang/String;
    :cond_18
    if-nez v8, :cond_2

    if-nez v14, :cond_2

    .line 495
    const-string v15, "VersionInfoRequired"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 295
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fValidation:Z

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    const-string v0, "http://apache.org/xml/features/scanner/notify-char-refs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fNotifyCharRefs:Z

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 270
    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "http://apache.org/xml/properties/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 273
    .local v0, "suffixLength":I
    const-string v1, "internal/symbol-table"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 274
    const-string v1, "internal/symbol-table"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    check-cast p2, Lmf/org/apache/xerces/util/SymbolTable;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 287
    .end local v0    # "suffixLength":I
    :cond_0
    :goto_0
    return-void

    .line 277
    .restart local v0    # "suffixLength":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v1, "internal/error-reporter"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 278
    const-string v1, "internal/error-reporter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    check-cast p2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    goto :goto_0

    .line 281
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v1, "internal/entity-manager"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 282
    const-string v1, "internal/entity-manager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    check-cast p2, Lmf/org/apache/xerces/impl/XMLEntityManager;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    goto :goto_0
.end method

.method public startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1212
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    .line 1214
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLScanner;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    .line 1216
    return-void
.end method

.method protected versionSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 1413
    const-string v0, "1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
