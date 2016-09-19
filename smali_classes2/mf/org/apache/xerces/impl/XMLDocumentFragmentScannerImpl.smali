.class public Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;
.super Lmf/org/apache/xerces/impl/XMLScanner;
.source "XMLDocumentFragmentScannerImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/impl/XMLEntityHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;,
        Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;,
        Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;
    }
.end annotation


# static fields
.field protected static final DEBUG_CONTENT_SCANNING:Z = false

.field private static final DEBUG_DISPATCHER:Z = false

.field private static final DEBUG_SCANNER_STATE:Z = false

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NOTIFY_BUILTIN_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-builtin-refs"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCANNER_STATE_CDATA:I = 0xf

.field protected static final SCANNER_STATE_COMMENT:I = 0x2

.field protected static final SCANNER_STATE_CONTENT:I = 0x7

.field protected static final SCANNER_STATE_DOCTYPE:I = 0x4

.field protected static final SCANNER_STATE_END_OF_INPUT:I = 0xd

.field protected static final SCANNER_STATE_PI:I = 0x3

.field protected static final SCANNER_STATE_REFERENCE:I = 0x8

.field protected static final SCANNER_STATE_ROOT_ELEMENT:I = 0x6

.field protected static final SCANNER_STATE_START_OF_MARKUP:I = 0x1

.field protected static final SCANNER_STATE_TERMINATED:I = 0xe

.field protected static final SCANNER_STATE_TEXT_DECL:I = 0x10


# instance fields
.field protected final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field protected final fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

.field protected final fContentDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

.field protected fCurrentElement:Lmf/org/apache/xerces/xni/QName;

.field protected fDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

.field protected fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected final fElementQName:Lmf/org/apache/xerces/xni/QName;

.field protected final fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

.field protected fEntityStack:[I

.field protected fExternalSubsetResolver:Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

.field protected fHasExternalDTD:Z

.field protected fInScanContent:Z

.field protected fIsEntityDeclaredVC:Z

.field protected fMarkupDepth:I

.field protected fNotifyBuiltInRefs:Z

.field private final fQName:Lmf/org/apache/xerces/xni/QName;

.field private fSawSpace:Z

.field protected fScannerState:I

.field private final fSingleChar:[C

.field protected fStandalone:Z

.field private final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStrings:[Ljava/lang/String;

.field private fTempAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

.field protected final fTempString:Lmf/org/apache/xerces/xni/XMLString;

.field protected final fTempString2:Lmf/org/apache/xerces/xni/XMLString;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x4

    .line 132
    new-array v0, v2, [Ljava/lang/String;

    .line 133
    const-string v1, "http://xml.org/sax/features/namespaces"

    aput-object v1, v0, v5

    .line 134
    const-string v1, "http://xml.org/sax/features/validation"

    aput-object v1, v0, v6

    .line 135
    const-string v1, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    aput-object v1, v0, v3

    .line 136
    const-string v1, "http://apache.org/xml/features/scanner/notify-char-refs"

    aput-object v1, v0, v4

    .line 132
    sput-object v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 140
    new-array v0, v2, [Ljava/lang/Boolean;

    .line 143
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v3

    .line 144
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v4

    .line 140
    sput-object v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 148
    new-array v0, v2, [Ljava/lang/String;

    .line 149
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v1, v0, v5

    .line 150
    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v1, v0, v6

    .line 151
    const-string v1, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v1, v0, v3

    .line 152
    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v1, v0, v4

    .line 148
    sput-object v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 156
    new-array v0, v2, [Ljava/lang/Object;

    sput-object v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    .line 172
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 284
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLScanner;-><init>()V

    .line 184
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    .line 193
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    .line 213
    new-instance v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    .line 225
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    .line 233
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->createContentDispatcher()Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fContentDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    .line 238
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    .line 241
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 244
    new-instance v0, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    .line 247
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    .line 250
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString2:Lmf/org/apache/xerces/xni/XMLString;

    .line 253
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStrings:[Ljava/lang/String;

    .line 256
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 259
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 262
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fQName:Lmf/org/apache/xerces/xni/QName;

    .line 265
    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fSingleChar:[C

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    .line 284
    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    return-object v0
.end method

.method private handleCharacter(CLjava/lang/String;)V
    .locals 5
    .param p1, "c"    # C
    .param p2, "entity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1308
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    .line 1309
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p2, v3, v3, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1313
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fSingleChar:[C

    aput-char p1, v0, v4

    .line 1314
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fSingleChar:[C

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v4, v2}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 1315
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v0, v1, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1317
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    if-eqz v0, :cond_1

    .line 1318
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p2, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1321
    :cond_1
    return-void
.end method


# virtual methods
.method protected createContentDispatcher()Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;
    .locals 1

    .prologue
    .line 635
    new-instance v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;-><init>(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)V

    return-object v0
.end method

.method public endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 605
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v0, v0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v0, v1, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 608
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/4 v1, 0x0

    iput v1, v0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    .line 611
    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/XMLScanner;->endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 614
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    aget v1, v1, v2

    if-eq v0, v1, :cond_1

    .line 615
    const-string v0, "MarkupEntityMismatch"

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fScanningAttribute:Z

    if-nez v0, :cond_2

    .line 620
    const-string v0, "[xml]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 621
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 625
    :cond_2
    return-void
.end method

.method public getDispatcherName(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)Ljava/lang/String;
    .locals 1
    .param p1, "dispatcher"    # Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    .prologue
    .line 1447
    const-string v0, "null"

    return-object v0
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "featureId"    # Ljava/lang/String;

    .prologue
    .line 498
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 503
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 499
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    goto :goto_1

    .line 498
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propertyId"    # Ljava/lang/String;

    .prologue
    .line 516
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 521
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 517
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_1

    .line 516
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    sget-object v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    sget-object v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getScannerStateName(I)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1412
    packed-switch p1, :pswitch_data_0

    .line 1426
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "??? ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1413
    :pswitch_1
    const-string v0, "SCANNER_STATE_DOCTYPE"

    goto :goto_0

    .line 1414
    :pswitch_2
    const-string v0, "SCANNER_STATE_ROOT_ELEMENT"

    goto :goto_0

    .line 1415
    :pswitch_3
    const-string v0, "SCANNER_STATE_START_OF_MARKUP"

    goto :goto_0

    .line 1416
    :pswitch_4
    const-string v0, "SCANNER_STATE_COMMENT"

    goto :goto_0

    .line 1417
    :pswitch_5
    const-string v0, "SCANNER_STATE_PI"

    goto :goto_0

    .line 1418
    :pswitch_6
    const-string v0, "SCANNER_STATE_CONTENT"

    goto :goto_0

    .line 1419
    :pswitch_7
    const-string v0, "SCANNER_STATE_REFERENCE"

    goto :goto_0

    .line 1420
    :pswitch_8
    const-string v0, "SCANNER_STATE_END_OF_INPUT"

    goto :goto_0

    .line 1421
    :pswitch_9
    const-string v0, "SCANNER_STATE_TERMINATED"

    goto :goto_0

    .line 1422
    :pswitch_a
    const-string v0, "SCANNER_STATE_CDATA"

    goto :goto_0

    .line 1423
    :pswitch_b
    const-string v0, "SCANNER_STATE_TEXT_DECL"

    goto :goto_0

    .line 1412
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected handleEndElement(Lmf/org/apache/xerces/xni/QName;Z)I
    .locals 6
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "isEmpty"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1345
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 1347
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    .line 1348
    const-string v1, "ElementEntityMismatch"

    .line 1349
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v2, v4

    .line 1348
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1352
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fQName:Lmf/org/apache/xerces/xni/QName;

    .line 1353
    .local v0, "startElement":Lmf/org/apache/xerces/xni/QName;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    .line 1354
    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v1, v2, :cond_1

    .line 1355
    const-string v1, "ETagRequired"

    .line 1356
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v2, v4

    .line 1355
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1360
    :cond_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    if-eqz v1, :cond_2

    .line 1361
    iget-object v1, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 1365
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    .line 1366
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1369
    :cond_3
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    return v1
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
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 356
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XMLScanner;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 362
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setNamespaces(Z)V

    .line 365
    iput v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 366
    iput-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    .line 367
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->clear()V

    .line 368
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    .line 369
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    .line 370
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fIsEntityDeclaredVC:Z

    .line 371
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    .line 374
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 375
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fContentDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    .line 378
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fParserSettings:Z

    if-eqz v3, :cond_0

    .line 383
    :try_start_0
    const-string v3, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    :try_start_1
    const-string v3, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 391
    .local v1, "resolver":Ljava/lang/Object;
    instance-of v3, v1, Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

    if-eqz v3, :cond_1

    .line 392
    check-cast v1, Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

    .line 391
    .end local v1    # "resolver":Ljava/lang/Object;
    :goto_1
    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fExternalSubsetResolver:Lmf/org/apache/xerces/impl/ExternalSubsetResolver;
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 399
    :cond_0
    :goto_2
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    goto :goto_0

    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    .restart local v1    # "resolver":Ljava/lang/Object;
    :cond_1
    move-object v1, v2

    .line 392
    goto :goto_1

    .line 394
    .end local v1    # "resolver":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 395
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fExternalSubsetResolver:Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

    goto :goto_2
.end method

.method protected scanAttribute(Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 11
    .param p1, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 955
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    if-eqz v0, :cond_3

    .line 956
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    .line 964
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 965
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 966
    const-string v0, "EqRequiredInAttribute"

    .line 967
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v10

    .line 966
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 969
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 972
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v9

    .line 973
    .local v9, "oldLen":I
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v3}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 976
    .local v6, "attrIndex":I
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v0

    if-ne v9, v0, :cond_1

    .line 977
    const-string v0, "AttributeNotUnique"

    .line 978
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 979
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v10

    .line 977
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 983
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString2:Lmf/org/apache/xerces/xni/XMLString;

    .line 984
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fIsEntityDeclaredVC:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v0, p0

    .line 983
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanAttributeValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v7

    .line 986
    .local v7, "isSameNormalizedAttr":Z
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v6, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    .line 988
    if-nez v7, :cond_2

    .line 989
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString2:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v6, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->setNonNormalizedValue(ILjava/lang/String;)V

    .line 991
    :cond_2
    invoke-interface {p1, v6, v10}, Lmf/org/apache/xerces/xni/XMLAttributes;->setSpecified(IZ)V

    .line 994
    return-void

    .line 959
    .end local v6    # "attrIndex":I
    .end local v7    # "isSameNormalizedAttr":Z
    .end local v9    # "oldLen":I
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v8

    .line 960
    .local v8, "name":Ljava/lang/String;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v3, v8, v8, v3}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected scanCDATASection(Z)Z
    .locals 13
    .param p1, "complete"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x800

    const/4 v11, 0x1

    const/16 v10, 0x5d

    const/4 v9, 0x0

    .line 1064
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_0

    .line 1065
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v5, v9}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1069
    :cond_0
    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1070
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v6, "]]"

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v5, v6, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanData(Ljava/lang/String;Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1071
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v5, v5, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    if-lez v5, :cond_1

    .line 1072
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v5, v6, v9}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1074
    :cond_1
    const/4 v0, 0x0

    .line 1075
    .local v0, "brackets":I
    :goto_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5, v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1078
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_2

    if-lez v0, :cond_2

    .line 1079
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1080
    if-le v0, v12, :cond_7

    .line 1082
    div-int/lit16 v2, v0, 0x800

    .line 1083
    .local v2, "chunks":I
    rem-int/lit16 v4, v0, 0x800

    .line 1084
    .local v4, "remainder":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-lt v3, v12, :cond_5

    .line 1087
    const/4 v3, 0x0

    :goto_3
    if-lt v3, v2, :cond_6

    .line 1090
    if-eqz v4, :cond_2

    .line 1091
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iput v4, v5, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    .line 1092
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v5, v6, v9}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1102
    .end local v2    # "chunks":I
    .end local v3    # "i":I
    .end local v4    # "remainder":I
    :cond_2
    :goto_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1132
    iget v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 1135
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_3

    .line 1136
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v5, v9}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1139
    :cond_3
    return v11

    .line 1076
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1085
    .restart local v2    # "chunks":I
    .restart local v3    # "i":I
    .restart local v4    # "remainder":I
    :cond_5
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v5, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1084
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1088
    :cond_6
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v5, v6, v9}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1087
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1096
    .end local v2    # "chunks":I
    .end local v3    # "i":I
    .end local v4    # "remainder":I
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-lt v3, v0, :cond_8

    .line 1099
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v5, v6, v9}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_4

    .line 1097
    :cond_8
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v5, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1096
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1105
    .end local v3    # "i":I
    :cond_9
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_0

    .line 1106
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1107
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string v6, "]]"

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1108
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v5, v6, v9}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    .line 1112
    .end local v0    # "brackets":I
    :cond_a
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_b

    .line 1113
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v5, v6, v9}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1115
    :cond_b
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    .line 1116
    .local v1, "c":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isInvalidLiteral(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1117
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1118
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1119
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanSurrogates(Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    .line 1120
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_0

    .line 1121
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v5, v6, v9}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    .line 1125
    :cond_c
    const-string v5, "InvalidCharInCDSect"

    .line 1126
    new-array v6, v11, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v1, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1125
    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1127
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    goto/16 :goto_0
.end method

.method protected scanCharReference()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1211
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1212
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v2, v4}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanCharReferenceValue(Lmf/org/apache/xerces/util/XMLStringBuffer;Lmf/org/apache/xerces/util/XMLStringBuffer;)I

    move-result v1

    .line 1213
    .local v1, "ch":I
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 1214
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1216
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_2

    .line 1217
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyCharRefs:Z

    if-eqz v2, :cond_0

    .line 1218
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCharRefLiteral:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v4, v4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1220
    :cond_0
    const/4 v0, 0x0

    .line 1221
    .local v0, "augs":Lmf/org/apache/xerces/xni/Augmentations;
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fValidation:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_1

    .line 1222
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    if-eqz v2, :cond_3

    .line 1223
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    .line 1228
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    .line 1229
    const-string v2, "CHAR_REF_PROBABLE_WS"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v2, v3, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1232
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyCharRefs:Z

    if-eqz v2, :cond_2

    .line 1233
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCharRefLiteral:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1238
    .end local v0    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    :cond_2
    return-void

    .line 1226
    .restart local v0    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    :cond_3
    new-instance v2, Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    goto :goto_0
.end method

.method protected scanComment()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 726
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanComment(Lmf/org/apache/xerces/util/XMLStringBuffer;)V

    .line 727
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 730
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 734
    :cond_0
    return-void
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

    .line 1003
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    .line 1004
    .local v1, "content":Lmf/org/apache/xerces/xni/XMLString;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanContent(Lmf/org/apache/xerces/xni/XMLString;)I

    move-result v0

    .line 1005
    .local v0, "c":I
    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    .line 1007
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1008
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1009
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 1010
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1011
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 1012
    const/4 v0, -0x1

    .line 1014
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_1

    iget v2, v1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-lez v2, :cond_1

    .line 1015
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v2, v1, v5}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1018
    :cond_1
    if-ne v0, v4, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget v2, v2, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-nez v2, :cond_4

    .line 1019
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1020
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1024
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    .line 1029
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1030
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1031
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1034
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1035
    const-string v2, "CDEndInContent"

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1038
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v2, v2, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    if-eqz v2, :cond_3

    .line 1039
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v2, v3, v5}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1041
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    .line 1042
    const/4 v0, -0x1

    .line 1044
    :cond_4
    return v0

    .line 1032
    :cond_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_0
.end method

.method public scanDocument(Z)Z
    .locals 1
    .param p1, "complete"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    .line 323
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;->dispatch(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    const/4 v0, 0x0

    .line 331
    :goto_0
    return v0

    .line 328
    :cond_1
    if-nez p1, :cond_0

    .line 331
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected scanEndElement()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1160
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    .line 1171
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1172
    const-string v0, "ETagRequired"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1176
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 1177
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1178
    const-string v0, "ETagUnterminated"

    .line 1179
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 1178
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1181
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 1184
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 1187
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-ge v0, v1, :cond_2

    .line 1188
    const-string v0, "ElementEntityMismatch"

    .line 1189
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 1188
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1193
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_3

    .line 1194
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1197
    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    return v0
.end method

.method protected scanEntityReference()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1250
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    .line 1251
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1252
    const-string v1, "NameRequiredInReference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1296
    :goto_0
    return-void

    .line 1257
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1258
    const-string v1, "SemicolonRequiredInReference"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1260
    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 1263
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAmpSymbol:Ljava/lang/String;

    if-ne v0, v1, :cond_2

    .line 1264
    const/16 v1, 0x26

    sget-object v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAmpSymbol:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;)V

    goto :goto_0

    .line 1266
    :cond_2
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fLtSymbol:Ljava/lang/String;

    if-ne v0, v1, :cond_3

    .line 1267
    const/16 v1, 0x3c

    sget-object v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fLtSymbol:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;)V

    goto :goto_0

    .line 1269
    :cond_3
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fGtSymbol:Ljava/lang/String;

    if-ne v0, v1, :cond_4

    .line 1270
    const/16 v1, 0x3e

    sget-object v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fGtSymbol:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;)V

    goto :goto_0

    .line 1272
    :cond_4
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fQuotSymbol:Ljava/lang/String;

    if-ne v0, v1, :cond_5

    .line 1273
    const/16 v1, 0x22

    sget-object v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fQuotSymbol:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;)V

    goto :goto_0

    .line 1275
    :cond_5
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAposSymbol:Ljava/lang/String;

    if-ne v0, v1, :cond_6

    .line 1276
    const/16 v1, 0x27

    sget-object v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAposSymbol:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;)V

    goto :goto_0

    .line 1279
    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->isUnparsedEntity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1280
    const-string v1, "ReferenceToUnparsedEntity"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1283
    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->isDeclaredEntity(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1284
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fIsEntityDeclaredVC:Z

    if-eqz v1, :cond_9

    .line 1285
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fValidation:Z

    if-eqz v1, :cond_8

    .line 1286
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v3, "EntityNotDeclared"

    .line 1287
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    .line 1286
    invoke-virtual {v1, v2, v3, v4, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 1293
    :cond_8
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1, v0, v5}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1290
    :cond_9
    const-string v1, "EntityNotDeclared"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Lmf/org/apache/xerces/xni/XMLString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 705
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/XMLScanner;->scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V

    .line 706
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 709
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 713
    :cond_0
    return-void
.end method

.method protected scanStartElement()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3e

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 762
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    if-eqz v5, :cond_2

    .line 763
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    .line 769
    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 772
    .local v3, "rawname":Ljava/lang/String;
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v5

    iput-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    .line 775
    const/4 v1, 0x0

    .line 776
    .local v1, "empty":Z
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 779
    :goto_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v4

    .line 782
    .local v4, "sawSpace":Z
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    .line 783
    .local v0, "c":I
    if-ne v0, v7, :cond_3

    .line 784
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 811
    :goto_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_1

    .line 812
    if-eqz v1, :cond_9

    .line 815
    iget v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 817
    iget v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v7, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    if-ge v5, v6, :cond_0

    .line 818
    const-string v5, "ElementEntityMismatch"

    .line 819
    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v9

    .line 818
    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 822
    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v5, v6, v7, v8}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 825
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    .line 833
    :cond_1
    :goto_3
    return v1

    .line 766
    .end local v0    # "c":I
    .end local v1    # "empty":Z
    .end local v3    # "rawname":Ljava/lang/String;
    .end local v4    # "sawSpace":Z
    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v2

    .line 767
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v5, v8, v2, v2, v8}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 787
    .end local v2    # "name":Ljava/lang/String;
    .restart local v0    # "c":I
    .restart local v1    # "empty":Z
    .restart local v3    # "rawname":Ljava/lang/String;
    .restart local v4    # "sawSpace":Z
    :cond_3
    const/16 v5, 0x2f

    if-ne v0, v5, :cond_5

    .line 788
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 789
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 790
    const-string v5, "ElementUnterminated"

    .line 791
    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v9

    .line 790
    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 793
    :cond_4
    const/4 v1, 0x1

    .line 794
    goto :goto_2

    .line 796
    :cond_5
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNameStartChar(I)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v4, :cond_8

    .line 799
    :cond_6
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v4, :cond_8

    .line 800
    :cond_7
    const-string v5, "ElementUnterminated"

    .line 801
    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v9

    .line 800
    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 806
    :cond_8
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanAttribute(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    goto/16 :goto_1

    .line 828
    :cond_9
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v5, v6, v7, v8}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_3
.end method

.method protected scanStartElementAfterName()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v5, 0x3e

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 865
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 868
    .local v2, "rawname":Ljava/lang/String;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    .line 871
    const/4 v1, 0x0

    .line 872
    .local v1, "empty":Z
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 876
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    .line 877
    .local v0, "c":I
    if-ne v0, v5, :cond_2

    .line 878
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 908
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_1

    .line 909
    if-eqz v1, :cond_8

    .line 912
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 914
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-ge v3, v4, :cond_0

    .line 915
    const-string v3, "ElementEntityMismatch"

    .line 916
    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 915
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 919
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v3, v4, v5, v8}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 922
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    .line 930
    :cond_1
    :goto_2
    return v1

    .line 881
    :cond_2
    const/16 v3, 0x2f

    if-ne v0, v3, :cond_4

    .line 882
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 883
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 884
    const-string v3, "ElementUnterminated"

    .line 885
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    .line 884
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    :cond_3
    const/4 v1, 0x1

    .line 888
    goto :goto_1

    .line 890
    :cond_4
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNameStartChar(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fSawSpace:Z

    if-nez v3, :cond_7

    .line 893
    :cond_5
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fSawSpace:Z

    if-nez v3, :cond_7

    .line 894
    :cond_6
    const-string v3, "ElementUnterminated"

    .line 895
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    .line 894
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 900
    :cond_7
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanAttribute(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    .line 903
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v3

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fSawSpace:Z

    goto/16 :goto_0

    .line 925
    :cond_8
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v3, v4, v5, v8}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_2
.end method

.method protected scanStartElementName()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 845
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    if-eqz v1, :cond_0

    .line 846
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    .line 854
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fSawSpace:Z

    .line 855
    return-void

    .line 849
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v1, v2, v0, v0, v2}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected scanXMLDeclOrTextDecl(Z)V
    .locals 8
    .param p1, "scanningTextDecl"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 662
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStrings:[Ljava/lang/String;

    invoke-super {p0, p1, v5}, Lmf/org/apache/xerces/impl/XMLScanner;->scanXMLDeclOrTextDecl(Z[Ljava/lang/String;)V

    .line 663
    iget v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 666
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v2, v5, v4

    .line 667
    .local v2, "version":Ljava/lang/String;
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v0, v5, v3

    .line 668
    .local v0, "encoding":Ljava/lang/String;
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v1, v5, v6

    .line 671
    .local v1, "standalone":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v5, "yes"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_0
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    .line 672
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setStandalone(Z)V

    .line 675
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setXMLVersion(Ljava/lang/String;)V

    .line 678
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_0

    .line 679
    if-eqz p1, :cond_3

    .line 680
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v3, v2, v0, v7}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 688
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isEncodingExternallySpecified()Z

    move-result v3

    if-nez v3, :cond_1

    .line 689
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setEncoding(Ljava/lang/String;)V

    .line 692
    :cond_1
    return-void

    :cond_2
    move v3, v4

    .line 671
    goto :goto_0

    .line 683
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v3, v2, v0, v1, v7}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1
.end method

.method protected final setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V
    .locals 0
    .param p1, "dispatcher"    # Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    .prologue
    .line 1397
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    .line 1403
    return-void
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0
    .param p1, "documentHandler"    # Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .prologue
    .line 534
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .line 535
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
    .line 428
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/XMLScanner;->setFeature(Ljava/lang/String;Z)V

    .line 431
    const-string v1, "http://apache.org/xml/features/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "http://apache.org/xml/features/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 433
    .local v0, "suffixLength":I
    const-string v1, "scanner/notify-builtin-refs"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 434
    const-string v1, "scanner/notify-builtin-refs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    .line 439
    .end local v0    # "suffixLength":I
    :cond_0
    return-void
.end method

.method public setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 4
    .param p1, "inputSource"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    .line 299
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const-string v1, "$fragment$"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)V

    .line 301
    return-void
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
    .line 468
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/XMLScanner;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 471
    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "http://apache.org/xml/properties/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 473
    .local v0, "suffixLength":I
    const-string v1, "internal/entity-manager"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 474
    const-string v1, "internal/entity-manager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    check-cast p2, Lmf/org/apache/xerces/impl/XMLEntityManager;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    .line 486
    .end local v0    # "suffixLength":I
    :cond_0
    :goto_0
    return-void

    .line 478
    .restart local v0    # "suffixLength":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v1, "internal/entity-resolver"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 479
    const-string v1, "internal/entity-resolver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    instance-of v1, p2, Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

    if-eqz v1, :cond_2

    .line 481
    check-cast p2, Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

    .line 480
    .end local p2    # "value":Ljava/lang/Object;
    :goto_1
    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fExternalSubsetResolver:Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

    goto :goto_0

    .line 481
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const/4 p2, 0x0

    goto :goto_1
.end method

.method protected final setScannerState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1382
    iput p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    .line 1389
    return-void
.end method

.method public startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
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
    const/4 v4, 0x0

    .line 568
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 569
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 570
    .local v0, "entityarray":[I
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 571
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    .line 573
    .end local v0    # "entityarray":[I
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    aput v3, v1, v2

    .line 575
    invoke-super {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/XMLScanner;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 578
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->isEntityDeclInExternalSubset(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 579
    const-string v1, "MSG_REFERENCE_TO_EXTERNALLY_DECLARED_ENTITY_WHEN_STANDALONE"

    .line 580
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    .line 579
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fScanningAttribute:Z

    if-nez v1, :cond_2

    .line 585
    const-string v1, "[xml]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 586
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 590
    :cond_2
    return-void
.end method
