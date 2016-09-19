.class public Lmf/org/apache/xerces/impl/XMLNamespaceBinder;
.super Ljava/lang/Object;
.source "XMLNamespaceBinder.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/xni/parser/XMLDocumentFilter;


# static fields
.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"


# instance fields
.field private final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field protected fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field protected fNamespaces:Z

.field protected fOnlyPassPrefixMappingEvents:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 85
    new-array v0, v2, [Ljava/lang/String;

    .line 86
    const-string v1, "http://xml.org/sax/features/namespaces"

    aput-object v1, v0, v3

    .line 85
    sput-object v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 90
    new-array v0, v2, [Ljava/lang/Boolean;

    sput-object v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 95
    new-array v0, v4, [Ljava/lang/String;

    .line 96
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v1, v0, v3

    .line 97
    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v1, v0, v2

    .line 95
    sput-object v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 101
    new-array v0, v4, [Ljava/lang/Object;

    sput-object v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 151
    return-void
.end method


# virtual methods
.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 568
    :cond_0
    return-void
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 479
    :cond_0
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "rootElement"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 463
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 465
    :cond_0
    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
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
    const/4 v1, 0x1

    .line 546
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaces:Z

    if-eqz v0, :cond_1

    .line 547
    invoke-virtual {p0, p1, p2, p3, v1}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    .line 548
    invoke-virtual {p0, p1, p3, v1}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 627
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 630
    :cond_0
    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 639
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 640
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 642
    :cond_0
    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 599
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaces:Z

    if-eqz v0, :cond_1

    .line 600
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 657
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 658
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 660
    :cond_0
    return-void
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "featureId"    # Ljava/lang/String;

    .prologue
    .line 289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 294
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 290
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    sget-object v1, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    goto :goto_1

    .line 289
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getOnlyPassPrefixMappingEvents()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    return v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propertyId"    # Ljava/lang/String;

    .prologue
    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 312
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 308
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    sget-object v1, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_1

    .line 307
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V
    .locals 2
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .param p3, "isEmpty"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 827
    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 828
    .local v0, "eprefix":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 829
    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 830
    iput-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 834
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v1, :cond_1

    .line 835
    if-nez p3, :cond_1

    .line 836
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 841
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    .line 843
    return-void

    .line 827
    .end local v0    # "eprefix":Ljava/lang/String;
    :cond_2
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_0
.end method

.method protected handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;Z)V
    .locals 23
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .param p4, "isEmpty"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    .line 674
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v18, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 676
    const-string v19, "ElementXMLNSPrefix"

    .line 677
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    .line 678
    const/16 v21, 0x2

    .line 675
    invoke-virtual/range {v17 .. v21}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 682
    :cond_0
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v13

    .line 683
    .local v13, "length":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-lt v11, v13, :cond_4

    .line 753
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    .line 754
    move-object/from16 v0, p1

    iget-object v15, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 755
    .local v15, "prefix":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 756
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 757
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 759
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 761
    const-string v19, "ElementPrefixUnbound"

    .line 762
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    .line 763
    const/16 v21, 0x2

    .line 760
    invoke-virtual/range {v17 .. v21}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 767
    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-lt v11, v13, :cond_f

    .line 790
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v7

    .line 791
    .local v7, "attrCount":I
    const/4 v11, 0x0

    :goto_3
    add-int/lit8 v17, v7, -0x1

    move/from16 v0, v17

    if-lt v11, v0, :cond_14

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 811
    if-eqz p4, :cond_18

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 820
    :cond_3
    :goto_4
    return-void

    .line 684
    .end local v7    # "attrCount":I
    .end local v15    # "prefix":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v14

    .line 685
    .local v14, "localpart":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getPrefix(I)Ljava/lang/String;

    move-result-object v15

    .line 688
    .restart local v15    # "prefix":Ljava/lang/String;
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v15, v0, :cond_5

    .line 689
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_9

    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v14, v0, :cond_9

    .line 692
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 695
    .local v16, "uri":Ljava/lang/String;
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_6

    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v14, v0, :cond_6

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 697
    const-string v19, "CantBindXMLNS"

    .line 698
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 699
    const/16 v21, 0x2

    .line 696
    invoke-virtual/range {v17 .. v21}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 703
    :cond_6
    sget-object v17, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 705
    const-string v19, "CantBindXMLNS"

    .line 706
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 707
    const/16 v21, 0x2

    .line 704
    invoke-virtual/range {v17 .. v21}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 711
    :cond_7
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v14, v0, :cond_a

    .line 712
    sget-object v17, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 714
    const-string v19, "CantBindXML"

    .line 715
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 716
    const/16 v21, 0x2

    .line 713
    invoke-virtual/range {v17 .. v21}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 729
    :cond_8
    :goto_5
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v14, v0, :cond_b

    move-object v15, v14

    .line 738
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->prefixBoundToNullURI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 740
    const-string v19, "EmptyPrefixedAttName"

    .line 741
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 742
    const/16 v21, 0x2

    .line 739
    invoke-virtual/range {v17 .. v21}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 683
    .end local v16    # "uri":Ljava/lang/String;
    :cond_9
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 721
    .restart local v16    # "uri":Ljava/lang/String;
    :cond_a
    sget-object v17, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 723
    const-string v19, "CantBindXML"

    .line 724
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 725
    const/16 v21, 0x2

    .line 722
    invoke-virtual/range {v17 .. v21}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_5

    .line 729
    :cond_b
    sget-object v15, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_6

    .line 747
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_d

    .end local v16    # "uri":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    .restart local v16    # "uri":Ljava/lang/String;
    :cond_d
    const/16 v16, 0x0

    goto :goto_8

    .line 754
    .end local v14    # "localpart":Ljava/lang/String;
    .end local v15    # "prefix":Ljava/lang/String;
    .end local v16    # "uri":Ljava/lang/String;
    :cond_e
    sget-object v15, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_1

    .line 768
    .restart local v15    # "prefix":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v11, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 771
    .local v5, "aprefix":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v6, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 772
    .local v6, "arawname":Ljava/lang/String;
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v6, v0, :cond_12

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v18, v0

    sget-object v19, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface/range {v18 .. v19}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v11, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setName(ILmf/org/apache/xerces/xni/QName;)V

    .line 767
    :cond_10
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 770
    .end local v5    # "aprefix":Ljava/lang/String;
    .end local v6    # "arawname":Ljava/lang/String;
    :cond_11
    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_9

    .line 776
    .restart local v5    # "aprefix":Ljava/lang/String;
    .restart local v6    # "arawname":Ljava/lang/String;
    :cond_12
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v5, v0, :cond_10

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_13

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 780
    const-string v19, "AttributePrefixUnbound"

    .line 781
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v6, v20, v21

    const/16 v21, 0x2

    aput-object v5, v20, v21

    .line 782
    const/16 v21, 0x2

    .line 779
    invoke-virtual/range {v17 .. v21}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 784
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v11, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setName(ILmf/org/apache/xerces/xni/QName;)V

    goto :goto_a

    .line 792
    .end local v5    # "aprefix":Ljava/lang/String;
    .end local v6    # "arawname":Ljava/lang/String;
    .restart local v7    # "attrCount":I
    :cond_14
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v8

    .line 793
    .local v8, "auri":Ljava/lang/String;
    if-eqz v8, :cond_15

    sget-object v17, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v8, v0, :cond_16

    .line 791
    :cond_15
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 796
    :cond_16
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    .line 797
    .local v4, "alocalpart":Ljava/lang/String;
    add-int/lit8 v12, v11, 0x1

    .local v12, "j":I
    :goto_b
    if-ge v12, v7, :cond_15

    .line 798
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v9

    .line 799
    .local v9, "blocalpart":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v10

    .line 800
    .local v10, "buri":Ljava/lang/String;
    if-ne v4, v9, :cond_17

    if-ne v8, v10, :cond_17

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 802
    const-string v19, "AttributeNSNotUnique"

    .line 803
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v4, v20, v21

    const/16 v21, 0x2

    aput-object v8, v20, v21

    .line 804
    const/16 v21, 0x2

    .line 801
    invoke-virtual/range {v17 .. v21}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 797
    :cond_17
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 815
    .end local v4    # "alocalpart":Ljava/lang/String;
    .end local v8    # "auri":Ljava/lang/String;
    .end local v9    # "blocalpart":Ljava/lang/String;
    .end local v10    # "buri":Ljava/lang/String;
    .end local v12    # "j":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_4
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 584
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 587
    :cond_0
    return-void
.end method

.method protected prefixBoundToNullURI(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localpart"    # Ljava/lang/String;

    .prologue
    .line 848
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 503
    :cond_0
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 2
    .param p1, "componentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 204
    :try_start_0
    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaces:Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 212
    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 214
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaces:Z

    goto :goto_0
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0
    .param p1, "documentHandler"    # Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .prologue
    .line 321
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .line 322
    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0
    .param p1, "source"    # Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .prologue
    .line 336
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 337
    return-void
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
    .line 242
    return-void
.end method

.method public setOnlyPassPrefixMappingEvents(Z)V
    .locals 0
    .param p1, "onlyPassPrefixMappingEvents"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    .line 170
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
    .line 263
    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "http://apache.org/xml/properties/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 266
    .local v0, "suffixLength":I
    const-string v1, "internal/symbol-table"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 267
    const-string v1, "internal/symbol-table"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    check-cast p2, Lmf/org/apache/xerces/util/SymbolTable;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 277
    .end local v0    # "suffixLength":I
    :cond_0
    :goto_0
    return-void

    .line 270
    .restart local v0    # "suffixLength":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v1, "internal/error-reporter"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 271
    const-string v1, "internal/error-reporter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    check-cast p2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    goto :goto_0
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 618
    :cond_0
    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "namespaceContext"    # Lmf/org/apache/xerces/xni/NamespaceContext;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 420
    iput-object p3, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 422
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 425
    :cond_0
    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 524
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaces:Z

    if-eqz v0, :cond_1

    .line 525
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
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
    .line 366
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 369
    :cond_0
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 393
    :cond_0
    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "standalone"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 445
    :cond_0
    return-void
.end method
