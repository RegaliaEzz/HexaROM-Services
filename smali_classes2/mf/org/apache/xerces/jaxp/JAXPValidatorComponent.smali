.class final Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;
.super Lmf/org/apache/xerces/jaxp/TeeXMLDocumentFilterImpl;
.source "JAXPValidatorComponent.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$DraconianErrorHandler;,
        Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;,
        Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;
    }
.end annotation


# static fields
.field private static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final noInfoProvider:Lmf/javax/xml/validation/TypeInfoProvider;


# instance fields
.field private fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

.field private fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;

.field private fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field private fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private final sax2xni:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;

.field private final typeInfoProvider:Lmf/javax/xml/validation/TypeInfoProvider;

.field private final validator:Lmf/javax/xml/validation/ValidatorHandler;

.field private final xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 550
    new-instance v0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->noInfoProvider:Lmf/javax/xml/validation/TypeInfoProvider;

    .line 569
    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/validation/ValidatorHandler;)V
    .locals 4
    .param p1, "validatorHandler"    # Lmf/javax/xml/validation/ValidatorHandler;

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/TeeXMLDocumentFilterImpl;-><init>()V

    .line 102
    new-instance v2, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;-><init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;)V

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    .line 103
    new-instance v2, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;

    invoke-direct {v2, p0, v3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;-><init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;)V

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->sax2xni:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;

    .line 132
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->validator:Lmf/javax/xml/validation/ValidatorHandler;

    .line 133
    invoke-virtual {p1}, Lmf/javax/xml/validation/ValidatorHandler;->getTypeInfoProvider()Lmf/javax/xml/validation/TypeInfoProvider;

    move-result-object v1

    .line 134
    .local v1, "tip":Lmf/javax/xml/validation/TypeInfoProvider;
    if-nez v1, :cond_0

    sget-object v1, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->noInfoProvider:Lmf/javax/xml/validation/TypeInfoProvider;

    .line 135
    :cond_0
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->typeInfoProvider:Lmf/javax/xml/validation/TypeInfoProvider;

    .line 138
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->validator:Lmf/javax/xml/validation/ValidatorHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 139
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->validator:Lmf/javax/xml/validation/ValidatorHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->sax2xni:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;

    invoke-virtual {v2, v3}, Lmf/javax/xml/validation/ValidatorHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 140
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->setSide(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 143
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->validator:Lmf/javax/xml/validation/ValidatorHandler;

    new-instance v3, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$2;

    invoke-direct {v3, p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$2;-><init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)V

    invoke-virtual {v2, v3}, Lmf/javax/xml/validation/ValidatorHandler;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 151
    new-instance v0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$3;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$3;-><init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)V

    .line 175
    .local v0, "rr":Lmf/org/w3c/dom/ls/LSResourceResolver;
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->validator:Lmf/javax/xml/validation/ValidatorHandler;

    invoke-virtual {v2, v0}, Lmf/javax/xml/validation/ValidatorHandler;->setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    .line 176
    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Lorg/xml/sax/Attributes;)V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->updateAttributes(Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/xni/XMLAttributes;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    return-object v0
.end method

.method static synthetic access$2(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;

    return-object v0
.end method

.method static synthetic access$3(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;

    return-void
.end method

.method static synthetic access$4(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/impl/XMLErrorReporter;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    return-object v0
.end method

.method static synthetic access$6(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-object v0
.end method

.method private symbolize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 543
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateAttributes(Lorg/xml/sax/Attributes;)V
    .locals 12
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 503
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    .line 504
    .local v5, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 540
    return-void

    .line 505
    :cond_0
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "aqn":Ljava/lang/String;
    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v7, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;)I

    move-result v4

    .line 507
    .local v4, "j":I
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, "av":Ljava/lang/String;
    const/4 v7, -0x1

    if-ne v4, v7, :cond_3

    .line 512
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 513
    .local v3, "idx":I
    if-gez v3, :cond_2

    .line 514
    const/4 v6, 0x0

    .line 519
    .local v6, "prefix":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    .line 520
    new-instance v8, Lmf/org/apache/xerces/xni/QName;

    .line 522
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 523
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 524
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 520
    invoke-direct {v8, v6, v9, v10, v11}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v9

    .line 519
    invoke-interface {v7, v8, v9, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 504
    .end local v3    # "idx":I
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 516
    .restart local v3    # "idx":I
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_1

    .line 528
    .end local v3    # "idx":I
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v7, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 530
    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-interface {v7, v4, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 200
    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;

    .line 201
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 202
    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 193
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 194
    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 187
    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;

    .line 188
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 189
    return-void
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "featureId"    # Ljava/lang/String;

    .prologue
    .line 593
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "propertyId"    # Ljava/lang/String;

    .prologue
    .line 597
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 586
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 207
    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;

    .line 208
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 209
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 2
    .param p1, "componentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 213
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 214
    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 216
    :try_start_0
    const-string v1, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 583
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 590
    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 180
    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    .line 181
    iput-object p3, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;

    .line 182
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    invoke-virtual {v0, p1, p2, v1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 183
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    .line 184
    return-void
.end method
