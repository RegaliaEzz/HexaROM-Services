.class public Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;
.super Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;
.source "XMLDocumentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;,
        Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;,
        Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;,
        Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;,
        Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;
    }
.end annotation


# static fields
.field protected static final DISALLOW_DOCTYPE_DECL_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field protected static final DTD_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-scanner"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field protected static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCANNER_STATE_DTD_EXTERNAL:I = 0x12

.field protected static final SCANNER_STATE_DTD_EXTERNAL_DECLS:I = 0x13

.field protected static final SCANNER_STATE_DTD_INTERNAL_DECLS:I = 0x11

.field protected static final SCANNER_STATE_PROLOG:I = 0x5

.field protected static final SCANNER_STATE_TRAILING_MISC:I = 0xc

.field protected static final SCANNER_STATE_XML_DECL:I = 0x0

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"


# instance fields
.field private final fDTDDescription:Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

.field protected final fDTDDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

.field protected fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fDisallowDoctype:Z

.field protected fDoctypeName:Ljava/lang/String;

.field protected fDoctypePublicId:Ljava/lang/String;

.field protected fDoctypeSystemId:Ljava/lang/String;

.field private fExternalSubsetSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

.field protected fLoadExternalDTD:Z

.field protected fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field protected final fPrologDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

.field protected fScanningDTD:Z

.field protected fSeenDoctypeDecl:Z

.field private final fString:Lmf/org/apache/xerces/xni/XMLString;

.field private final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStrings:[Ljava/lang/String;

.field protected final fTrailingMiscDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field protected final fXMLDeclDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    new-array v0, v4, [Ljava/lang/String;

    .line 127
    const-string v1, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    aput-object v1, v0, v2

    .line 128
    const-string v1, "http://apache.org/xml/features/disallow-doctype-decl"

    aput-object v1, v0, v3

    .line 126
    sput-object v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 132
    new-array v0, v4, [Ljava/lang/Boolean;

    .line 133
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 134
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v3

    .line 132
    sput-object v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 138
    new-array v0, v5, [Ljava/lang/String;

    .line 139
    const-string v1, "http://apache.org/xml/properties/internal/dtd-scanner"

    aput-object v1, v0, v2

    .line 140
    const-string v1, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v1, v0, v3

    .line 141
    const-string v1, "http://apache.org/xml/properties/internal/namespace-context"

    aput-object v1, v0, v4

    .line 138
    sput-object v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 145
    new-array v0, v5, [Ljava/lang/Object;

    sput-object v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 230
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;-><init>()V

    .line 179
    new-instance v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    .line 197
    new-instance v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;-><init>(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fXMLDeclDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    .line 200
    new-instance v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;-><init>(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fPrologDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    .line 203
    new-instance v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;-><init>(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    .line 206
    new-instance v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;-><init>(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fTrailingMiscDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    .line 211
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStrings:[Ljava/lang/String;

    .line 214
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    .line 217
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 220
    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fExternalSubsetSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .line 223
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDescription:Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    .line 230
    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    return-object v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/xni/XMLString;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    return-object v0
.end method

.method static synthetic access$2(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fExternalSubsetSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    return-object v0
.end method

.method static synthetic access$3(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fExternalSubsetSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    return-void
.end method

.method static synthetic access$4(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDescription:Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    return-object v0
.end method


# virtual methods
.method protected createContentDispatcher()Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;
    .locals 1

    .prologue
    .line 539
    new-instance v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;-><init>(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)V

    return-object v0
.end method

.method public endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 522
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 525
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    const-string v0, "[xml]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 529
    :cond_0
    return-void
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "featureId"    # Ljava/lang/String;

    .prologue
    .line 448
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 453
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    return-object v1

    .line 449
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    goto :goto_1

    .line 448
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propertyId"    # Ljava/lang/String;

    .prologue
    .line 466
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 471
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    return-object v1

    .line 467
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 468
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_1

    .line 466
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 333
    invoke-super {p0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "featureIds":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v2, v1

    .line 335
    .local v2, "length":I
    :goto_0
    sget-object v4, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v4, v2

    new-array v0, v4, [Ljava/lang/String;

    .line 336
    .local v0, "combinedFeatureIds":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 337
    array-length v4, v1

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    :cond_0
    sget-object v4, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    sget-object v5, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v5, v5

    invoke-static {v4, v3, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    return-object v0

    .end local v0    # "combinedFeatureIds":[Ljava/lang/String;
    .end local v2    # "length":I
    :cond_1
    move v2, v3

    .line 334
    goto :goto_0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 387
    invoke-super {p0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "propertyIds":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v1, v2

    .line 389
    .local v1, "length":I
    :goto_0
    sget-object v4, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v4, v1

    new-array v0, v4, [Ljava/lang/String;

    .line 390
    .local v0, "combinedPropertyIds":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 391
    array-length v4, v2

    invoke-static {v2, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    :cond_0
    sget-object v4, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    sget-object v5, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v5, v5

    invoke-static {v4, v3, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    return-object v0

    .end local v0    # "combinedPropertyIds":[Ljava/lang/String;
    .end local v1    # "length":I
    :cond_1
    move v1, v3

    .line 388
    goto :goto_0
.end method

.method protected getScannerStateName(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 614
    sparse-switch p1, :sswitch_data_0

    .line 622
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->getScannerStateName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 615
    :sswitch_0
    const-string v0, "SCANNER_STATE_XML_DECL"

    goto :goto_0

    .line 616
    :sswitch_1
    const-string v0, "SCANNER_STATE_PROLOG"

    goto :goto_0

    .line 617
    :sswitch_2
    const-string v0, "SCANNER_STATE_TRAILING_MISC"

    goto :goto_0

    .line 618
    :sswitch_3
    const-string v0, "SCANNER_STATE_DTD_INTERNAL_DECLS"

    goto :goto_0

    .line 619
    :sswitch_4
    const-string v0, "SCANNER_STATE_DTD_EXTERNAL"

    goto :goto_0

    .line 620
    :sswitch_5
    const-string v0, "SCANNER_STATE_DTD_EXTERNAL_DECLS"

    goto :goto_0

    .line 614
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
        0xc -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_4
        0x13 -> :sswitch_5
    .end sparse-switch
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
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 270
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 273
    iput-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    .line 274
    iput-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    .line 275
    iput-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    .line 276
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    .line 277
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fScanningDTD:Z

    .line 278
    iput-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fExternalSubsetSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .line 280
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fParserSettings:Z

    if-nez v1, :cond_0

    .line 282
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->reset()V

    .line 284
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 285
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fXMLDeclDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    .line 325
    :goto_0
    return-void

    .line 291
    :cond_0
    :try_start_0
    const-string v1, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_1
    :try_start_1
    const-string v1, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDisallowDoctype:Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 304
    :goto_2
    const-string v1, "http://apache.org/xml/properties/internal/dtd-scanner"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    .line 306
    :try_start_2
    const-string v1, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 313
    :goto_3
    :try_start_3
    const-string v1, "http://apache.org/xml/properties/internal/namespace-context"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xni/NamespaceContext;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 316
    :goto_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    if-nez v1, :cond_1

    .line 317
    new-instance v1, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 319
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->reset()V

    .line 322
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 323
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fXMLDeclDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    goto :goto_1

    .line 299
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_1
    move-exception v0

    .line 300
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    goto :goto_2

    .line 308
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_2
    move-exception v0

    .line 309
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    goto :goto_3

    .line 315
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_3
    move-exception v1

    goto :goto_4
.end method

.method protected scanDoctypeDecl()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 548
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v1

    if-nez v1, :cond_0

    .line 549
    const-string v1, "MSG_SPACE_REQUIRED_BEFORE_ROOT_ELEMENT_TYPE_IN_DOCTYPEDECL"

    invoke-virtual {p0, v1, v7}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    .line 555
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 556
    const-string v1, "MSG_ROOT_ELEMENT_TYPE_REQUIRED"

    invoke-virtual {p0, v1, v7}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 561
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStrings:[Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanExternalID([Ljava/lang/String;Z)V

    .line 562
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v1, v1, v3

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    .line 563
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    .line 564
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 567
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    if-eqz v1, :cond_7

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fHasExternalDTD:Z

    .line 570
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fHasExternalDTD:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fExternalSubsetResolver:Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

    if-eqz v1, :cond_3

    .line 571
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDescription:Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getCurrentResourceIdentifier()Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    move-result-object v4

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, v7, v4, v7}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDescription:Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->setRootName(Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fExternalSubsetResolver:Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDescription:Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    invoke-interface {v1, v4}, Lmf/org/apache/xerces/impl/ExternalSubsetResolver;->getExternalSubset(Lmf/org/apache/xerces/xni/grammars/XMLDTDDescription;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fExternalSubsetSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .line 574
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fExternalSubsetSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    if-eqz v1, :cond_8

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fHasExternalDTD:Z

    .line 578
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_4

    .line 584
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fExternalSubsetSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    if-nez v1, :cond_9

    .line 585
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    invoke-interface {v1, v4, v5, v6, v7}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 593
    :cond_4
    :goto_2
    const/4 v0, 0x1

    .line 594
    .local v0, "internalSubset":Z
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x5b

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 595
    const/4 v0, 0x0

    .line 596
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 597
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x3e

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 598
    const-string v1, "DoctypedeclUnterminated"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 600
    :cond_5
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    .line 603
    :cond_6
    return v0

    .end local v0    # "internalSubset":Z
    :cond_7
    move v1, v3

    .line 567
    goto :goto_0

    :cond_8
    move v1, v3

    .line 574
    goto :goto_1

    .line 588
    :cond_9
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fExternalSubsetSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fExternalSubsetSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {v6}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v4, v5, v6, v7}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_2
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
    .line 361
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setFeature(Ljava/lang/String;Z)V

    .line 364
    const-string v1, "http://apache.org/xml/features/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "http://apache.org/xml/features/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 367
    .local v0, "suffixLength":I
    const-string v1, "nonvalidating/load-external-dtd"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 368
    const-string v1, "nonvalidating/load-external-dtd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    .line 379
    .end local v0    # "suffixLength":I
    :cond_0
    :goto_0
    return-void

    .line 372
    .restart local v0    # "suffixLength":I
    :cond_1
    const-string v1, "disallow-doctype-decl"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 373
    const-string v1, "disallow-doctype-decl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    goto :goto_0
.end method

.method public setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 1
    .param p1, "inputSource"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    .line 245
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startDocumentEntity(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    .line 247
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
    .line 415
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "http://apache.org/xml/properties/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 421
    .local v0, "suffixLength":I
    const-string v1, "internal/dtd-scanner"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 422
    const-string v1, "internal/dtd-scanner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 423
    check-cast v1, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    .line 425
    :cond_0
    const-string v1, "internal/namespace-context"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 426
    const-string v1, "internal/namespace-context"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    if-eqz p2, :cond_1

    .line 428
    check-cast p2, Lmf/org/apache/xerces/xni/NamespaceContext;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 435
    .end local v0    # "suffixLength":I
    :cond_1
    return-void
.end method

.method public startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
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
    .line 497
    invoke-super {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 500
    const-string v0, "[xml]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 505
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    const-string v0, "[xml]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    const/4 v3, 0x0

    invoke-interface {v0, v1, p3, v2, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 509
    :cond_1
    return-void
.end method
