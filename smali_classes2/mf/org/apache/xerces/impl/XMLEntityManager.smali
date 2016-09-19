.class public Lmf/org/apache/xerces/impl/XMLEntityManager;
.super Ljava/lang/Object;
.source "XMLEntityManager.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final BUFFER_SIZE:Ljava/lang/String; = "http://apache.org/xml/properties/input-buffer-size"

.field private static final DEBUG_BUFFER:Z = false

.field private static final DEBUG_ENCODINGS:Z = false

.field private static final DEBUG_ENTITIES:Z = false

.field private static final DEBUG_RESOLVER:Z = false

.field public static final DEFAULT_BUFFER_SIZE:I = 0x800

.field public static final DEFAULT_INTERNAL_BUFFER_SIZE:I = 0x200

.field public static final DEFAULT_XMLDECL_BUFFER_SIZE:I = 0x40

.field private static final DTDEntity:Ljava/lang/String;

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final EXTERNAL_GENERAL_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field protected static final EXTERNAL_PARAMETER_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field private static GET_USER_DIR_SYSTEM_PROPERTY:Ljava/security/PrivilegedAction; = null

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final STANDARD_URI_CONFORMANT:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ENTITYDEF:Ljava/lang/String; = "http://apache.org/xml/features/warn-on-duplicate-entitydef"

.field private static final XMLEntity:Ljava/lang/String;

.field private static final gAfterEscaping1:[C

.field private static final gAfterEscaping2:[C

.field private static final gHexChs:[C

.field private static final gNeedEscaping:[Z

.field private static gUserDir:Ljava/lang/String;

.field private static gUserDirURI:Lmf/org/apache/xerces/util/URI;


# instance fields
.field protected fAllowJavaEncodings:Z

.field protected fBufferSize:I

.field private final fCharacterBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;

.field protected fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

.field protected fDeclaredEntities:Ljava/util/Hashtable;

.field protected final fEntities:Ljava/util/Hashtable;

.field private final fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

.field protected fEntityExpansionCount:I

.field protected fEntityExpansionLimit:I

.field protected fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

.field protected fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field protected fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

.field protected final fEntityStack:Ljava/util/Stack;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fExternalGeneralEntities:Z

.field protected fExternalParameterEntities:Z

.field protected fHasPEReferences:Z

.field protected fInExternalSubset:Z

.field private final fLargeByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

.field protected fReaderStack:Ljava/util/Stack;

.field private final fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

.field protected fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

.field private final fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

.field protected fStandalone:Z

.field protected fStrictURI:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private fTempByteBuffer:[B

.field protected fValidation:Z

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field protected fWarnDuplicateEntityDef:Z

.field protected fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

.field protected fXML11EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x6

    const/4 v8, 0x4

    const/4 v7, 0x1

    .line 166
    new-array v4, v9, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 167
    const-string v6, "http://xml.org/sax/features/validation"

    aput-object v6, v4, v5

    .line 168
    const-string v5, "http://xml.org/sax/features/external-general-entities"

    aput-object v5, v4, v7

    .line 169
    const-string v5, "http://xml.org/sax/features/external-parameter-entities"

    aput-object v5, v4, v10

    .line 170
    const-string v5, "http://apache.org/xml/features/allow-java-encodings"

    aput-object v5, v4, v11

    .line 171
    const-string v5, "http://apache.org/xml/features/warn-on-duplicate-entitydef"

    aput-object v5, v4, v8

    const/4 v5, 0x5

    .line 172
    const-string v6, "http://apache.org/xml/features/standard-uri-conformant"

    aput-object v6, v4, v5

    .line 166
    sput-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 176
    new-array v4, v9, [Ljava/lang/Boolean;

    .line 178
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v7

    .line 179
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v10

    .line 180
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v4, v11

    .line 181
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v4, v8

    const/4 v5, 0x5

    .line 182
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v4, v5

    .line 176
    sput-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 186
    new-array v4, v9, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 187
    const-string v6, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v6, v4, v5

    .line 188
    const-string v5, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v5, v4, v7

    .line 189
    const-string v5, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v5, v4, v10

    .line 190
    const-string v5, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v5, v4, v11

    .line 191
    const-string v5, "http://apache.org/xml/properties/input-buffer-size"

    aput-object v5, v4, v8

    const/4 v5, 0x5

    .line 192
    const-string v6, "http://apache.org/xml/properties/security-manager"

    aput-object v6, v4, v5

    .line 186
    sput-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 196
    new-array v4, v9, [Ljava/lang/Object;

    .line 201
    new-instance v5, Ljava/lang/Integer;

    const/16 v6, 0x800

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v8

    .line 196
    sput-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    .line 205
    const-string v4, "[xml]"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->XMLEntity:Ljava/lang/String;

    .line 206
    const-string v4, "[dtd]"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->DTDEntity:Ljava/lang/String;

    .line 1553
    const/16 v4, 0x80

    new-array v4, v4, [Z

    sput-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->gNeedEscaping:[Z

    .line 1555
    const/16 v4, 0x80

    new-array v4, v4, [C

    sput-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping1:[C

    .line 1557
    const/16 v4, 0x80

    new-array v4, v4, [C

    sput-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping2:[C

    .line 1558
    const/16 v4, 0x10

    new-array v4, v4, [C

    fill-array-data v4, :array_0

    sput-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->gHexChs:[C

    .line 1562
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v4, 0x1f

    if-le v2, v4, :cond_0

    .line 1567
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->gNeedEscaping:[Z

    const/16 v5, 0x7f

    aput-boolean v7, v4, v5

    .line 1568
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping1:[C

    const/16 v5, 0x7f

    const/16 v6, 0x37

    aput-char v6, v4, v5

    .line 1569
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping2:[C

    const/16 v5, 0x7f

    const/16 v6, 0x46

    aput-char v6, v4, v5

    .line 1570
    const/16 v4, 0xf

    new-array v1, v4, [C

    fill-array-data v1, :array_1

    .line 1572
    .local v1, "escChs":[C
    array-length v3, v1

    .line 1574
    .local v3, "len":I
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_1

    .line 1582
    new-instance v4, Lmf/org/apache/xerces/impl/XMLEntityManager$1;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/XMLEntityManager$1;-><init>()V

    sput-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->GET_USER_DIR_SYSTEM_PROPERTY:Ljava/security/PrivilegedAction;

    .line 1586
    return-void

    .line 1563
    .end local v1    # "escChs":[C
    .end local v3    # "len":I
    :cond_0
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->gNeedEscaping:[Z

    aput-boolean v7, v4, v2

    .line 1564
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping1:[C

    sget-object v5, Lmf/org/apache/xerces/impl/XMLEntityManager;->gHexChs:[C

    shr-int/lit8 v6, v2, 0x4

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    .line 1565
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping2:[C

    sget-object v5, Lmf/org/apache/xerces/impl/XMLEntityManager;->gHexChs:[C

    and-int/lit8 v6, v2, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    .line 1562
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1575
    .restart local v1    # "escChs":[C
    .restart local v3    # "len":I
    :cond_1
    aget-char v0, v1, v2

    .line 1576
    .local v0, "ch":C
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->gNeedEscaping:[Z

    aput-boolean v7, v4, v0

    .line 1577
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping1:[C

    sget-object v5, Lmf/org/apache/xerces/impl/XMLEntityManager;->gHexChs:[C

    shr-int/lit8 v6, v0, 0x4

    aget-char v5, v5, v6

    aput-char v5, v4, v0

    .line 1578
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping2:[C

    sget-object v5, Lmf/org/apache/xerces/impl/XMLEntityManager;->gHexChs:[C

    and-int/lit8 v6, v0, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v0

    .line 1574
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1558
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    .line 1570
    :array_1
    .array-data 2
        0x20s
        0x3cs
        0x3es
        0x23s
        0x25s
        0x22s
        0x7bs
        0x7ds
        0x7cs
        0x5cs
        0x5es
        0x7es
        0x5bs
        0x5ds
        0x60s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>(Lmf/org/apache/xerces/impl/XMLEntityManager;)V

    .line 386
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/XMLEntityManager;)V
    .locals 5
    .param p1, "entityManager"    # Lmf/org/apache/xerces/impl/XMLEntityManager;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalGeneralEntities:Z

    .line 248
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalParameterEntities:Z

    .line 300
    const/16 v1, 0x800

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    .line 304
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    .line 319
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    .line 339
    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionLimit:I

    .line 341
    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionCount:I

    .line 346
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    .line 349
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    .line 362
    new-instance v1, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    .line 365
    new-instance v1, Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    .line 368
    new-instance v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    .line 371
    new-instance v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fLargeByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    .line 374
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    .line 377
    new-instance v1, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    const/16 v3, 0x200

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;-><init>(II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCharacterBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;

    .line 1226
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    .line 399
    if-eqz p1, :cond_0

    .line 400
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getDeclaredEntities()Ljava/util/Hashtable;

    move-result-object v0

    .line 399
    :cond_0
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fDeclaredEntities:Ljava/util/Hashtable;

    .line 402
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setScannerVersion(S)V

    .line 403
    return-void
.end method

.method public static absolutizeAgainstUserDir(Lmf/org/apache/xerces/util/URI;)V
    .locals 1
    .param p0, "uri"    # Lmf/org/apache/xerces/util/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1702
    invoke-static {}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getUserDir()Lmf/org/apache/xerces/util/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/URI;->absolutize(Lmf/org/apache/xerces/util/URI;)V

    .line 1703
    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/XMLEntityManager;)Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCharacterBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;

    return-object v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/impl/XMLEntityManager;[B)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    return-void
.end method

.method static synthetic access$2(Lmf/org/apache/xerces/impl/XMLEntityManager;)[B
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    return-object v0
.end method

.method private createASCIIReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 2231
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    if-nez v0, :cond_0

    .line 2232
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->getBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    .line 2234
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/io/ASCIIReader;

    .line 2235
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    .line 2236
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v2

    .line 2237
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 2234
    invoke-direct {v0, p1, v1, v2, v3}, Lmf/org/apache/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0
.end method

.method private createLatin1Reader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 2245
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    if-nez v0, :cond_0

    .line 2246
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->getBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    .line 2248
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/io/Latin1Reader;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    invoke-direct {v0, p1, v1}, Lmf/org/apache/xerces/impl/io/Latin1Reader;-><init>(Ljava/io/InputStream;[B)V

    return-object v0
.end method

.method public static createOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 12
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1868
    const/4 v9, 0x0

    invoke-static {p0, v9, v11}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1869
    .local v0, "expanded":Ljava/lang/String;
    new-instance v7, Ljava/net/URL;

    if-eqz v0, :cond_2

    .end local v0    # "expanded":Ljava/lang/String;
    :goto_0
    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1870
    .local v7, "url":Ljava/net/URL;
    const/4 v4, 0x0

    .line 1871
    .local v4, "out":Ljava/io/OutputStream;
    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    .line 1872
    .local v6, "protocol":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 1874
    .local v2, "host":Ljava/lang/String;
    const-string v9, "file"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1875
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "localhost"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1876
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v7}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getPathWithoutEscapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1877
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1878
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 1879
    .local v5, "parent":Ljava/io/File;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1880
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 1883
    .end local v5    # "parent":Ljava/io/File;
    :cond_1
    new-instance v4, Ljava/io/FileOutputStream;

    .end local v4    # "out":Ljava/io/OutputStream;
    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1900
    .end local v1    # "file":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :goto_1
    return-object v4

    .end local v2    # "host":Ljava/lang/String;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v6    # "protocol":Ljava/lang/String;
    .end local v7    # "url":Ljava/net/URL;
    .restart local v0    # "expanded":Ljava/lang/String;
    :cond_2
    move-object v0, p0

    .line 1869
    goto :goto_0

    .line 1888
    .end local v0    # "expanded":Ljava/lang/String;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v6    # "protocol":Ljava/lang/String;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_3
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .line 1889
    .local v8, "urlCon":Ljava/net/URLConnection;
    invoke-virtual {v8, v10}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 1890
    invoke-virtual {v8, v11}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 1891
    invoke-virtual {v8, v10}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 1892
    instance-of v9, v8, Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_4

    move-object v3, v8

    .line 1895
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 1896
    .local v3, "httpCon":Ljava/net/HttpURLConnection;
    const-string v9, "PUT"

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1898
    .end local v3    # "httpCon":Ljava/net/HttpURLConnection;
    :cond_4
    invoke-virtual {v8}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    goto :goto_1
.end method

.method private createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "isBigEndian"    # Z

    .prologue
    .line 2211
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    if-nez v0, :cond_1

    .line 2212
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fLargeByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->getBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    .line 2219
    :cond_0
    :goto_0
    new-instance v0, Lmf/org/apache/xerces/impl/io/UTF16Reader;

    .line 2220
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    .line 2222
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v4

    .line 2223
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v5

    move-object v1, p1

    move v3, p2

    .line 2219
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/UTF16Reader;-><init>(Ljava/io/InputStream;[BZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0

    .line 2215
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    array-length v0, v0

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    if-ne v0, v1, :cond_0

    .line 2216
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->returnBuffer([B)V

    .line 2217
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fLargeByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->getBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    goto :goto_0
.end method

.method private createUTF8Reader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 2197
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    if-nez v0, :cond_0

    .line 2198
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->getBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    .line 2200
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;

    .line 2201
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    .line 2202
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v2

    .line 2203
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 2200
    invoke-direct {v0, p1, v1, v2, v3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11
    .param p0, "systemId"    # Ljava/lang/String;
    .param p1, "baseSystemId"    # Ljava/lang/String;
    .param p2, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1724
    if-nez p0, :cond_1

    move-object p0, v1

    .line 1783
    .end local p0    # "systemId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1729
    .restart local p0    # "systemId":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    .line 1730
    invoke-static {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemIdStrictOn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1735
    :cond_2
    :try_start_0
    invoke-static {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemIdStrictOff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 1737
    :catch_0
    move-exception v1

    .line 1742
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1747
    invoke-static {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1750
    .local v8, "id":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1751
    .local v6, "base":Lmf/org/apache/xerces/util/URI;
    const/4 v9, 0x0

    .line 1753
    .local v9, "uri":Lmf/org/apache/xerces/util/URI;
    if-eqz p1, :cond_3

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1754
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1755
    :cond_3
    invoke-static {}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getUserDir()Lmf/org/apache/xerces/util/URI;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 1773
    .end local v6    # "base":Lmf/org/apache/xerces/util/URI;
    .local v0, "base":Lmf/org/apache/xerces/util/URI;
    :goto_1
    :try_start_2
    new-instance v10, Lmf/org/apache/xerces/util/URI;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .end local v9    # "uri":Lmf/org/apache/xerces/util/URI;
    .local v10, "uri":Lmf/org/apache/xerces/util/URI;
    move-object v9, v10

    .line 1780
    .end local v10    # "uri":Lmf/org/apache/xerces/util/URI;
    .restart local v9    # "uri":Lmf/org/apache/xerces/util/URI;
    :goto_2
    if-eqz v9, :cond_0

    .line 1783
    invoke-virtual {v9}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1759
    .end local v0    # "base":Lmf/org/apache/xerces/util/URI;
    .restart local v6    # "base":Lmf/org/apache/xerces/util/URI;
    :cond_4
    :try_start_3
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    invoke-static {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v6    # "base":Lmf/org/apache/xerces/util/URI;
    .restart local v0    # "base":Lmf/org/apache/xerces/util/URI;
    goto :goto_1

    .line 1761
    .end local v0    # "base":Lmf/org/apache/xerces/util/URI;
    .restart local v6    # "base":Lmf/org/apache/xerces/util/URI;
    :catch_1
    move-exception v7

    .line 1762
    .local v7, "e":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    const/16 v1, 0x3a

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 1765
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    const-string v1, "file"

    const-string v2, ""

    invoke-static {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    .end local v6    # "base":Lmf/org/apache/xerces/util/URI;
    .restart local v0    # "base":Lmf/org/apache/xerces/util/URI;
    goto :goto_1

    .line 1768
    .end local v0    # "base":Lmf/org/apache/xerces/util/URI;
    .restart local v6    # "base":Lmf/org/apache/xerces/util/URI;
    :cond_5
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    invoke-static {}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getUserDir()Lmf/org/apache/xerces/util/URI;

    move-result-object v1

    invoke-static {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .end local v6    # "base":Lmf/org/apache/xerces/util/URI;
    .restart local v0    # "base":Lmf/org/apache/xerces/util/URI;
    goto :goto_1

    .line 1775
    .end local v0    # "base":Lmf/org/apache/xerces/util/URI;
    .end local v7    # "e":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    .restart local v6    # "base":Lmf/org/apache/xerces/util/URI;
    :catch_2
    move-exception v1

    move-object v0, v6

    .end local v6    # "base":Lmf/org/apache/xerces/util/URI;
    .restart local v0    # "base":Lmf/org/apache/xerces/util/URI;
    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method private static expandSystemIdStrictOff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "systemId"    # Ljava/lang/String;
    .param p1, "baseSystemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1828
    new-instance v1, Lmf/org/apache/xerces/util/URI;

    invoke-direct {v1, p0, v3}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    .line 1830
    .local v1, "systemURI":Lmf/org/apache/xerces/util/URI;
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->isAbsoluteURI()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1831
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 1860
    .end local p0    # "systemId":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1840
    .restart local p0    # "systemId":Ljava/lang/String;
    :cond_0
    new-instance v2, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>()V

    throw v2

    .line 1844
    :cond_1
    const/4 v0, 0x0

    .line 1845
    .local v0, "baseURI":Lmf/org/apache/xerces/util/URI;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 1846
    :cond_2
    invoke-static {}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getUserDir()Lmf/org/apache/xerces/util/URI;

    move-result-object v0

    .line 1857
    :cond_3
    :goto_1
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/URI;->absolutize(Lmf/org/apache/xerces/util/URI;)V

    .line 1860
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1849
    :cond_4
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    .end local v0    # "baseURI":Lmf/org/apache/xerces/util/URI;
    invoke-direct {v0, p1, v3}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    .line 1850
    .restart local v0    # "baseURI":Lmf/org/apache/xerces/util/URI;
    invoke-virtual {v0}, Lmf/org/apache/xerces/util/URI;->isAbsoluteURI()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1852
    invoke-static {}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getUserDir()Lmf/org/apache/xerces/util/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/URI;->absolutize(Lmf/org/apache/xerces/util/URI;)V

    goto :goto_1
.end method

.method private static expandSystemIdStrictOn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "systemId"    # Ljava/lang/String;
    .param p1, "baseSystemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1793
    new-instance v1, Lmf/org/apache/xerces/util/URI;

    invoke-direct {v1, p0, v3}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    .line 1795
    .local v1, "systemURI":Lmf/org/apache/xerces/util/URI;
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->isAbsoluteURI()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1816
    .end local p0    # "systemId":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1800
    .restart local p0    # "systemId":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 1801
    .local v0, "baseURI":Lmf/org/apache/xerces/util/URI;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 1802
    :cond_1
    invoke-static {}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getUserDir()Lmf/org/apache/xerces/util/URI;

    move-result-object v0

    .line 1813
    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/URI;->absolutize(Lmf/org/apache/xerces/util/URI;)V

    .line 1816
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1805
    :cond_3
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    .end local v0    # "baseURI":Lmf/org/apache/xerces/util/URI;
    invoke-direct {v0, p1, v3}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    .line 1806
    .restart local v0    # "baseURI":Lmf/org/apache/xerces/util/URI;
    invoke-virtual {v0}, Lmf/org/apache/xerces/util/URI;->isAbsoluteURI()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1808
    invoke-static {}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getUserDir()Lmf/org/apache/xerces/util/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/URI;->absolutize(Lmf/org/apache/xerces/util/URI;)V

    goto :goto_1
.end method

.method protected static fixURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x0

    const/16 v7, 0x2f

    .line 2265
    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 2267
    const/4 v4, 0x0

    .line 2270
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 2271
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2273
    .local v1, "ch1":C
    const/16 v5, 0x3a

    if-ne v1, v5, :cond_2

    .line 2274
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 2275
    .local v0, "ch0":C
    const/16 v5, 0x41

    if-lt v0, v5, :cond_0

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_0

    .line 2276
    new-instance v4, Ljava/lang/StringBuffer;

    .end local v4    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2277
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    const-string v5, "file:///"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2287
    .end local v0    # "ch0":C
    .end local v1    # "ch1":C
    :cond_0
    :goto_0
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 2290
    .local v3, "pos":I
    if-gez v3, :cond_3

    .line 2291
    if-eqz v4, :cond_1

    .line 2292
    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2293
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2318
    :cond_1
    :goto_1
    return-object p0

    .line 2281
    .end local v3    # "pos":I
    .restart local v1    # "ch1":C
    :cond_2
    if-ne v1, v7, :cond_0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_0

    .line 2282
    new-instance v4, Ljava/lang/StringBuffer;

    .end local v4    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2283
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    const-string v5, "file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2300
    .end local v1    # "ch1":C
    .restart local v3    # "pos":I
    :cond_3
    if-nez v4, :cond_4

    .line 2301
    new-instance v4, Ljava/lang/StringBuffer;

    .end local v4    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2303
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-lt v2, v3, :cond_5

    .line 2306
    const-string v5, "%20"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2308
    add-int/lit8 v2, v3, 0x1

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v2, v5, :cond_6

    .line 2314
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 2304
    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2303
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2309
    :cond_6
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_7

    .line 2310
    const-string v5, "%20"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2308
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2312
    :cond_7
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method private static getPathWithoutEscapes(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "origPath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    .line 1904
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x25

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 1906
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "%"

    invoke-direct {v4, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    .local v4, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1908
    .local v1, "result":Ljava/lang/StringBuffer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 1909
    .local v2, "size":I
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1910
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 1916
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1918
    .end local v0    # "i":I
    .end local v1    # "result":Ljava/lang/StringBuffer;
    .end local v2    # "size":I
    .end local v4    # "tokenizer":Ljava/util/StringTokenizer;
    .end local p0    # "origPath":Ljava/lang/String;
    :cond_0
    return-object p0

    .line 1911
    .restart local v0    # "i":I
    .restart local v1    # "result":Ljava/lang/StringBuffer;
    .restart local v2    # "size":I
    .restart local v4    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local p0    # "origPath":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1913
    .local v3, "token":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1914
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1910
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static declared-synchronized getUserDir()Lmf/org/apache/xerces/util/URI;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1600
    const-class v20, Lmf/org/apache/xerces/impl/XMLEntityManager;

    monitor-enter v20

    :try_start_0
    const-string v5, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1602
    .local v5, "userDir":Ljava/lang/String;
    :try_start_1
    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->GET_USER_DIR_SYSTEM_PROPERTY:Ljava/security/PrivilegedAction;

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1607
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 1608
    new-instance v2, Lmf/org/apache/xerces/util/URI;

    const-string v3, "file"

    const-string v4, ""

    const-string v5, ""

    .end local v5    # "userDir":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1690
    .restart local v5    # "userDir":Ljava/lang/String;
    :goto_1
    monitor-exit v20

    return-object v2

    .line 1612
    :cond_0
    :try_start_3
    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gUserDirURI:Lmf/org/apache/xerces/util/URI;

    if-eqz v2, :cond_1

    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gUserDir:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1613
    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gUserDirURI:Lmf/org/apache/xerces/util/URI;

    goto :goto_1

    .line 1617
    :cond_1
    sput-object v5, Lmf/org/apache/xerces/impl/XMLEntityManager;->gUserDir:Ljava/lang/String;

    .line 1619
    sget-char v19, Ljava/io/File;->separatorChar:C

    .line 1620
    .local v19, "separator":C
    const/16 v2, 0x2f

    move/from16 v0, v19

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 1622
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    .line 1623
    .local v18, "len":I
    new-instance v13, Ljava/lang/StringBuffer;

    mul-int/lit8 v2, v18, 0x3

    invoke-direct {v13, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1625
    .local v13, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x2

    move/from16 v0, v18

    if-lt v0, v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_2

    .line 1626
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v15

    .line 1627
    .local v15, "ch":I
    const/16 v2, 0x41

    if-lt v15, v2, :cond_2

    const/16 v2, 0x5a

    if-gt v15, v2, :cond_2

    .line 1628
    const/16 v2, 0x2f

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1633
    .end local v15    # "ch":I
    :cond_2
    const/16 v17, 0x0

    .line 1634
    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    .line 1651
    :cond_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 1653
    const/4 v14, 0x0

    .line 1656
    .local v14, "bytes":[B
    :try_start_4
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v14

    .line 1661
    :try_start_5
    array-length v0, v14

    move/from16 v18, v0

    .line 1664
    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    .line 1685
    .end local v14    # "bytes":[B
    :cond_4
    const-string v2, "/"

    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1686
    const/16 v2, 0x2f

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1688
    :cond_5
    new-instance v6, Lmf/org/apache/xerces/util/URI;

    const-string v7, "file"

    const-string v8, ""

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lmf/org/apache/xerces/impl/XMLEntityManager;->gUserDirURI:Lmf/org/apache/xerces/util/URI;

    .line 1690
    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gUserDirURI:Lmf/org/apache/xerces/util/URI;

    goto/16 :goto_1

    .line 1635
    :cond_6
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 1637
    .restart local v15    # "ch":I
    const/16 v2, 0x80

    if-ge v15, v2, :cond_3

    .line 1639
    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gNeedEscaping:[Z

    aget-boolean v2, v2, v15

    if-eqz v2, :cond_7

    .line 1640
    const/16 v2, 0x25

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1641
    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping1:[C

    aget-char v2, v2, v15

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1642
    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping2:[C

    aget-char v2, v2, v15

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1634
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 1646
    :cond_7
    int-to-char v2, v15

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 1600
    .end local v13    # "buffer":Ljava/lang/StringBuffer;
    .end local v15    # "ch":I
    .end local v17    # "i":I
    .end local v18    # "len":I
    .end local v19    # "separator":C
    :catchall_0
    move-exception v2

    monitor-exit v20

    throw v2

    .line 1657
    .restart local v13    # "buffer":Ljava/lang/StringBuffer;
    .restart local v14    # "bytes":[B
    .restart local v17    # "i":I
    .restart local v18    # "len":I
    .restart local v19    # "separator":C
    :catch_0
    move-exception v16

    .line 1659
    .local v16, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_6
    new-instance v2, Lmf/org/apache/xerces/util/URI;

    const-string v3, "file"

    const-string v4, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1665
    .end local v16    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_8
    aget-byte v12, v14, v17

    .line 1667
    .local v12, "b":B
    if-gez v12, :cond_9

    .line 1668
    add-int/lit16 v15, v12, 0x100

    .line 1669
    .restart local v15    # "ch":I
    const/16 v2, 0x25

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1670
    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gHexChs:[C

    shr-int/lit8 v3, v15, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1671
    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gHexChs:[C

    and-int/lit8 v3, v15, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1664
    .end local v15    # "ch":I
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 1673
    :cond_9
    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gNeedEscaping:[Z

    aget-boolean v2, v2, v12

    if-eqz v2, :cond_a

    .line 1674
    const/16 v2, 0x25

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1675
    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping1:[C

    aget-char v2, v2, v12

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1676
    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping2:[C

    aget-char v2, v2, v12

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 1679
    :cond_a
    int-to-char v2, v12

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 1604
    .end local v12    # "b":B
    .end local v13    # "buffer":Ljava/lang/StringBuffer;
    .end local v14    # "bytes":[B
    .end local v17    # "i":I
    .end local v18    # "len":I
    .end local v19    # "separator":C
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method static final print(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V
    .locals 0
    .param p0, "currentEntity"    # Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .prologue
    .line 2390
    return-void
.end method


# virtual methods
.method public addExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "literalSystemId"    # Ljava/lang/String;
    .param p4, "baseSystemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 521
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 522
    if-nez p4, :cond_1

    .line 524
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v9

    .line 525
    .local v9, "size":I
    if-nez v9, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p4

    .line 528
    :cond_0
    add-int/lit8 v8, v9, -0x1

    .local v8, "i":I
    :goto_0
    if-gez v8, :cond_3

    .line 537
    .end local v8    # "i":I
    .end local v9    # "size":I
    :cond_1
    :goto_1
    new-instance v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;

    .line 538
    new-instance v0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;

    .line 539
    invoke-static {p3, p4, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 538
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const/4 v1, 0x0

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    .line 537
    invoke-direct {v6, p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Z)V

    .line 540
    .local v6, "entity":Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    .end local v6    # "entity":Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
    :cond_2
    :goto_2
    return-void

    .line 530
    .restart local v8    # "i":I
    .restart local v9    # "size":I
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0, v8}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 531
    .local v7, "externalEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;
    iget-object v0, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v0, :cond_4

    iget-object v0, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 532
    iget-object v0, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p4

    .line 533
    goto :goto_1

    .line 528
    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 543
    .end local v7    # "externalEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;
    .end local v8    # "i":I
    .end local v9    # "size":I
    :cond_5
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z

    if-eqz v0, :cond_2

    .line 544
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 545
    const-string v2, "MSG_DUPLICATE_ENTITY_DEFINITION"

    .line 546
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 544
    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_2
.end method

.method public addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 481
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 482
    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    invoke-direct {v0, p1, p2, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 483
    .local v0, "entity":Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    .end local v0    # "entity":Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z

    if-eqz v1, :cond_0

    .line 487
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 488
    const-string v3, "MSG_DUPLICATE_ENTITY_DEFINITION"

    .line 489
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    .line 487
    invoke-virtual {v1, v2, v3, v4, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0
.end method

.method public addUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "baseSystemId"    # Ljava/lang/String;
    .param p5, "notation"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 605
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 606
    new-instance v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;

    .line 607
    new-instance v0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    .line 606
    invoke-direct {v6, p1, v0, p5, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Z)V

    .line 609
    .local v6, "entity":Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    .end local v6    # "entity":Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 614
    const-string v2, "MSG_DUPLICATE_ENTITY_DEFINITION"

    .line 615
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 613
    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0
.end method

.method public closeReaders()V
    .locals 2

    .prologue
    .line 1233
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 1240
    return-void

    .line 1235
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1236
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;
    .locals 12
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "isBigEndian"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2090
    const-string v5, "UTF-8"

    if-eq p2, v5, :cond_0

    if-nez p2, :cond_1

    .line 2091
    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createUTF8Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v5

    .line 2188
    :goto_0
    return-object v5

    .line 2095
    :cond_1
    const-string v5, "UTF-16"

    if-ne p2, v5, :cond_2

    if-eqz p3, :cond_2

    .line 2096
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, p1, v5}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object v5

    goto :goto_0

    .line 2100
    :cond_2
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2101
    .local v0, "ENCODING":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2102
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createUTF8Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v5

    goto :goto_0

    .line 2104
    :cond_3
    const-string v5, "UTF-16BE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2105
    invoke-direct {p0, p1, v9}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object v5

    goto :goto_0

    .line 2107
    :cond_4
    const-string v5, "UTF-16LE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2108
    invoke-direct {p0, p1, v10}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object v5

    goto :goto_0

    .line 2110
    :cond_5
    const-string v5, "ISO-10646-UCS-4"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2111
    if-eqz p3, :cond_7

    .line 2112
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2113
    .local v1, "isBE":Z
    if-eqz v1, :cond_6

    .line 2114
    new-instance v5, Lmf/org/apache/xerces/impl/io/UCSReader;

    const/16 v6, 0x8

    invoke-direct {v5, p1, v6}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    goto :goto_0

    .line 2116
    :cond_6
    new-instance v5, Lmf/org/apache/xerces/impl/io/UCSReader;

    const/4 v6, 0x4

    invoke-direct {v5, p1, v6}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    goto :goto_0

    .line 2119
    .end local v1    # "isBE":Z
    :cond_7
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v6, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 2120
    const-string v7, "EncodingByteOrderUnsupported"

    .line 2121
    new-array v8, v9, [Ljava/lang/Object;

    aput-object p2, v8, v10

    .line 2119
    invoke-virtual {v5, v6, v7, v8, v11}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 2125
    :cond_8
    const-string v5, "ISO-10646-UCS-2"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2126
    if-eqz p3, :cond_a

    .line 2127
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2128
    .restart local v1    # "isBE":Z
    if-eqz v1, :cond_9

    .line 2129
    new-instance v5, Lmf/org/apache/xerces/impl/io/UCSReader;

    invoke-direct {v5, p1, v11}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    goto :goto_0

    .line 2131
    :cond_9
    new-instance v5, Lmf/org/apache/xerces/impl/io/UCSReader;

    invoke-direct {v5, p1, v9}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    goto/16 :goto_0

    .line 2134
    .end local v1    # "isBE":Z
    :cond_a
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v6, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 2135
    const-string v7, "EncodingByteOrderUnsupported"

    .line 2136
    new-array v8, v9, [Ljava/lang/Object;

    aput-object p2, v8, v10

    .line 2134
    invoke-virtual {v5, v6, v7, v8, v11}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 2142
    :cond_b
    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->isValidIANAEncoding(Ljava/lang/String;)Z

    move-result v3

    .line 2143
    .local v3, "validIANA":Z
    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->isValidJavaEncoding(Ljava/lang/String;)Z

    move-result v4

    .line 2144
    .local v4, "validJava":Z
    if-eqz v3, :cond_c

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    if-eqz v5, :cond_d

    if-nez v4, :cond_d

    .line 2145
    :cond_c
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v6, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 2146
    const-string v7, "EncodingDeclInvalid"

    .line 2147
    new-array v8, v9, [Ljava/lang/Object;

    aput-object p2, v8, v10

    .line 2145
    invoke-virtual {v5, v6, v7, v8, v11}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 2157
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createLatin1Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v5

    goto/16 :goto_0

    .line 2161
    :cond_d
    invoke-static {v0}, Lmf/org/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2162
    .local v2, "javaEncoding":Ljava/lang/String;
    if-nez v2, :cond_10

    .line 2163
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    if-eqz v5, :cond_f

    .line 2164
    move-object v2, p2

    .line 2188
    :cond_e
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2167
    :cond_f
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v6, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 2168
    const-string v7, "EncodingDeclInvalid"

    .line 2169
    new-array v8, v9, [Ljava/lang/Object;

    aput-object p2, v8, v10

    .line 2167
    invoke-virtual {v5, v6, v7, v8, v11}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 2172
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createLatin1Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v5

    goto/16 :goto_0

    .line 2175
    :cond_10
    const-string v5, "ASCII"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2176
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createASCIIReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v5

    goto/16 :goto_0

    .line 2178
    :cond_11
    const-string v5, "ISO8859_1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2179
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createLatin1Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v5

    goto/16 :goto_0
.end method

.method endEntity()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1938
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    if-eqz v1, :cond_0

    .line 1939
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1947
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1955
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1956
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1960
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCharacterBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    # getter for: Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fCharacterBuffer:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->access$0(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->returnBuffer(Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;)V

    .line 1963
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    # getter for: Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fByteBuffer:[B
    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->access$1(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1964
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    # getter for: Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fByteBuffer:[B
    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->access$1(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)[B

    move-result-object v1

    array-length v1, v1

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    if-ne v1, v2, :cond_4

    .line 1965
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    # getter for: Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fByteBuffer:[B
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->access$1(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->returnBuffer([B)V

    .line 1973
    :cond_2
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1974
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 1973
    :cond_3
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 1975
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V

    .line 1982
    return-void

    .line 1968
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fLargeByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    # getter for: Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->fByteBuffer:[B
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->access$1(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->returnBuffer([B)V

    goto :goto_1

    .line 1949
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public endExternalSubset()V
    .locals 1

    .prologue
    .line 880
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    .line 881
    return-void
.end method

.method public getCurrentEntity()Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    return-object v0
.end method

.method public getCurrentResourceIdentifier()Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    return-object v0
.end method

.method getDeclaredEntities()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 2335
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    return-object v0
.end method

.method protected getEncodingInfo([BI)Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;
    .locals 10
    .param p1, "b4"    # [B
    .param p2, "count"    # I

    .prologue
    const/16 v9, 0xfe

    const/16 v8, 0x3f

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/16 v5, 0x3c

    .line 1994
    if-ge p2, v6, :cond_0

    .line 1995
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_8:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    .line 2066
    :goto_0
    return-object v4

    .line 1999
    :cond_0
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v0, v4, 0xff

    .line 2000
    .local v0, "b0":I
    const/4 v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v1, v4, 0xff

    .line 2001
    .local v1, "b1":I
    if-ne v0, v9, :cond_1

    const/16 v4, 0xff

    if-ne v1, v4, :cond_1

    .line 2003
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_16_BIG_ENDIAN_WITH_BOM:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    goto :goto_0

    .line 2005
    :cond_1
    const/16 v4, 0xff

    if-ne v0, v4, :cond_2

    if-ne v1, v9, :cond_2

    .line 2007
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_16_LITTLE_ENDIAN_WITH_BOM:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    goto :goto_0

    .line 2012
    :cond_2
    if-ge p2, v7, :cond_3

    .line 2013
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_8:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    goto :goto_0

    .line 2017
    :cond_3
    aget-byte v4, p1, v6

    and-int/lit16 v2, v4, 0xff

    .line 2018
    .local v2, "b2":I
    const/16 v4, 0xef

    if-ne v0, v4, :cond_4

    const/16 v4, 0xbb

    if-ne v1, v4, :cond_4

    const/16 v4, 0xbf

    if-ne v2, v4, :cond_4

    .line 2019
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_8_WITH_BOM:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    goto :goto_0

    .line 2024
    :cond_4
    const/4 v4, 0x4

    if-ge p2, v4, :cond_5

    .line 2025
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_8:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    goto :goto_0

    .line 2029
    :cond_5
    aget-byte v4, p1, v7

    and-int/lit16 v3, v4, 0xff

    .line 2030
    .local v3, "b3":I
    if-nez v0, :cond_6

    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-ne v3, v5, :cond_6

    .line 2032
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UCS_4_BIG_ENDIAN:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    goto :goto_0

    .line 2034
    :cond_6
    if-ne v0, v5, :cond_7

    if-nez v1, :cond_7

    if-nez v2, :cond_7

    if-nez v3, :cond_7

    .line 2036
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UCS_4_LITTLE_ENDIAN:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    goto :goto_0

    .line 2038
    :cond_7
    if-nez v0, :cond_8

    if-nez v1, :cond_8

    if-ne v2, v5, :cond_8

    if-nez v3, :cond_8

    .line 2041
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UCS_4_UNUSUAL_BYTE_ORDER:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    goto :goto_0

    .line 2043
    :cond_8
    if-nez v0, :cond_9

    if-ne v1, v5, :cond_9

    if-nez v2, :cond_9

    if-nez v3, :cond_9

    .line 2046
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UCS_4_UNUSUAL_BYTE_ORDER:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    goto :goto_0

    .line 2048
    :cond_9
    if-nez v0, :cond_a

    if-ne v1, v5, :cond_a

    if-nez v2, :cond_a

    if-ne v3, v8, :cond_a

    .line 2052
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_16_BIG_ENDIAN:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    goto :goto_0

    .line 2054
    :cond_a
    if-ne v0, v5, :cond_b

    if-nez v1, :cond_b

    if-ne v2, v8, :cond_b

    if-nez v3, :cond_b

    .line 2057
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_16_LITTLE_ENDIAN:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    goto :goto_0

    .line 2059
    :cond_b
    const/16 v4, 0x4c

    if-ne v0, v4, :cond_c

    const/16 v4, 0x6f

    if-ne v1, v4, :cond_c

    const/16 v4, 0xa7

    if-ne v2, v4, :cond_c

    const/16 v4, 0x94

    if-ne v3, v4, :cond_c

    .line 2062
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->EBCDIC:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    goto/16 :goto_0

    .line 2066
    :cond_c
    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_8:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    goto/16 :goto_0
.end method

.method public getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;
    .locals 3

    .prologue
    .line 1214
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    if-nez v0, :cond_1

    .line 1216
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    if-nez v0, :cond_0

    .line 1217
    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    .line 1219
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, v1, p0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->reset(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 1220
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    .line 1222
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "featureId"    # Ljava/lang/String;

    .prologue
    .line 1518
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1523
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 1519
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1520
    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    goto :goto_1

    .line 1518
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propertyId"    # Ljava/lang/String;

    .prologue
    .line 1536
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1541
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 1537
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1538
    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_1

    .line 1536
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1409
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1447
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method final hasPEReferences()Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fHasPEReferences:Z

    return v0
.end method

.method public isDeclaredEntity(Ljava/lang/String;)Z
    .locals 2
    .param p1, "entityName"    # Ljava/lang/String;

    .prologue
    .line 645
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    .line 646
    .local v0, "entity":Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEntityDeclInExternalSubset(Ljava/lang/String;)Z
    .locals 2
    .param p1, "entityName"    # Ljava/lang/String;

    .prologue
    .line 579
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    .line 580
    .local v0, "entity":Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
    if-nez v0, :cond_0

    .line 581
    const/4 v1, 0x0

    .line 583
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->isEntityDeclInExternalSubset()Z

    move-result v1

    goto :goto_0
.end method

.method public isExternalEntity(Ljava/lang/String;)Z
    .locals 2
    .param p1, "entityName"    # Ljava/lang/String;

    .prologue
    .line 562
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    .line 563
    .local v0, "entity":Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
    if-nez v0, :cond_0

    .line 564
    const/4 v1, 0x0

    .line 566
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->isExternal()Z

    move-result v1

    goto :goto_0
.end method

.method public isStandalone()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fStandalone:Z

    return v0
.end method

.method public isUnparsedEntity(Ljava/lang/String;)Z
    .locals 2
    .param p1, "entityName"    # Ljava/lang/String;

    .prologue
    .line 630
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    .line 631
    .local v0, "entity":Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
    if-nez v0, :cond_0

    .line 632
    const/4 v1, 0x0

    .line 634
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->isUnparsed()Z

    move-result v1

    goto :goto_0
.end method

.method final notifyHasPEReferences()V
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fHasPEReferences:Z

    .line 429
    return-void
.end method

.method public reset()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1349
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/SecurityManager;->getEntityExpansionLimit()I

    move-result v4

    :goto_0
    iput v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionLimit:I

    .line 1352
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fStandalone:Z

    .line 1353
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fHasPEReferences:Z

    .line 1354
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 1355
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->removeAllElements()V

    .line 1356
    iput v5, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionCount:I

    .line 1358
    iput-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 1360
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    if-eqz v4, :cond_0

    .line 1361
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v4, v5, p0, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->reset(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 1363
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    if-eqz v4, :cond_1

    .line 1364
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v4, v5, p0, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->reset(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 1390
    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fDeclaredEntities:Ljava/util/Hashtable;

    if-eqz v4, :cond_2

    .line 1391
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fDeclaredEntities:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1392
    .local v0, "entries":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1399
    .end local v0    # "entries":Ljava/util/Iterator;
    :cond_2
    iput-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    .line 1401
    return-void

    :cond_3
    move v4, v5

    .line 1349
    goto :goto_0

    .line 1393
    .restart local v0    # "entries":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1394
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 1395
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1396
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 6
    .param p1, "componentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1265
    :try_start_0
    const-string v2, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1270
    .local v1, "parser_settings":Z
    :goto_0
    if-nez v1, :cond_0

    .line 1272
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->reset()V

    .line 1343
    :goto_1
    return-void

    .line 1266
    .end local v1    # "parser_settings":Z
    :catch_0
    move-exception v0

    .line 1267
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    const/4 v1, 0x1

    .restart local v1    # "parser_settings":Z
    goto :goto_0

    .line 1278
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :cond_0
    :try_start_1
    const-string v2, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fValidation:Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1284
    :goto_2
    :try_start_2
    const-string v2, "http://xml.org/sax/features/external-general-entities"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalGeneralEntities:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1290
    :goto_3
    :try_start_3
    const-string v2, "http://xml.org/sax/features/external-parameter-entities"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalParameterEntities:Z
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1298
    :goto_4
    :try_start_4
    const-string v2, "http://apache.org/xml/features/allow-java-encodings"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fAllowJavaEncodings:Z
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1305
    :goto_5
    :try_start_5
    const-string v2, "http://apache.org/xml/features/warn-on-duplicate-entitydef"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1312
    :goto_6
    :try_start_6
    const-string v2, "http://apache.org/xml/features/standard-uri-conformant"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fStrictURI:Z
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1319
    :goto_7
    const-string v2, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 1320
    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 1322
    :try_start_7
    const-string v2, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1328
    :goto_8
    :try_start_8
    const-string v2, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    .line 1334
    :goto_9
    :try_start_9
    const-string v2, "http://apache.org/xml/properties/security-manager"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/util/SecurityManager;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;
    :try_end_9
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_9

    .line 1341
    :goto_a
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->reset()V

    goto :goto_1

    .line 1280
    :catch_1
    move-exception v0

    .line 1281
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fValidation:Z

    goto :goto_2

    .line 1286
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_2
    move-exception v0

    .line 1287
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalGeneralEntities:Z

    goto :goto_3

    .line 1292
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_3
    move-exception v0

    .line 1293
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalParameterEntities:Z

    goto :goto_4

    .line 1300
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_4
    move-exception v0

    .line 1301
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    goto :goto_5

    .line 1307
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_5
    move-exception v0

    .line 1308
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z

    goto :goto_6

    .line 1314
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_6
    move-exception v0

    .line 1315
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fStrictURI:Z

    goto :goto_7

    .line 1324
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_7
    move-exception v0

    .line 1325
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    goto :goto_8

    .line 1330
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_8
    move-exception v0

    .line 1331
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    goto :goto_9

    .line 1336
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_9
    move-exception v0

    .line 1337
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    goto :goto_a
.end method

.method public resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 8
    .param p1, "resourceIdentifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 667
    if-nez p1, :cond_1

    const/4 v5, 0x0

    .line 716
    :cond_0
    :goto_0
    return-object v5

    .line 668
    :cond_1
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v4

    .line 669
    .local v4, "publicId":Ljava/lang/String;
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    .line 670
    .local v2, "literalSystemId":Ljava/lang/String;
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v0

    .line 671
    .local v0, "baseSystemId":Ljava/lang/String;
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, "expandedSystemId":Ljava/lang/String;
    if-nez v1, :cond_5

    const/4 v3, 0x1

    .line 682
    .local v3, "needExpand":Z
    :goto_1
    if-nez v0, :cond_2

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v7, :cond_2

    .line 683
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v7}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    .line 684
    if-eqz v0, :cond_2

    .line 685
    const/4 v3, 0x1

    .line 689
    :cond_2
    const/4 v5, 0x0

    .line 690
    .local v5, "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-eqz v7, :cond_4

    .line 691
    if-eqz v3, :cond_3

    .line 692
    invoke-static {v2, v0, v6}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 694
    :cond_3
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setBaseSystemId(Ljava/lang/String;)V

    .line 695
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setExpandedSystemId(Ljava/lang/String;)V

    .line 696
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-interface {v6, p1}, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;->resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v5

    .line 704
    :cond_4
    if-nez v5, :cond_0

    .line 708
    new-instance v5, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .end local v5    # "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-direct {v5, v4, v2, v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    goto :goto_0

    .end local v3    # "needExpand":Z
    .end local v5    # "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_5
    move v3, v6

    .line 678
    goto :goto_1
.end method

.method public setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V
    .locals 0
    .param p1, "entityHandler"    # Lmf/org/apache/xerces/impl/XMLEntityHandler;

    .prologue
    .line 445
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    .line 446
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 1431
    const-string v1, "http://apache.org/xml/features/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1432
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "http://apache.org/xml/features/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 1433
    .local v0, "suffixLength":I
    const-string v1, "allow-java-encodings"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1434
    const-string v1, "allow-java-encodings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1435
    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    .line 1439
    .end local v0    # "suffixLength":I
    :cond_0
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 1469
    const-string v2, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1470
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "http://apache.org/xml/properties/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v1, v2, v3

    .line 1472
    .local v1, "suffixLength":I
    const-string v2, "internal/symbol-table"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1473
    const-string v2, "internal/symbol-table"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1474
    check-cast p2, Lmf/org/apache/xerces/util/SymbolTable;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 1506
    .end local v1    # "suffixLength":I
    :cond_0
    :goto_0
    return-void

    .line 1477
    .restart local v1    # "suffixLength":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v2, "internal/error-reporter"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1478
    const-string v2, "internal/error-reporter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1479
    check-cast p2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    goto :goto_0

    .line 1482
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v2, "internal/entity-resolver"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1483
    const-string v2, "internal/entity-resolver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1484
    check-cast p2, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    goto :goto_0

    .line 1487
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string v2, "input-buffer-size"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 1488
    const-string v2, "input-buffer-size"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, p2

    .line 1489
    check-cast v0, Ljava/lang/Integer;

    .line 1490
    .local v0, "bufferSize":Ljava/lang/Integer;
    if-eqz v0, :cond_4

    .line 1491
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_4

    .line 1492
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    .line 1493
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setBufferSize(I)V

    .line 1494
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->setBufferSize(I)V

    .line 1495
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fLargeByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    shl-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->setBufferSize(I)V

    .line 1496
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCharacterBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->setExternalBufferSize(I)V

    .line 1499
    .end local v0    # "bufferSize":Ljava/lang/Integer;
    :cond_4
    const-string v2, "security-manager"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1500
    const-string v2, "security-manager"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1501
    check-cast p2, Lmf/org/apache/xerces/util/SecurityManager;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    .line 1502
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SecurityManager;->getEntityExpansionLimit()I

    move-result v2

    :goto_1
    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionLimit:I

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setScannerVersion(S)V
    .locals 3
    .param p1, "version"    # S

    .prologue
    .line 1195
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1196
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    if-nez v0, :cond_0

    .line 1197
    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    .line 1199
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, v1, p0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->reset(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 1200
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    .line 1201
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V

    .line 1210
    :goto_0
    return-void

    .line 1203
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    if-nez v0, :cond_2

    .line 1204
    new-instance v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XML11EntityScanner;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    .line 1206
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, v1, p0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->reset(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 1207
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    .line 1208
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V

    goto :goto_0
.end method

.method public setStandalone(Z)V
    .locals 0
    .param p1, "standalone"    # Z

    .prologue
    .line 415
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fStandalone:Z

    .line 416
    return-void
.end method

.method public setupCurrentEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)Ljava/lang/String;
    .locals 37
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "xmlInputSource"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .param p3, "literal"    # Z
    .param p4, "isExternal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 946
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v33

    .line 947
    .local v33, "publicId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v30

    .line 948
    .local v30, "literalSystemId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v20

    .line 949
    .local v20, "baseSystemId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getEncoding()Ljava/lang/String;

    move-result-object v11

    .line 950
    .local v11, "encoding":Ljava/lang/String;
    if-eqz v11, :cond_5

    const/16 v23, 0x1

    .line 951
    .local v23, "encodingExternallySpecified":Z
    :goto_0
    const/16 v29, 0x0

    .line 952
    .local v29, "isBigEndian":Ljava/lang/Boolean;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    .line 955
    const/4 v8, 0x0

    .line 956
    .local v8, "stream":Ljava/io/InputStream;
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v9

    .line 958
    .local v9, "reader":Ljava/io/Reader;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fStrictURI:Z

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v25

    .line 959
    .local v25, "expandedSystemId":Ljava/lang/String;
    if-nez v20, :cond_0

    .line 960
    move-object/from16 v20, v25

    .line 962
    :cond_0
    if-nez v9, :cond_3

    .line 963
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v8

    .line 964
    if-nez v8, :cond_1

    .line 965
    new-instance v31, Ljava/net/URL;

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 966
    .local v31, "location":Ljava/net/URL;
    invoke-virtual/range {v31 .. v31}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v21

    .line 967
    .local v21, "connect":Ljava/net/URLConnection;
    move-object/from16 v0, v21

    instance-of v4, v0, Ljava/net/HttpURLConnection;

    if-nez v4, :cond_6

    .line 968
    invoke-virtual/range {v21 .. v21}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 1010
    .end local v21    # "connect":Ljava/net/URLConnection;
    .end local v31    # "location":Ljava/net/URL;
    :cond_1
    :goto_1
    new-instance v35, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;-><init>(Lmf/org/apache/xerces/impl/XMLEntityManager;Ljava/io/InputStream;)V

    .line 1011
    .local v35, "rewindableStream":Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;
    move-object/from16 v8, v35

    .line 1014
    if-nez v11, :cond_c

    .line 1016
    const/4 v4, 0x4

    new-array v0, v4, [B

    move-object/from16 v19, v0

    .line 1017
    .local v19, "b4":[B
    const/16 v22, 0x0

    .line 1018
    .local v22, "count":I
    :goto_2
    const/4 v4, 0x4

    move/from16 v0, v22

    if-lt v0, v4, :cond_9

    .line 1021
    const/4 v4, 0x4

    move/from16 v0, v22

    if-ne v0, v4, :cond_b

    .line 1022
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEncodingInfo([BI)Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    move-result-object v28

    .line 1023
    .local v28, "info":Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;
    move-object/from16 v0, v28

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->encoding:Ljava/lang/String;

    .line 1024
    move-object/from16 v0, v28

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->isBigEndian:Ljava/lang/Boolean;

    move-object/from16 v29, v0

    .line 1025
    invoke-virtual {v8}, Ljava/io/InputStream;->reset()V

    .line 1026
    move-object/from16 v0, v28

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->hasBOM:Z

    if-eqz v4, :cond_2

    .line 1030
    const-string v4, "UTF-8"

    if-ne v11, v4, :cond_a

    .line 1032
    const-wide/16 v4, 0x3

    invoke-virtual {v8, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 1041
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v8, v11, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v9

    .line 1176
    .end local v19    # "b4":[B
    .end local v22    # "count":I
    .end local v28    # "info":Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;
    .end local v35    # "rewindableStream":Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    invoke-virtual {v4, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-eqz v4, :cond_4

    .line 1180
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    :cond_4
    new-instance v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 1185
    new-instance v7, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    move-object/from16 v3, v25

    invoke-direct {v7, v0, v1, v2, v3}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    const/4 v13, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v12, p3

    move/from16 v14, p4

    invoke-direct/range {v4 .. v14}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;-><init>(Lmf/org/apache/xerces/impl/XMLEntityManager;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/io/InputStream;Ljava/io/Reader;[BLjava/lang/String;ZZZ)V

    .line 1184
    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 1187
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->setEncodingExternallySpecified(Z)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    move-object/from16 v3, v25

    invoke-virtual {v4, v0, v1, v2, v3}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    return-object v11

    .line 950
    .end local v8    # "stream":Ljava/io/InputStream;
    .end local v9    # "reader":Ljava/io/Reader;
    .end local v23    # "encodingExternallySpecified":Z
    .end local v25    # "expandedSystemId":Ljava/lang/String;
    .end local v29    # "isBigEndian":Ljava/lang/Boolean;
    :cond_5
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 971
    .restart local v8    # "stream":Ljava/io/InputStream;
    .restart local v9    # "reader":Ljava/io/Reader;
    .restart local v21    # "connect":Ljava/net/URLConnection;
    .restart local v23    # "encodingExternallySpecified":Z
    .restart local v25    # "expandedSystemId":Ljava/lang/String;
    .restart local v29    # "isBigEndian":Ljava/lang/Boolean;
    .restart local v31    # "location":Ljava/net/URL;
    :cond_6
    const/16 v26, 0x1

    .line 974
    .local v26, "followRedirects":Z
    move-object/from16 v0, p2

    instance-of v4, v0, Lmf/org/apache/xerces/util/HTTPInputSource;

    if-eqz v4, :cond_7

    move-object/from16 v36, v21

    .line 975
    check-cast v36, Ljava/net/HttpURLConnection;

    .local v36, "urlConnection":Ljava/net/HttpURLConnection;
    move-object/from16 v27, p2

    .line 976
    check-cast v27, Lmf/org/apache/xerces/util/HTTPInputSource;

    .line 979
    .local v27, "httpInputSource":Lmf/org/apache/xerces/util/HTTPInputSource;
    invoke-virtual/range {v27 .. v27}, Lmf/org/apache/xerces/util/HTTPInputSource;->getHTTPRequestProperties()Ljava/util/Iterator;

    move-result-object v32

    .line 980
    .local v32, "propIter":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8

    .line 986
    invoke-virtual/range {v27 .. v27}, Lmf/org/apache/xerces/util/HTTPInputSource;->getFollowHTTPRedirects()Z

    move-result v26

    .line 987
    if-nez v26, :cond_7

    .line 988
    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 992
    .end local v27    # "httpInputSource":Lmf/org/apache/xerces/util/HTTPInputSource;
    .end local v32    # "propIter":Ljava/util/Iterator;
    .end local v36    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_7
    invoke-virtual/range {v21 .. v21}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 998
    if-eqz v26, :cond_1

    .line 999
    invoke-virtual/range {v21 .. v21}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v34

    .line 1002
    .local v34, "redirect":Ljava/lang/String;
    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1003
    move-object/from16 v30, v34

    .line 1004
    move-object/from16 v25, v34

    goto/16 :goto_1

    .line 981
    .end local v34    # "redirect":Ljava/lang/String;
    .restart local v27    # "httpInputSource":Lmf/org/apache/xerces/util/HTTPInputSource;
    .restart local v32    # "propIter":Ljava/util/Iterator;
    .restart local v36    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_8
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map$Entry;

    .line 982
    .local v24, "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1019
    .end local v21    # "connect":Ljava/net/URLConnection;
    .end local v24    # "entry":Ljava/util/Map$Entry;
    .end local v26    # "followRedirects":Z
    .end local v27    # "httpInputSource":Lmf/org/apache/xerces/util/HTTPInputSource;
    .end local v31    # "location":Ljava/net/URL;
    .end local v32    # "propIter":Ljava/util/Iterator;
    .end local v36    # "urlConnection":Ljava/net/HttpURLConnection;
    .restart local v19    # "b4":[B
    .restart local v22    # "count":I
    .restart local v35    # "rewindableStream":Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;
    :cond_9
    invoke-virtual/range {v35 .. v35}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v19, v22

    .line 1018
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 1035
    .restart local v28    # "info":Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;
    :cond_a
    const-string v4, "UTF-16"

    if-ne v11, v4, :cond_2

    .line 1038
    const-wide/16 v4, 0x2

    invoke-virtual {v8, v4, v5}, Ljava/io/InputStream;->skip(J)J

    goto/16 :goto_3

    .line 1044
    .end local v28    # "info":Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v8, v11, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v9

    .line 1046
    goto/16 :goto_4

    .line 1050
    .end local v19    # "b4":[B
    .end local v22    # "count":I
    :cond_c
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 1053
    const-string v4, "UTF-8"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1054
    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v18, v0

    .line 1055
    .local v18, "b3":[I
    const/16 v22, 0x0

    .line 1056
    .restart local v22    # "count":I
    :goto_6
    const/4 v4, 0x3

    move/from16 v0, v22

    if-lt v0, v4, :cond_10

    .line 1061
    :cond_d
    const/4 v4, 0x3

    move/from16 v0, v22

    if-ne v0, v4, :cond_11

    .line 1062
    const/4 v4, 0x0

    aget v4, v18, v4

    const/16 v5, 0xef

    if-ne v4, v5, :cond_e

    const/4 v4, 0x1

    aget v4, v18, v4

    const/16 v5, 0xbb

    if-ne v4, v5, :cond_e

    const/4 v4, 0x2

    aget v4, v18, v4

    const/16 v5, 0xbf

    if-eq v4, v5, :cond_f

    .line 1064
    :cond_e
    invoke-virtual {v8}, Ljava/io/InputStream;->reset()V

    .line 1070
    :cond_f
    :goto_7
    const-string v4, "UTF-8"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v8, v4, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v9

    .line 1071
    goto/16 :goto_4

    .line 1057
    :cond_10
    invoke-virtual/range {v35 .. v35}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v4

    aput v4, v18, v22

    .line 1058
    aget v4, v18, v22

    const/4 v5, -0x1

    if-eq v4, v5, :cond_d

    .line 1056
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 1068
    :cond_11
    invoke-virtual {v8}, Ljava/io/InputStream;->reset()V

    goto :goto_7

    .line 1074
    .end local v18    # "b3":[I
    .end local v22    # "count":I
    :cond_12
    const-string v4, "UTF-16"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1075
    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v19, v0

    .line 1076
    .local v19, "b4":[I
    const/16 v22, 0x0

    .line 1077
    .restart local v22    # "count":I
    :goto_8
    const/4 v4, 0x4

    move/from16 v0, v22

    if-lt v0, v4, :cond_15

    .line 1082
    :cond_13
    invoke-virtual {v8}, Ljava/io/InputStream;->reset()V

    .line 1083
    const/4 v4, 0x2

    move/from16 v0, v22

    if-lt v0, v4, :cond_14

    .line 1084
    const/4 v4, 0x0

    aget v15, v19, v4

    .line 1085
    .local v15, "b0":I
    const/4 v4, 0x1

    aget v16, v19, v4

    .line 1086
    .local v16, "b1":I
    const/16 v4, 0xfe

    if-ne v15, v4, :cond_16

    const/16 v4, 0xff

    move/from16 v0, v16

    if-ne v0, v4, :cond_16

    .line 1088
    sget-object v29, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1089
    const-wide/16 v4, 0x2

    invoke-virtual {v8, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 1109
    .end local v15    # "b0":I
    .end local v16    # "b1":I
    :cond_14
    :goto_9
    const-string v4, "UTF-16"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v8, v4, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v9

    .line 1110
    goto/16 :goto_4

    .line 1078
    :cond_15
    invoke-virtual/range {v35 .. v35}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v4

    aput v4, v19, v22

    .line 1079
    aget v4, v19, v22

    const/4 v5, -0x1

    if-eq v4, v5, :cond_13

    .line 1077
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 1091
    .restart local v15    # "b0":I
    .restart local v16    # "b1":I
    :cond_16
    const/16 v4, 0xff

    if-ne v15, v4, :cond_17

    const/16 v4, 0xfe

    move/from16 v0, v16

    if-ne v0, v4, :cond_17

    .line 1093
    sget-object v29, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1094
    const-wide/16 v4, 0x2

    invoke-virtual {v8, v4, v5}, Ljava/io/InputStream;->skip(J)J

    goto :goto_9

    .line 1096
    :cond_17
    const/4 v4, 0x4

    move/from16 v0, v22

    if-ne v0, v4, :cond_14

    .line 1097
    const/4 v4, 0x2

    aget v17, v19, v4

    .line 1098
    .local v17, "b2":I
    const/4 v4, 0x3

    aget v18, v19, v4

    .line 1099
    .local v18, "b3":I
    if-nez v15, :cond_18

    const/16 v4, 0x3c

    move/from16 v0, v16

    if-ne v0, v4, :cond_18

    if-nez v17, :cond_18

    const/16 v4, 0x3f

    move/from16 v0, v18

    if-ne v0, v4, :cond_18

    .line 1101
    sget-object v29, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1103
    :cond_18
    const/16 v4, 0x3c

    if-ne v15, v4, :cond_14

    if-nez v16, :cond_14

    const/16 v4, 0x3f

    move/from16 v0, v17

    if-ne v0, v4, :cond_14

    if-nez v18, :cond_14

    .line 1105
    sget-object v29, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_9

    .line 1113
    .end local v15    # "b0":I
    .end local v16    # "b1":I
    .end local v17    # "b2":I
    .end local v18    # "b3":I
    .end local v19    # "b4":[I
    .end local v22    # "count":I
    :cond_19
    const-string v4, "ISO-10646-UCS-4"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1114
    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v19, v0

    .line 1115
    .restart local v19    # "b4":[I
    const/16 v22, 0x0

    .line 1116
    .restart local v22    # "count":I
    :goto_a
    const/4 v4, 0x4

    move/from16 v0, v22

    if-lt v0, v4, :cond_1c

    .line 1121
    :cond_1a
    invoke-virtual {v8}, Ljava/io/InputStream;->reset()V

    .line 1124
    const/4 v4, 0x4

    move/from16 v0, v22

    if-ne v0, v4, :cond_1b

    .line 1126
    const/4 v4, 0x0

    aget v4, v19, v4

    if-nez v4, :cond_1d

    const/4 v4, 0x1

    aget v4, v19, v4

    if-nez v4, :cond_1d

    const/4 v4, 0x2

    aget v4, v19, v4

    if-nez v4, :cond_1d

    const/4 v4, 0x3

    aget v4, v19, v4

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_1d

    .line 1127
    sget-object v29, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1134
    :cond_1b
    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v8, v11, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v9

    .line 1135
    goto/16 :goto_4

    .line 1117
    :cond_1c
    invoke-virtual/range {v35 .. v35}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v4

    aput v4, v19, v22

    .line 1118
    aget v4, v19, v22

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1a

    .line 1116
    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    .line 1130
    :cond_1d
    const/4 v4, 0x0

    aget v4, v19, v4

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_1b

    const/4 v4, 0x1

    aget v4, v19, v4

    if-nez v4, :cond_1b

    const/4 v4, 0x2

    aget v4, v19, v4

    if-nez v4, :cond_1b

    const/4 v4, 0x3

    aget v4, v19, v4

    if-nez v4, :cond_1b

    .line 1131
    sget-object v29, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b

    .line 1138
    .end local v19    # "b4":[I
    .end local v22    # "count":I
    :cond_1e
    const-string v4, "ISO-10646-UCS-2"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1139
    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v19, v0

    .line 1140
    .restart local v19    # "b4":[I
    const/16 v22, 0x0

    .line 1141
    .restart local v22    # "count":I
    :goto_c
    const/4 v4, 0x4

    move/from16 v0, v22

    if-lt v0, v4, :cond_21

    .line 1146
    :cond_1f
    invoke-virtual {v8}, Ljava/io/InputStream;->reset()V

    .line 1148
    const/4 v4, 0x4

    move/from16 v0, v22

    if-ne v0, v4, :cond_20

    .line 1150
    const/4 v4, 0x0

    aget v4, v19, v4

    if-nez v4, :cond_22

    const/4 v4, 0x1

    aget v4, v19, v4

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_22

    const/4 v4, 0x2

    aget v4, v19, v4

    if-nez v4, :cond_22

    const/4 v4, 0x3

    aget v4, v19, v4

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_22

    .line 1151
    sget-object v29, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1158
    :cond_20
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v8, v11, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v9

    .line 1159
    goto/16 :goto_4

    .line 1142
    :cond_21
    invoke-virtual/range {v35 .. v35}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v4

    aput v4, v19, v22

    .line 1143
    aget v4, v19, v22

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1f

    .line 1141
    add-int/lit8 v22, v22, 0x1

    goto :goto_c

    .line 1154
    :cond_22
    const/4 v4, 0x0

    aget v4, v19, v4

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_20

    const/4 v4, 0x1

    aget v4, v19, v4

    if-nez v4, :cond_20

    const/4 v4, 0x2

    aget v4, v19, v4

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_20

    const/4 v4, 0x3

    aget v4, v19, v4

    if-nez v4, :cond_20

    .line 1155
    sget-object v29, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_d

    .line 1161
    .end local v19    # "b4":[I
    .end local v22    # "count":I
    :cond_23
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v8, v11, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v9

    goto/16 :goto_4
.end method

.method public startDTDEntity(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 3
    .param p1, "xmlInputSource"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 870
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->DTDEntity:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)V

    .line 871
    return-void
.end method

.method public startDocumentEntity(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 3
    .param p1, "xmlInputSource"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 856
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->XMLEntity:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)V

    .line 857
    return-void
.end method

.method public startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "xmlInputSource"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .param p3, "literal"    # Z
    .param p4, "isExternal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 903
    invoke-virtual {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setupCurrentEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, "encoding":Ljava/lang/String;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    if-eqz v1, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionCount:I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionLimit:I

    if-le v1, v2, :cond_0

    .line 911
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 912
    const-string v3, "EntityExpansionLimitExceeded"

    .line 913
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionLimit:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v7

    .line 914
    const/4 v5, 0x2

    .line 911
    invoke-virtual {v1, v2, v3, v4, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 918
    iput v7, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionCount:I

    .line 922
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    if-eqz v1, :cond_1

    .line 923
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 926
    :cond_1
    return-void
.end method

.method public startEntity(Ljava/lang/String;Z)V
    .locals 27
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "literal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 734
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    .line 735
    .local v11, "entity":Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
    if-nez v11, :cond_1

    .line 736
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    if-eqz v4, :cond_0

    .line 737
    const/4 v10, 0x0

    .line 738
    .local v10, "encoding":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    .line 739
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    .line 740
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    const-string v5, "ENTITY_SKIPPED"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v5, v6}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v5, v10, v6}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    .line 743
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    const-string v5, "ENTITY_SKIPPED"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v5, v6}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v5}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 843
    .end local v10    # "encoding":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->isExternal()Z

    move-result v15

    .line 751
    .local v15, "external":Z
    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->isCachedDTD()Z

    move-result v4

    if-nez v4, :cond_9

    .line 752
    :cond_2
    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->isUnparsed()Z

    move-result v24

    .line 753
    .local v24, "unparsed":Z
    const-string v4, "%"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    .line 754
    .local v21, "parameter":Z
    if-eqz v21, :cond_5

    const/16 v17, 0x0

    .line 755
    .local v17, "general":Z
    :goto_1
    if-nez v24, :cond_4

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalGeneralEntities:Z

    if-eqz v4, :cond_4

    .line 756
    :cond_3
    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalParameterEntities:Z

    if-nez v4, :cond_9

    .line 757
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    if-eqz v4, :cond_0

    .line 758
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    .line 759
    const/4 v10, 0x0

    .restart local v10    # "encoding":Ljava/lang/String;
    move-object/from16 v16, v11

    .line 760
    check-cast v16, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;

    .line 764
    .local v16, "externalEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;
    move-object/from16 v0, v16

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v4, :cond_6

    move-object/from16 v0, v16

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v14

    .line 765
    .local v14, "extLitSysId":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, v16

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v4, :cond_7

    move-object/from16 v0, v16

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v13

    .line 766
    .local v13, "extBaseSysId":Ljava/lang/String;
    :goto_3
    const/4 v4, 0x0

    invoke-static {v14, v13, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 767
    .local v12, "expandedSystemId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    .line 768
    move-object/from16 v0, v16

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v4, :cond_8

    move-object/from16 v0, v16

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v4

    .line 767
    :goto_4
    invoke-virtual {v5, v4, v14, v13, v12}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    .line 771
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    const-string v5, "ENTITY_SKIPPED"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v5, v6}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v5, v10, v6}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    .line 774
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    const-string v5, "ENTITY_SKIPPED"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v5, v6}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v5}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    .line 754
    .end local v10    # "encoding":Ljava/lang/String;
    .end local v12    # "expandedSystemId":Ljava/lang/String;
    .end local v13    # "extBaseSysId":Ljava/lang/String;
    .end local v14    # "extLitSysId":Ljava/lang/String;
    .end local v16    # "externalEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;
    .end local v17    # "general":Z
    :cond_5
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 764
    .restart local v10    # "encoding":Ljava/lang/String;
    .restart local v16    # "externalEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;
    .restart local v17    # "general":Z
    :cond_6
    const/4 v14, 0x0

    goto :goto_2

    .line 765
    .restart local v14    # "extLitSysId":Ljava/lang/String;
    :cond_7
    const/4 v13, 0x0

    goto :goto_3

    .line 768
    .restart local v12    # "expandedSystemId":Ljava/lang/String;
    .restart local v13    # "extBaseSysId":Ljava/lang/String;
    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    .line 782
    .end local v10    # "encoding":Ljava/lang/String;
    .end local v12    # "expandedSystemId":Ljava/lang/String;
    .end local v13    # "extBaseSysId":Ljava/lang/String;
    .end local v14    # "extLitSysId":Ljava/lang/String;
    .end local v16    # "externalEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;
    .end local v17    # "general":Z
    .end local v21    # "parameter":Z
    .end local v24    # "unparsed":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v23

    .line 783
    .local v23, "size":I
    move/from16 v18, v23

    .local v18, "i":I
    :goto_5
    if-gez v18, :cond_a

    .line 827
    const/4 v3, 0x0

    .line 828
    .local v3, "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    if-eqz v15, :cond_12

    move-object/from16 v16, v11

    .line 829
    check-cast v16, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;

    .line 830
    .restart local v16    # "externalEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;
    move-object/from16 v0, v16

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v3

    .line 841
    .end local v16    # "externalEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v3, v2, v15}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)V

    goto/16 :goto_0

    .line 784
    .end local v3    # "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_a
    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 785
    move-object/from16 v0, p0

    iget-object v9, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    .line 787
    .local v9, "activeEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
    :goto_7
    iget-object v4, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    if-ne v4, v0, :cond_11

    .line 788
    new-instance v22, Ljava/lang/StringBuffer;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 789
    .local v22, "path":Ljava/lang/StringBuffer;
    add-int/lit8 v20, v18, 0x1

    .local v20, "j":I
    :goto_8
    move/from16 v0, v20

    move/from16 v1, v23

    if-lt v0, v1, :cond_d

    .line 794
    const-string v4, " -> "

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 795
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->name:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 796
    const-string v4, " -> "

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 797
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 798
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 799
    const-string v6, "RecursiveReference"

    .line 800
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v25, 0x0

    aput-object p1, v8, v25

    const/16 v25, 0x1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v8, v25

    .line 801
    const/16 v25, 0x2

    .line 798
    move/from16 v0, v25

    invoke-virtual {v4, v5, v6, v8, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 802
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    if-eqz v4, :cond_0

    .line 803
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    .line 804
    const/4 v10, 0x0

    .line 805
    .restart local v10    # "encoding":Ljava/lang/String;
    if-eqz v15, :cond_b

    move-object/from16 v16, v11

    .line 806
    check-cast v16, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;

    .line 808
    .restart local v16    # "externalEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;
    move-object/from16 v0, v16

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v4, :cond_e

    move-object/from16 v0, v16

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v14

    .line 809
    .restart local v14    # "extLitSysId":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, v16

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v4, :cond_f

    move-object/from16 v0, v16

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v13

    .line 810
    .restart local v13    # "extBaseSysId":Ljava/lang/String;
    :goto_a
    const/4 v4, 0x0

    invoke-static {v14, v13, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 811
    .restart local v12    # "expandedSystemId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    .line 812
    move-object/from16 v0, v16

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v4, :cond_10

    move-object/from16 v0, v16

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v4

    .line 811
    :goto_b
    invoke-virtual {v5, v4, v14, v13, v12}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    .end local v12    # "expandedSystemId":Ljava/lang/String;
    .end local v13    # "extBaseSysId":Ljava/lang/String;
    .end local v14    # "extLitSysId":Ljava/lang/String;
    .end local v16    # "externalEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    .line 816
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    const-string v5, "ENTITY_SKIPPED"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v5, v6}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v5, v10, v6}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 818
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    .line 819
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    const-string v5, "ENTITY_SKIPPED"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v5, v6}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v5}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    .line 786
    .end local v9    # "activeEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
    .end local v10    # "encoding":Ljava/lang/String;
    .end local v20    # "j":I
    .end local v22    # "path":Ljava/lang/StringBuffer;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    move-object v9, v4

    goto/16 :goto_7

    .line 790
    .restart local v9    # "activeEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
    .restart local v20    # "j":I
    .restart local v22    # "path":Ljava/lang/StringBuffer;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "activeEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
    check-cast v9, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    .line 791
    .restart local v9    # "activeEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
    const-string v4, " -> "

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 792
    iget-object v4, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->name:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 789
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_8

    .line 808
    .restart local v10    # "encoding":Ljava/lang/String;
    .restart local v16    # "externalEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;
    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_9

    .line 809
    .restart local v14    # "extLitSysId":Ljava/lang/String;
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_a

    .line 812
    .restart local v12    # "expandedSystemId":Ljava/lang/String;
    .restart local v13    # "extBaseSysId":Ljava/lang/String;
    :cond_10
    const/4 v4, 0x0

    goto :goto_b

    .line 783
    .end local v10    # "encoding":Ljava/lang/String;
    .end local v12    # "expandedSystemId":Ljava/lang/String;
    .end local v13    # "extBaseSysId":Ljava/lang/String;
    .end local v14    # "extLitSysId":Ljava/lang/String;
    .end local v16    # "externalEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;
    .end local v20    # "j":I
    .end local v22    # "path":Ljava/lang/StringBuffer;
    :cond_11
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_5

    .end local v9    # "activeEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
    .restart local v3    # "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :cond_12
    move-object/from16 v19, v11

    .line 835
    check-cast v19, Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;

    .line 836
    .local v19, "internalEntity":Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;
    new-instance v7, Ljava/io/StringReader;

    move-object/from16 v0, v19

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;->text:Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 837
    .local v7, "reader":Ljava/io/Reader;
    new-instance v3, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .end local v3    # "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    .restart local v3    # "xmlInputSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    goto/16 :goto_6
.end method

.method public startExternalSubset()V
    .locals 1

    .prologue
    .line 876
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    .line 877
    return-void
.end method
