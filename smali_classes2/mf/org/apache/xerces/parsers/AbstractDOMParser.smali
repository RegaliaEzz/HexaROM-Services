.class public Lmf/org/apache/xerces/parsers/AbstractDOMParser;
.super Lmf/org/apache/xerces/parsers/AbstractXMLDocumentParser;
.source "AbstractDOMParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;
    }
.end annotation


# static fields
.field protected static final CORE_DOCUMENT_CLASS_NAME:Ljava/lang/String; = "mf.org.apache.xerces.dom.CoreDocumentImpl"

.field protected static final CREATE_CDATA_NODES_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/create-cdata-nodes"

.field protected static final CREATE_ENTITY_REF_NODES:Ljava/lang/String; = "http://apache.org/xml/features/dom/create-entity-ref-nodes"

.field protected static final CURRENT_ELEMENT_NODE:Ljava/lang/String; = "http://apache.org/xml/properties/dom/current-element-node"

.field private static final DEBUG_BASEURI:Z = false

.field private static final DEBUG_EVENTS:Z = false

.field protected static final DEFAULT_DOCUMENT_CLASS_NAME:Ljava/lang/String; = "mf.org.apache.xerces.dom.DocumentImpl"

.field protected static final DEFER_NODE_EXPANSION:Ljava/lang/String; = "http://apache.org/xml/features/dom/defer-node-expansion"

.field protected static final DOCUMENT_CLASS_NAME:Ljava/lang/String; = "http://apache.org/xml/properties/dom/document-class-name"

.field protected static final INCLUDE_COMMENTS_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/include-comments"

.field protected static final INCLUDE_IGNORABLE_WHITESPACE:Ljava/lang/String; = "http://apache.org/xml/features/dom/include-ignorable-whitespace"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final PSVI_DOCUMENT_CLASS_NAME:Ljava/lang/String; = "mf.org.apache.xerces.dom.PSVIDocumentImpl"

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;


# instance fields
.field private final fAttrQName:Lmf/org/apache/xerces/xni/QName;

.field protected final fBaseURIStack:Ljava/util/Stack;

.field protected fCreateCDATANodes:Z

.field protected fCreateEntityRefNodes:Z

.field protected fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

.field protected fCurrentCDATASectionIndex:I

.field protected fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

.field protected fCurrentNode:Lmf/org/w3c/dom/Node;

.field protected fCurrentNodeIndex:I

.field protected fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

.field protected fDeferNodeExpansion:Z

.field protected fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

.field protected fDeferredEntityDecl:I

.field protected fDocument:Lmf/org/w3c/dom/Document;

.field protected fDocumentClassName:Ljava/lang/String;

.field protected fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

.field protected fDocumentIndex:I

.field protected fDocumentType:Lmf/org/w3c/dom/DocumentType;

.field protected fDocumentTypeIndex:I

.field protected fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

.field protected fFilterReject:Z

.field protected fFirstChunk:Z

.field protected fInCDATASection:Z

.field protected fInDTD:Z

.field protected fInDTDExternalSubset:Z

.field protected fInEntityRef:Z

.field protected fIncludeComments:Z

.field protected fIncludeIgnorableWhitespace:Z

.field protected fInternalSubset:Ljava/lang/StringBuffer;

.field private fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fNamespaceAware:Z

.field protected fRejectedElementDepth:I

.field protected fRoot:Lmf/org/w3c/dom/Node;

.field protected fSkippedElemStack:Ljava/util/Stack;

.field protected fStorePSVI:Z

.field protected final fStringBuffer:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 122
    const-string v1, "http://xml.org/sax/features/namespaces"

    aput-object v1, v0, v3

    .line 123
    const-string v1, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    aput-object v1, v0, v4

    .line 124
    const-string v1, "http://apache.org/xml/features/include-comments"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    .line 125
    const-string v2, "http://apache.org/xml/features/create-cdata-nodes"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 126
    const-string v2, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 127
    const-string v2, "http://apache.org/xml/features/dom/defer-node-expansion"

    aput-object v2, v0, v1

    .line 121
    sput-object v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 143
    new-array v0, v5, [Ljava/lang/String;

    .line 144
    const-string v1, "http://apache.org/xml/properties/dom/document-class-name"

    aput-object v1, v0, v3

    .line 145
    const-string v1, "http://apache.org/xml/properties/dom/current-element-node"

    aput-object v1, v0, v4

    .line 143
    sput-object v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 176
    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 5
    .param p1, "config"    # Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 293
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/parsers/AbstractXMLDocumentParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 183
    iput-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    .line 226
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    .line 255
    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    .line 260
    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    .line 265
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    .line 268
    iput v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    .line 271
    iput-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    .line 274
    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    .line 277
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    .line 284
    iput-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    .line 297
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 301
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 302
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/dom/defer-node-expansion"

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 303
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/include-comments"

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 304
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 307
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/dom/document-class-name"

    .line 311
    const-string v2, "mf.org.apache.xerces.dom.DocumentImpl"

    .line 310
    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 2654
    sget-object v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v0
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 13
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "enumeration"    # [Ljava/lang/String;
    .param p5, "defaultType"    # Ljava/lang/String;
    .param p6, "defaultValue"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p7, "nonNormalizedDefaultValue"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p8, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 2374
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v10, :cond_2

    .line 2375
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v11, "<!ATTLIST "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2376
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2377
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2378
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2379
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2380
    const-string v10, "ENUMERATION"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2381
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v11, 0x28

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2382
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p4

    array-length v10, v0

    if-lt v7, v10, :cond_8

    .line 2388
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v11, 0x29

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2393
    .end local v7    # "i":I
    :goto_1
    if-eqz p5, :cond_0

    .line 2394
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2395
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2397
    :cond_0
    if-eqz p6, :cond_1

    .line 2398
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v11, " \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2399
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    move-object/from16 v0, p6

    iget v10, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-lt v7, v10, :cond_b

    .line 2408
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2410
    .end local v7    # "i":I
    :cond_1
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v11, ">\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2416
    :cond_2
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    if-eqz v10, :cond_e

    .line 2419
    if-eqz p6, :cond_7

    .line 2422
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v10, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->lookupElementDefinition(Ljava/lang/String;)I

    move-result v5

    .line 2425
    .local v5, "elementDefIndex":I
    const/4 v10, -0x1

    if-ne v5, v10, :cond_3

    .line 2426
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v10, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredElementDefinition(Ljava/lang/String;)I

    move-result v5

    .line 2427
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v11, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {v10, v11, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    .line 2430
    :cond_3
    iget-boolean v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    .line 2431
    .local v9, "nsEnabled":Z
    const/4 v8, 0x0

    .line 2432
    .local v8, "namespaceURI":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 2437
    const-string v10, "xmlns:"

    invoke-virtual {p2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 2438
    const-string v10, "xmlns"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2439
    :cond_4
    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    .line 2445
    :cond_5
    :goto_3
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 2446
    invoke-virtual/range {p6 .. p6}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 2445
    invoke-virtual {v10, p2, v8, v11, v12}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    .line 2447
    .local v2, "attrIndex":I
    const-string v10, "ID"

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2448
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v10, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setIdAttribute(I)V

    .line 2451
    :cond_6
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v10, v5, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    .line 2509
    .end local v2    # "attrIndex":I
    .end local v5    # "elementDefIndex":I
    .end local v8    # "namespaceURI":Ljava/lang/String;
    .end local v9    # "nsEnabled":Z
    :cond_7
    :goto_4
    return-void

    .line 2383
    .restart local v7    # "i":I
    :cond_8
    if-lez v7, :cond_9

    .line 2384
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v11, 0x7c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2386
    :cond_9
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    aget-object v11, p4, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2382
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 2391
    .end local v7    # "i":I
    :cond_a
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 2400
    .restart local v7    # "i":I
    :cond_b
    move-object/from16 v0, p6

    iget-object v10, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    move-object/from16 v0, p6

    iget v11, v0, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    add-int/2addr v11, v7

    aget-char v3, v10, v11

    .line 2401
    .local v3, "c":C
    const/16 v10, 0x27

    if-ne v3, v10, :cond_c

    .line 2402
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v11, "&apos;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2399
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 2405
    :cond_c
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 2441
    .end local v3    # "c":C
    .end local v7    # "i":I
    .restart local v5    # "elementDefIndex":I
    .restart local v8    # "namespaceURI":Ljava/lang/String;
    .restart local v9    # "nsEnabled":Z
    :cond_d
    const-string v10, "xml:"

    invoke-virtual {p2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2442
    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    goto :goto_3

    .line 2457
    .end local v5    # "elementDefIndex":I
    .end local v8    # "namespaceURI":Ljava/lang/String;
    .end local v9    # "nsEnabled":Z
    :cond_e
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v10, :cond_7

    .line 2460
    if-eqz p6, :cond_7

    .line 2463
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    check-cast v10, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    invoke-virtual {v10}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getElements()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 2464
    .local v6, "elements":Lmf/org/w3c/dom/NamedNodeMap;
    invoke-interface {v6, p1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;

    .line 2465
    .local v4, "elementDef":Lmf/org/apache/xerces/dom/ElementDefinitionImpl;
    if-nez v4, :cond_f

    .line 2466
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v10, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createElementDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/dom/ElementDefinitionImpl;

    move-result-object v4

    .line 2467
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    check-cast v10, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    invoke-virtual {v10}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getElements()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v10

    invoke-interface {v10, v4}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 2473
    :cond_f
    iget-boolean v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    .line 2475
    .restart local v9    # "nsEnabled":Z
    if-eqz v9, :cond_13

    .line 2476
    const/4 v8, 0x0

    .line 2481
    .restart local v8    # "namespaceURI":Ljava/lang/String;
    const-string v10, "xmlns:"

    invoke-virtual {p2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 2482
    const-string v10, "xmlns"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 2483
    :cond_10
    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    .line 2488
    :cond_11
    :goto_6
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v10, v8, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 2494
    .end local v8    # "namespaceURI":Ljava/lang/String;
    .local v1, "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    :goto_7
    invoke-virtual/range {p6 .. p6}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lmf/org/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    .line 2495
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    .line 2496
    const-string v10, "ID"

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v1, v10}, Lmf/org/apache/xerces/dom/AttrImpl;->setIdAttribute(Z)V

    .line 2499
    if-eqz v9, :cond_14

    .line 2500
    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v10

    invoke-interface {v10, v1}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto/16 :goto_4

    .line 2485
    .end local v1    # "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    .restart local v8    # "namespaceURI":Ljava/lang/String;
    :cond_12
    const-string v10, "xml:"

    invoke-virtual {p2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 2486
    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    goto :goto_6

    .line 2492
    .end local v8    # "namespaceURI":Ljava/lang/String;
    :cond_13
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v10, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/AttrImpl;

    .restart local v1    # "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    goto :goto_7

    .line 2503
    :cond_14
    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v10

    invoke-interface {v10, v1}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto/16 :goto_4
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 9
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1160
    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v5, :cond_7

    .line 1162
    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v5, :cond_1

    .line 1238
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInCDATASection:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateCDATANodes:Z

    if-eqz v5, :cond_3

    .line 1166
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    if-nez v5, :cond_2

    .line 1168
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lmf/org/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;

    move-result-object v5

    .line 1167
    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    .line 1169
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    invoke-interface {v5, v6}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1170
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    .line 1173
    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lmf/org/w3c/dom/CDATASection;->appendData(Ljava/lang/String;)V

    goto :goto_0

    .line 1176
    :cond_3
    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-nez v5, :cond_0

    .line 1179
    iget v5, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-eqz v5, :cond_0

    .line 1183
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1184
    .local v0, "child":Lmf/org/w3c/dom/Node;
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    .line 1186
    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    if-eqz v5, :cond_4

    .line 1187
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v5, :cond_5

    .line 1188
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    check-cast v0, Lmf/org/apache/xerces/dom/TextImpl;

    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/TextImpl;->removeData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1193
    :goto_1
    iput-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    .line 1195
    :cond_4
    iget v5, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-lez v5, :cond_0

    .line 1196
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v7, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v8, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v5, v6, v7, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1190
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_5
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    move-object v5, v0

    check-cast v5, Lmf/org/w3c/dom/Text;

    invoke-interface {v5}, Lmf/org/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1191
    check-cast v0, Lmf/org/w3c/dom/Text;

    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lmf/org/w3c/dom/Text;->setNodeValue(Ljava/lang/String;)V

    goto :goto_1

    .line 1200
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_6
    const/4 v5, 0x1

    iput-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    .line 1201
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v2

    .line 1202
    .local v2, "textNode":Lmf/org/w3c/dom/Text;
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v5, v2}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto/16 :goto_0

    .line 1210
    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    .end local v2    # "textNode":Lmf/org/w3c/dom/Text;
    :cond_7
    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInCDATASection:Z

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateCDATANodes:Z

    if-eqz v5, :cond_9

    .line 1211
    iget v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    .line 1212
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 1213
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredCDATASection(Ljava/lang/String;)I

    move-result v1

    .line 1215
    .local v1, "cs":I
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v5, v6, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    .line 1216
    iput v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    .line 1217
    iput v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto/16 :goto_0

    .line 1220
    .end local v1    # "cs":I
    :cond_8
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 1221
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredTextNode(Ljava/lang/String;Z)I

    move-result v3

    .line 1222
    .local v3, "txt":I
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v5, v6, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto/16 :goto_0

    .line 1224
    .end local v3    # "txt":I
    :cond_9
    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-nez v5, :cond_0

    .line 1227
    iget v5, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-eqz v5, :cond_0

    .line 1231
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1232
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 1233
    invoke-virtual {v5, v4, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredTextNode(Ljava/lang/String;Z)I

    move-result v3

    .line 1234
    .restart local v3    # "txt":I
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v5, v6, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto/16 :goto_0
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 6
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 604
    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-eqz v2, :cond_2

    .line 605
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v2, :cond_1

    .line 606
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v3, "<!--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 607
    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-lez v2, :cond_0

    .line 608
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v5, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 610
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 657
    :cond_1
    :goto_0
    return-void

    .line 614
    :cond_2
    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fIncludeComments:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-nez v2, :cond_1

    .line 617
    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v2, :cond_3

    .line 618
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/Document;->createComment(Ljava/lang/String;)Lmf/org/w3c/dom/Comment;

    move-result-object v1

    .line 620
    .local v1, "comment":Lmf/org/w3c/dom/Comment;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    .line 621
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v2, v1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 622
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v2, :cond_1

    .line 623
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {v2}, Lmf/org/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    .line 624
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {v2, v1}, Lmf/org/w3c/dom/ls/LSParserFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    .line 625
    .local v0, "code":S
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 638
    :pswitch_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v2, v1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 640
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    goto :goto_0

    .line 627
    :pswitch_1
    sget-object v2, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2

    .line 653
    .end local v0    # "code":S
    .end local v1    # "comment":Lmf/org/w3c/dom/Comment;
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredComment(Ljava/lang/String;)I

    move-result v1

    .line 654
    .local v1, "comment":I
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v2, v3, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto :goto_0

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected createAttrNode(Lmf/org/apache/xerces/xni/QName;)Lmf/org/w3c/dom/Attr;
    .locals 5
    .param p1, "attrQName"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    .line 2564
    const/4 v0, 0x0

    .line 2566
    .local v0, "attr":Lmf/org/w3c/dom/Attr;
    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v1, :cond_1

    .line 2567
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v1, :cond_0

    .line 2570
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 2571
    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 2572
    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 2570
    invoke-virtual {v1, v2, v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    .line 2583
    :goto_0
    return-object v0

    .line 2575
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 2576
    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 2575
    invoke-interface {v1, v2, v3}, Lmf/org/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    .line 2578
    goto :goto_0

    .line 2580
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    goto :goto_0
.end method

.method protected createElementNode(Lmf/org/apache/xerces/xni/QName;)Lmf/org/w3c/dom/Element;
    .locals 5
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    .line 2541
    const/4 v0, 0x0

    .line 2543
    .local v0, "el":Lmf/org/w3c/dom/Element;
    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v1, :cond_1

    .line 2546
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v1, :cond_0

    .line 2547
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 2548
    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 2547
    invoke-virtual {v1, v2, v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    .line 2558
    :goto_0
    return-object v0

    .line 2551
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lmf/org/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    .line 2553
    goto :goto_0

    .line 2555
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/Document;->createElement(Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
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
    .line 901
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v0, :cond_1

    .line 902
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/DocumentType;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    .line 905
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 909
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 910
    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 909
    iput v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    .line 911
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    iget v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto :goto_0
.end method

.method public final dropDocumentReferences()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 386
    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    .line 387
    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 388
    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 389
    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    .line 390
    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 391
    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    .line 392
    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    .line 393
    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRoot:Lmf/org/w3c/dom/Node;

    .line 394
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contentModel"    # Ljava/lang/String;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 2333
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v0, :cond_0

    .line 2334
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v1, "<!ELEMENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2335
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2336
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2337
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2338
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2341
    :cond_0
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
    .line 1141
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1142
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1144
    return-void
.end method

.method public endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 2535
    return-void
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 6
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1425
    iput-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInCDATASection:Z

    .line 1426
    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v2, :cond_3

    .line 1428
    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v2, :cond_1

    .line 1469
    :cond_0
    :goto_0
    return-void

    .line 1432
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    if-eqz v2, :cond_0

    .line 1434
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v2, :cond_2

    .line 1435
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {v2}, Lmf/org/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 1436
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/ls/LSParserFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    .line 1437
    .local v0, "code":S
    packed-switch v0, :pswitch_data_0

    .line 1457
    .end local v0    # "code":S
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 1458
    const/4 v2, 0x0

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    goto :goto_0

    .line 1439
    .restart local v0    # "code":S
    :pswitch_0
    sget-object v2, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2

    .line 1445
    :pswitch_1
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1446
    .local v1, "parent":Lmf/org/w3c/dom/Node;
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1447
    iput-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    .line 1462
    .end local v0    # "code":S
    .end local v1    # "parent":Lmf/org/w3c/dom/Node;
    :cond_3
    iget v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    if-eq v2, v4, :cond_0

    .line 1464
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v2, v3, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result v2

    .line 1463
    iput v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    .line 1465
    iput v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    goto :goto_0

    .line 1437
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1871
    return-void
.end method

.method public endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1828
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    .line 1829
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1830
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1832
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1833
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1834
    .local v0, "internalSubset":Ljava/lang/String;
    :goto_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-eqz v1, :cond_3

    .line 1835
    if-eqz v0, :cond_1

    .line 1836
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setInternalSubset(ILjava/lang/String;)V

    .line 1844
    :cond_1
    :goto_1
    return-void

    .line 1833
    .end local v0    # "internalSubset":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1839
    .restart local v0    # "internalSubset":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v1, :cond_1

    .line 1840
    if-eqz v0, :cond_1

    .line 1841
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    check-cast v1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->setInternalSubset(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1479
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v0, :cond_2

    .line 1483
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v0, :cond_1

    .line 1484
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    .line 1487
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setStrictErrorChecking(Z)V

    .line 1489
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 1499
    :goto_0
    return-void

    .line 1493
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v0, :cond_3

    .line 1494
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    .line 1496
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto :goto_0
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 10
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1295
    iget-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v7, :cond_a

    .line 1298
    if-eqz p2, :cond_3

    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    if-eqz v7, :cond_3

    .line 1299
    :cond_0
    const-string v7, "ELEMENT_PSVI"

    invoke-interface {p2, v7}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/ElementPSVI;

    .line 1300
    .local v1, "elementPSVI":Lmf/org/apache/xerces/xs/ElementPSVI;
    if-eqz v1, :cond_3

    .line 1304
    iget-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v7, :cond_2

    .line 1305
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v6

    .line 1306
    .local v6, "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-nez v6, :cond_1

    .line 1307
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v6

    .line 1309
    :cond_1
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v7, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-virtual {v7, v6}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setType(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    .line 1311
    .end local v6    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_2
    iget-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    if-eqz v7, :cond_3

    .line 1312
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v7, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;

    invoke-virtual {v7, v1}, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/ElementPSVI;)V

    .line 1317
    .end local v1    # "elementPSVI":Lmf/org/apache/xerces/xs/ElementPSVI;
    :cond_3
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz v7, :cond_9

    .line 1318
    iget-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v7, :cond_5

    .line 1319
    iget v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    add-int/lit8 v8, v7, -0x1

    iput v8, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    if-nez v7, :cond_4

    .line 1320
    iput-boolean v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    .line 1395
    :cond_4
    :goto_0
    return-void

    .line 1324
    :cond_5
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1325
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_4

    .line 1329
    :cond_6
    invoke-virtual {p0, v9}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    .line 1330
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v8, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRoot:Lmf/org/w3c/dom/Node;

    if-eq v7, v8, :cond_7

    iget-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v7, :cond_7

    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {v7}, Lmf/org/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7

    .line 1331
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    iget-object v8, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v7, v8}, Lmf/org/w3c/dom/ls/LSParserFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    .line 1332
    .local v0, "code":S
    packed-switch v0, :pswitch_data_0

    .line 1367
    .end local v0    # "code":S
    :cond_7
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v7

    iput-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    .line 1334
    .restart local v0    # "code":S
    :pswitch_0
    sget-object v7, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v7

    .line 1337
    :pswitch_1
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    .line 1338
    .local v5, "parent":Lmf/org/w3c/dom/Node;
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v5, v7}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1339
    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    .line 1348
    .end local v5    # "parent":Lmf/org/w3c/dom/Node;
    :pswitch_2
    const/4 v7, 0x1

    iput-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    .line 1351
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    .line 1352
    .restart local v5    # "parent":Lmf/org/w3c/dom/Node;
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object v4

    .line 1353
    .local v4, "ls":Lmf/org/w3c/dom/NodeList;
    invoke-interface {v4}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 1355
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_8

    .line 1358
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v5, v7}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1359
    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    .line 1356
    :cond_8
    invoke-interface {v4, v9}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v5, v7}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1355
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1371
    .end local v0    # "code":S
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "ls":Lmf/org/w3c/dom/NodeList;
    .end local v5    # "parent":Lmf/org/w3c/dom/Node;
    :cond_9
    invoke-virtual {p0, v9}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    .line 1372
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v7

    iput-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto/16 :goto_0

    .line 1377
    :cond_a
    if-eqz p2, :cond_c

    .line 1378
    const-string v7, "ELEMENT_PSVI"

    invoke-interface {p2, v7}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/ElementPSVI;

    .line 1379
    .restart local v1    # "elementPSVI":Lmf/org/apache/xerces/xs/ElementPSVI;
    if-eqz v1, :cond_c

    .line 1383
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v6

    .line 1384
    .restart local v6    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-nez v6, :cond_b

    .line 1385
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v6

    .line 1387
    :cond_b
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v8, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v7, v8, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setTypeInfo(ILjava/lang/Object;)V

    .line 1391
    .end local v1    # "elementPSVI":Lmf/org/apache/xerces/xs/ElementPSVI;
    .end local v6    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_c
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v8, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v7, v8, v9}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result v7

    .line 1390
    iput v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto/16 :goto_0

    .line 1332
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1904
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    .line 1905
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1906
    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 24
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1517
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    .line 1519
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 1681
    :cond_0
    :goto_0
    return-void

    .line 1522
    :cond_1
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v9

    .line 1527
    .local v9, "entities":Lmf/org/w3c/dom/NamedNodeMap;
    move-object/from16 v0, p1

    invoke-interface {v9, v0}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lmf/org/apache/xerces/dom/EntityImpl;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/dom/EntityImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v21

    if-nez v21, :cond_2

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lmf/org/apache/xerces/dom/EntityImpl;->setReadOnly(ZZ)V

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 1532
    .local v3, "child":Lmf/org/w3c/dom/Node;
    :goto_1
    if-nez v3, :cond_8

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lmf/org/apache/xerces/dom/EntityImpl;->setReadOnly(ZZ)V

    .line 1541
    .end local v3    # "child":Lmf/org/w3c/dom/Node;
    :cond_2
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    .line 1545
    .end local v9    # "entities":Lmf/org/w3c/dom/NamedNodeMap;
    :cond_3
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    .line 1546
    const/16 v19, 0x0

    .line 1547
    .local v19, "removeEntityRef":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateEntityRefNodes:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    check-cast v21, Lmf/org/apache/xerces/dom/NodeImpl;

    const/16 v22, 0x1

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lmf/org/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    .line 1553
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result v21

    and-int/lit8 v21, v21, 0x10

    if-eqz v21, :cond_9

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Lmf/org/w3c/dom/ls/LSParserFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v7

    .line 1556
    .local v7, "code":S
    packed-switch v7, :pswitch_data_0

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 1583
    .end local v7    # "code":S
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateEntityRefNodes:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    if-eqz v19, :cond_0

    .line 1586
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/Node;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object v5

    .line 1587
    .local v5, "children":Lmf/org/w3c/dom/NodeList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v16

    .line 1588
    .local v16, "parent":Lmf/org/w3c/dom/Node;
    invoke-interface {v5}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v12

    .line 1589
    .local v12, "length":I
    if-lez v12, :cond_7

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v13

    .line 1594
    .local v13, "node":Lmf/org/w3c/dom/Node;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v5, v0}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 1595
    .restart local v3    # "child":Lmf/org/w3c/dom/Node;
    if-eqz v13, :cond_a

    invoke-interface {v13}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 1596
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    move-object/from16 v21, v13

    .line 1597
    check-cast v21, Lmf/org/w3c/dom/Text;

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1605
    :goto_3
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_4
    if-lt v10, v12, :cond_b

    .line 1610
    .end local v3    # "child":Lmf/org/w3c/dom/Node;
    .end local v10    # "i":I
    .end local v13    # "node":Lmf/org/w3c/dom/Node;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1611
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto/16 :goto_0

    .line 1533
    .end local v5    # "children":Lmf/org/w3c/dom/NodeList;
    .end local v12    # "length":I
    .end local v16    # "parent":Lmf/org/w3c/dom/Node;
    .end local v19    # "removeEntityRef":Z
    .restart local v3    # "child":Lmf/org/w3c/dom/Node;
    .restart local v9    # "entities":Lmf/org/w3c/dom/NamedNodeMap;
    :cond_8
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-interface {v3, v0}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v8

    .line 1534
    .local v8, "copy":Lmf/org/w3c/dom/Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/dom/EntityImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1535
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    goto/16 :goto_1

    .line 1558
    .end local v3    # "child":Lmf/org/w3c/dom/Node;
    .end local v8    # "copy":Lmf/org/w3c/dom/Node;
    .end local v9    # "entities":Lmf/org/w3c/dom/NamedNodeMap;
    .restart local v7    # "code":S
    .restart local v19    # "removeEntityRef":Z
    :pswitch_0
    sget-object v21, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v21

    .line 1561
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v16

    .line 1562
    .restart local v16    # "parent":Lmf/org/w3c/dom/Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1563
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto/16 :goto_0

    .line 1569
    .end local v16    # "parent":Lmf/org/w3c/dom/Node;
    :pswitch_2
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    .line 1570
    const/16 v19, 0x1

    .line 1571
    goto/16 :goto_2

    .line 1579
    .end local v7    # "code":S
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto/16 :goto_2

    .line 1601
    .restart local v3    # "child":Lmf/org/w3c/dom/Node;
    .restart local v5    # "children":Lmf/org/w3c/dom/NodeList;
    .restart local v12    # "length":I
    .restart local v13    # "node":Lmf/org/w3c/dom/Node;
    .restart local v16    # "parent":Lmf/org/w3c/dom/Node;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v3, v1}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v13

    .line 1602
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->handleBaseURI(Lmf/org/w3c/dom/Node;)V

    goto/16 :goto_3

    .line 1606
    .restart local v10    # "i":I
    :cond_b
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v5, v0}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v13

    .line 1607
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->handleBaseURI(Lmf/org/w3c/dom/Node;)V

    .line 1605
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 1616
    .end local v3    # "child":Lmf/org/w3c/dom/Node;
    .end local v5    # "children":Lmf/org/w3c/dom/NodeList;
    .end local v10    # "i":I
    .end local v12    # "length":I
    .end local v13    # "node":Lmf/org/w3c/dom/Node;
    .end local v16    # "parent":Lmf/org/w3c/dom/Node;
    .end local v19    # "removeEntityRef":Z
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v13

    .line 1619
    .local v13, "node":I
    :goto_5
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v13, v0, :cond_f

    .line 1633
    .end local v13    # "node":I
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 1636
    const/16 v18, -0x1

    .line 1637
    .local v18, "prevIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v4

    .line 1638
    .local v4, "childIndex":I
    :goto_7
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_11

    .line 1645
    .end local v4    # "childIndex":I
    .end local v18    # "prevIndex":I
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateEntityRefNodes:Z

    move/from16 v21, v0

    if-eqz v21, :cond_12

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move/from16 v22, v0

    .line 1648
    const/16 v23, 0x0

    .line 1647
    invoke-virtual/range {v21 .. v23}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result v21

    .line 1646
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    .line 1677
    :goto_8
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    goto/16 :goto_0

    .line 1620
    .restart local v13    # "node":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v15

    .line 1621
    .local v15, "nodeType":S
    const/16 v21, 0x6

    move/from16 v0, v21

    if-ne v15, v0, :cond_10

    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v14

    .line 1624
    .local v14, "nodeName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 1625
    move-object/from16 v0, p0

    iput v13, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    goto/16 :goto_6

    .line 1629
    .end local v14    # "nodeName":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v13

    goto/16 :goto_5

    .line 1639
    .end local v13    # "node":I
    .end local v15    # "nodeType":S
    .restart local v4    # "childIndex":I
    .restart local v18    # "prevIndex":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->cloneNode(IZ)I

    move-result v6

    .line 1640
    .local v6, "cloneIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v18

    invoke-virtual {v0, v1, v6, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->insertBefore(III)I

    .line 1641
    move/from16 v18, v6

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v4

    goto/16 :goto_7

    .line 1654
    .end local v4    # "childIndex":I
    .end local v6    # "cloneIndex":I
    .end local v18    # "prevIndex":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v4

    .line 1656
    .restart local v4    # "childIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move/from16 v22, v0

    .line 1657
    const/16 v23, 0x0

    .line 1656
    invoke-virtual/range {v21 .. v23}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result v17

    .line 1659
    .local v17, "parentIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move/from16 v18, v0

    .line 1660
    .restart local v18    # "prevIndex":I
    move v11, v4

    .line 1661
    .local v11, "lastChild":I
    const/16 v20, -0x1

    .line 1662
    .local v20, "sibling":I
    :goto_9
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_13

    .line 1669
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v11, v0, :cond_14

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setAsLastChild(II)V

    .line 1675
    :goto_a
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto/16 :goto_8

    .line 1663
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->handleBaseURI(I)V

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v20

    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v4, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->insertBefore(III)I

    .line 1666
    move/from16 v18, v4

    .line 1667
    move/from16 v4, v20

    goto :goto_9

    .line 1672
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v20

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setAsLastChild(II)V

    goto :goto_a

    .line 1556
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 2139
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2140
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 2020
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v2

    .line 2021
    .local v2, "publicId":Ljava/lang/String;
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    .line 2022
    .local v3, "literalSystemId":Ljava/lang/String;
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v0, :cond_0

    .line 2023
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v1, "<!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2024
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2025
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v1, "% "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2026
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2031
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2032
    if-eqz v2, :cond_3

    .line 2033
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v1, "PUBLIC \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2034
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2035
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2040
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2041
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v1, "\'>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2050
    :cond_0
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2086
    :cond_1
    :goto_2
    return-void

    .line 2029
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2038
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v1, "SYSTEM \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2052
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    if-eqz v0, :cond_5

    .line 2053
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 2054
    .local v6, "entities":Lmf/org/w3c/dom/NamedNodeMap;
    invoke-interface {v6, p1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lmf/org/apache/xerces/dom/EntityImpl;

    .line 2055
    .local v7, "entity":Lmf/org/apache/xerces/dom/EntityImpl;
    if-nez v7, :cond_5

    .line 2056
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lmf/org/w3c/dom/Entity;

    move-result-object v7

    .end local v7    # "entity":Lmf/org/apache/xerces/dom/EntityImpl;
    check-cast v7, Lmf/org/apache/xerces/dom/EntityImpl;

    .line 2057
    .restart local v7    # "entity":Lmf/org/apache/xerces/dom/EntityImpl;
    invoke-virtual {v7, v2}, Lmf/org/apache/xerces/dom/EntityImpl;->setPublicId(Ljava/lang/String;)V

    .line 2058
    invoke-virtual {v7, v3}, Lmf/org/apache/xerces/dom/EntityImpl;->setSystemId(Ljava/lang/String;)V

    .line 2059
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lmf/org/apache/xerces/dom/EntityImpl;->setBaseURI(Ljava/lang/String;)V

    .line 2060
    invoke-interface {v6, v7}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 2065
    .end local v6    # "entities":Lmf/org/w3c/dom/NamedNodeMap;
    .end local v7    # "entity":Lmf/org/apache/xerces/dom/EntityImpl;
    :cond_5
    iget v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2066
    const/4 v9, 0x0

    .line 2067
    .local v9, "found":Z
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v10

    .line 2068
    .local v10, "nodeIndex":I
    :goto_3
    const/4 v0, -0x1

    if-ne v10, v0, :cond_6

    .line 2079
    :goto_4
    if-nez v9, :cond_1

    .line 2080
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 2081
    const/4 v4, 0x0

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    .line 2080
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 2082
    .local v8, "entityIndex":I
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto :goto_2

    .line 2069
    .end local v8    # "entityIndex":I
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v12

    .line 2070
    .local v12, "nodeType":S
    const/4 v0, 0x6

    if-ne v12, v0, :cond_7

    .line 2071
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v11

    .line 2072
    .local v11, "nodeName":Ljava/lang/String;
    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2073
    const/4 v9, 0x1

    .line 2074
    goto :goto_4

    .line 2077
    .end local v11    # "nodeName":Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v10

    goto :goto_3
.end method

.method public getDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    return-object v0
.end method

.method protected getDocumentClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    return-object v0
.end method

.method protected final handleBaseURI(I)V
    .locals 8
    .param p1, "node"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1742
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v0, p1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v7

    .line 1744
    .local v7, "nodeType":S
    if-ne v7, v5, :cond_2

    .line 1745
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValueString(IZ)Ljava/lang/String;

    move-result-object v4

    .line 1746
    .local v4, "baseURI":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 1747
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getDeferredEntityBaseURI(I)Ljava/lang/String;

    move-result-object v4

    .line 1749
    :cond_0
    if-eqz v4, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getDocumentURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1750
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 1751
    const-string v2, "xml:base"

    .line 1752
    const-string v3, "http://www.w3.org/XML/1998/namespace"

    move v1, p1

    .line 1750
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1776
    .end local v4    # "baseURI":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1757
    :cond_2
    const/4 v0, 0x7

    if-ne v7, v0, :cond_1

    .line 1761
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValueString(IZ)Ljava/lang/String;

    move-result-object v4

    .line 1763
    .restart local v4    # "baseURI":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 1765
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getDeferredEntityBaseURI(I)Ljava/lang/String;

    move-result-object v4

    .line 1768
    :cond_3
    if-eqz v4, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v0, :cond_1

    .line 1769
    new-instance v6, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v6}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    .line 1770
    .local v6, "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    const-string v0, "pi-base-uri-not-preserved"

    iput-object v0, v6, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    .line 1771
    iput-object v4, v6, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    .line 1772
    iput-short v5, v6, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    .line 1773
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v0

    invoke-interface {v0, v6}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    goto :goto_0
.end method

.method protected final handleBaseURI(Lmf/org/w3c/dom/Node;)V
    .locals 6
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v4, 0x1

    .line 1692
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v3, :cond_0

    .line 1696
    const/4 v0, 0x0

    .line 1697
    .local v0, "baseURI":Ljava/lang/String;
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    .line 1699
    .local v2, "nodeType":S
    if-ne v2, v4, :cond_4

    .line 1702
    iget-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v3, :cond_1

    move-object v3, p1

    .line 1703
    check-cast v3, Lmf/org/w3c/dom/Element;

    const-string v4, "http://www.w3.org/XML/1998/namespace"

    const-string v5, "base"

    invoke-interface {v3, v4, v5}, Lmf/org/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1731
    .end local v0    # "baseURI":Ljava/lang/String;
    .end local v2    # "nodeType":S
    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "baseURI":Ljava/lang/String;
    .restart local v2    # "nodeType":S
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_1
    move-object v3, p1

    .line 1706
    check-cast v3, Lmf/org/w3c/dom/Element;

    const-string v4, "xml:base"

    invoke-interface {v3, v4}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1710
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v3, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    .line 1711
    if-eqz v0, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getDocumentURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1712
    iget-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v3, :cond_3

    .line 1713
    check-cast p1, Lmf/org/w3c/dom/Element;

    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    const-string v3, "http://www.w3.org/XML/1998/namespace"

    const-string v4, "xml:base"

    invoke-interface {p1, v3, v4, v0}, Lmf/org/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1715
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_3
    check-cast p1, Lmf/org/w3c/dom/Element;

    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    const-string v3, "xml:base"

    invoke-interface {p1, v3, v0}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1719
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_4
    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 1721
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v3, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    .line 1722
    if-eqz v0, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v3, :cond_0

    .line 1723
    new-instance v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    .line 1724
    .local v1, "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    const-string v3, "pi-base-uri-not-preserved"

    iput-object v3, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    .line 1725
    iput-object v0, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    .line 1726
    iput-short v4, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    .line 1727
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v3

    invoke-interface {v3, v1}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    goto :goto_0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1255
    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fIncludeIgnorableWhitespace:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v4, :cond_1

    .line 1281
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v4, :cond_4

    .line 1259
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1260
    .local v0, "child":Lmf/org/w3c/dom/Node;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move-object v1, v0

    .line 1261
    check-cast v1, Lmf/org/w3c/dom/Text;

    .line 1262
    .local v1, "textNode":Lmf/org/w3c/dom/Text;
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    goto :goto_0

    .line 1265
    .end local v1    # "textNode":Lmf/org/w3c/dom/Text;
    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v1

    .line 1266
    .restart local v1    # "textNode":Lmf/org/w3c/dom/Text;
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v4, :cond_3

    move-object v2, v1

    .line 1267
    check-cast v2, Lmf/org/apache/xerces/dom/TextImpl;

    .line 1268
    .local v2, "textNodeImpl":Lmf/org/apache/xerces/dom/TextImpl;
    invoke-virtual {v2, v6}, Lmf/org/apache/xerces/dom/TextImpl;->setIgnorableWhitespace(Z)V

    .line 1270
    .end local v2    # "textNodeImpl":Lmf/org/apache/xerces/dom/TextImpl;
    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v4, v1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0

    .line 1276
    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    .end local v1    # "textNode":Lmf/org/w3c/dom/Text;
    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 1277
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredTextNode(Ljava/lang/String;Z)I

    move-result v3

    .line 1278
    .local v3, "txt":I
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v4, v5, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto :goto_0
.end method

.method public ignoredCharacters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 2316
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "nonNormalizedText"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1935
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v1, :cond_0

    .line 1936
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, "<!ENTITY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1937
    const-string v1, "%"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1938
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, "% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1939
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1944
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1945
    invoke-virtual/range {p3 .. p3}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1946
    .local v15, "value":Ljava/lang/String;
    const/16 v1, 0x27

    invoke-virtual {v15, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/4 v14, 0x1

    .line 1947
    .local v14, "singleQuote":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v14, :cond_4

    const/16 v1, 0x27

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1948
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1949
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v14, :cond_5

    const/16 v1, 0x27

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1950
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, ">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1959
    .end local v14    # "singleQuote":Z
    .end local v15    # "value":Ljava/lang/String;
    :cond_0
    const-string v1, "%"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1993
    :cond_1
    :goto_4
    return-void

    .line 1942
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1946
    .restart local v15    # "value":Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 1947
    .restart local v14    # "singleQuote":Z
    :cond_4
    const/16 v1, 0x22

    goto :goto_2

    .line 1949
    :cond_5
    const/16 v1, 0x22

    goto :goto_3

    .line 1961
    .end local v14    # "singleQuote":Z
    .end local v15    # "value":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    if-eqz v1, :cond_7

    .line 1962
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    invoke-interface {v1}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 1963
    .local v7, "entities":Lmf/org/w3c/dom/NamedNodeMap;
    move-object/from16 v0, p1

    invoke-interface {v7, v0}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/dom/EntityImpl;

    .line 1964
    .local v8, "entity":Lmf/org/apache/xerces/dom/EntityImpl;
    if-nez v8, :cond_7

    .line 1965
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lmf/org/w3c/dom/Entity;

    move-result-object v8

    .end local v8    # "entity":Lmf/org/apache/xerces/dom/EntityImpl;
    check-cast v8, Lmf/org/apache/xerces/dom/EntityImpl;

    .line 1966
    .restart local v8    # "entity":Lmf/org/apache/xerces/dom/EntityImpl;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Lmf/org/apache/xerces/dom/EntityImpl;->setBaseURI(Ljava/lang/String;)V

    .line 1967
    invoke-interface {v7, v8}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1972
    .end local v7    # "entities":Lmf/org/w3c/dom/NamedNodeMap;
    .end local v8    # "entity":Lmf/org/apache/xerces/dom/EntityImpl;
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1973
    const/4 v10, 0x0

    .line 1974
    .local v10, "found":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v11

    .line 1975
    .local v11, "node":I
    :goto_5
    const/4 v1, -0x1

    if-ne v11, v1, :cond_8

    .line 1986
    :goto_6
    if-nez v10, :cond_1

    .line 1988
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1989
    .local v9, "entityIndex":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {v1, v2, v9}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto/16 :goto_4

    .line 1976
    .end local v9    # "entityIndex":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v11, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v13

    .line 1977
    .local v13, "nodeType":S
    const/4 v1, 0x6

    if-ne v13, v1, :cond_9

    .line 1978
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v11, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v12

    .line 1979
    .local v12, "nodeName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1980
    const/4 v10, 0x1

    .line 1981
    goto :goto_6

    .line 1984
    .end local v12    # "nodeName":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v11, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v11

    goto :goto_5
.end method

.method public notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 2246
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v8

    .line 2247
    .local v8, "publicId":Ljava/lang/String;
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    .line 2248
    .local v1, "literalSystemId":Ljava/lang/String;
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v9, :cond_1

    .line 2249
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v10, "<!NOTATION "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2250
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2251
    if-eqz v8, :cond_4

    .line 2252
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v10, " PUBLIC \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2253
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2254
    if-eqz v1, :cond_0

    .line 2255
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v10, "\' \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2256
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2263
    :cond_0
    :goto_0
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v10, "\'>\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2271
    :cond_1
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    if-eqz v9, :cond_2

    .line 2272
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    invoke-interface {v9}, Lmf/org/w3c/dom/DocumentType;->getNotations()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 2273
    .local v7, "notations":Lmf/org/w3c/dom/NamedNodeMap;
    invoke-interface {v7, p1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v9

    if-nez v9, :cond_2

    .line 2274
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v9, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createNotation(Ljava/lang/String;)Lmf/org/w3c/dom/Notation;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/dom/NotationImpl;

    .line 2275
    .local v5, "notation":Lmf/org/apache/xerces/dom/NotationImpl;
    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/dom/NotationImpl;->setPublicId(Ljava/lang/String;)V

    .line 2276
    invoke-virtual {v5, v1}, Lmf/org/apache/xerces/dom/NotationImpl;->setSystemId(Ljava/lang/String;)V

    .line 2277
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lmf/org/apache/xerces/dom/NotationImpl;->setBaseURI(Ljava/lang/String;)V

    .line 2278
    invoke-interface {v7, v5}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 2283
    .end local v5    # "notation":Lmf/org/apache/xerces/dom/NotationImpl;
    .end local v7    # "notations":Lmf/org/w3c/dom/NamedNodeMap;
    :cond_2
    iget v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 2284
    const/4 v0, 0x0

    .line 2285
    .local v0, "found":Z
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v2

    .line 2286
    .local v2, "nodeIndex":I
    :goto_1
    const/4 v9, -0x1

    if-ne v2, v9, :cond_5

    .line 2297
    :goto_2
    if-nez v0, :cond_3

    .line 2298
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 2299
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v10

    .line 2298
    invoke-virtual {v9, p1, v8, v1, v10}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2300
    .local v6, "notationIndex":I
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {v9, v10, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    .line 2304
    .end local v0    # "found":Z
    .end local v2    # "nodeIndex":I
    .end local v6    # "notationIndex":I
    :cond_3
    return-void

    .line 2260
    :cond_4
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v10, " SYSTEM \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2261
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2287
    .restart local v0    # "found":Z
    .restart local v2    # "nodeIndex":I
    :cond_5
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v4

    .line 2288
    .local v4, "nodeType":S
    const/16 v9, 0xc

    if-ne v4, v9, :cond_6

    .line 2289
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v3

    .line 2290
    .local v3, "nodeName":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2291
    const/4 v0, 0x1

    .line 2292
    goto :goto_2

    .line 2295
    .end local v3    # "nodeName":Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(IZ)I

    move-result v2

    goto :goto_1
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 6
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 679
    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-eqz v2, :cond_2

    .line 680
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v2, :cond_1

    .line 681
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v3, "<?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 682
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 683
    iget v2, p2, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-lez v2, :cond_0

    .line 684
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v4, p2, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v5, p2, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 686
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v3, "?>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 733
    :cond_1
    :goto_0
    return-void

    .line 694
    :cond_2
    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v2, :cond_3

    .line 695
    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-nez v2, :cond_1

    .line 699
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lmf/org/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;

    move-result-object v1

    .line 702
    .local v1, "pi":Lmf/org/w3c/dom/ProcessingInstruction;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    .line 703
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v2, v1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 704
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v2, :cond_1

    .line 705
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {v2}, Lmf/org/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1

    .line 706
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {v2, v1}, Lmf/org/w3c/dom/ls/LSParserFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    .line 707
    .local v0, "code":S
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 715
    :pswitch_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v2, v1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 719
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    goto :goto_0

    .line 709
    :pswitch_1
    sget-object v2, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2

    .line 728
    .end local v0    # "code":S
    .end local v1    # "pi":Lmf/org/w3c/dom/ProcessingInstruction;
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 729
    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 730
    .local v1, "pi":I
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v2, v3, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto :goto_0

    .line 707
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 406
    invoke-super {p0}, Lmf/org/apache/xerces/parsers/AbstractXMLDocumentParser;->reset()V

    .line 411
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    .line 410
    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateEntityRefNodes:Z

    .line 414
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    .line 413
    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fIncludeIgnorableWhitespace:Z

    .line 417
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/dom/defer-node-expansion"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    .line 416
    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    .line 419
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    .line 421
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/include-comments"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fIncludeComments:Z

    .line 423
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateCDATANodes:Z

    .line 427
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 426
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setDocumentClassName(Ljava/lang/String;)V

    .line 430
    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    .line 431
    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 432
    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    .line 433
    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    .line 434
    iput v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    .line 435
    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 436
    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 439
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 442
    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRoot:Lmf/org/w3c/dom/Node;

    .line 443
    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    .line 444
    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    .line 445
    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInCDATASection:Z

    .line 446
    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    .line 447
    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    .line 448
    iput v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    .line 450
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    .line 453
    return-void
.end method

.method protected setCharacterData(Z)V
    .locals 5
    .param p1, "sawChars"    # Z

    .prologue
    const/4 v4, 0x3

    .line 2602
    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    .line 2608
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 2609
    .local v0, "child":Lmf/org/w3c/dom/Node;
    if-eqz v0, :cond_2

    .line 2610
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 2612
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v2, v4, :cond_0

    .line 2613
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 2614
    check-cast v2, Lmf/org/apache/xerces/dom/TextImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/TextImpl;->replaceData(Ljava/lang/String;)V

    .line 2621
    :cond_0
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2624
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v2, :cond_2

    .line 2625
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v2, v4, :cond_2

    .line 2626
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {v2}, Lmf/org/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 2627
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {v2, v0}, Lmf/org/w3c/dom/ls/LSParserFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v1

    .line 2628
    .local v1, "code":S
    packed-switch v1, :pswitch_data_0

    .line 2647
    .end local v1    # "code":S
    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object v2, v0

    .line 2617
    check-cast v2, Lmf/org/w3c/dom/Text;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/Text;->setData(Ljava/lang/String;)V

    goto :goto_0

    .line 2630
    .restart local v1    # "code":S
    :pswitch_0
    sget-object v2, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2

    .line 2636
    :pswitch_1
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v2, v0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_1

    .line 2628
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setDocumentClassName(Ljava/lang/String;)V
    .locals 9
    .param p1, "documentClassName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 339
    if-nez p1, :cond_0

    .line 340
    const-string p1, "mf.org.apache.xerces.dom.DocumentImpl"

    .line 343
    :cond_0
    const-string v2, "mf.org.apache.xerces.dom.DocumentImpl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
    const-string v2, "mf.org.apache.xerces.dom.PSVIDocumentImpl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 348
    :try_start_0
    invoke-static {}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    .line 347
    invoke-static {p1, v2, v3}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    .line 350
    .local v0, "_class":Ljava/lang/Class;
    const-class v2, Lmf/org/w3c/dom/Document;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 351
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 353
    const-string v3, "http://www.w3.org/dom/DOMTR"

    .line 354
    const-string v4, "InvalidDocumentClassName"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 352
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 351
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .end local v0    # "_class":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 360
    const-string v3, "http://www.w3.org/dom/DOMTR"

    .line 361
    const-string v4, "MissingDocumentClassName"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    .line 359
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 358
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 366
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    .line 367
    const-string v2, "mf.org.apache.xerces.dom.DocumentImpl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 368
    iput-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    .line 371
    :cond_2
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 462
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setLocale(Ljava/util/Locale;)V

    .line 464
    return-void
.end method

.method public startAttlist(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 2523
    return-void
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
    .line 1406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInCDATASection:Z

    .line 1407
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v0, :cond_0

    .line 1408
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v0, :cond_1

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1411
    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateCDATANodes:Z

    if-eqz v0, :cond_0

    .line 1412
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    goto :goto_0
.end method

.method public startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "type"    # S
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1860
    return-void
.end method

.method public startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1806
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    .line 1807
    if-eqz p1, :cond_0

    .line 1808
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v0, :cond_2

    .line 1811
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    .line 1813
    :cond_2
    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 11
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
    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 761
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    .line 762
    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v5, :cond_4

    .line 763
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    const-string v6, "mf.org.apache.xerces.dom.DocumentImpl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 764
    new-instance v5, Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-direct {v5}, Lmf/org/apache/xerces/dom/DocumentImpl;-><init>()V

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    .line 765
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    check-cast v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 769
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5, v10}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setStrictErrorChecking(Z)V

    .line 771
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    .line 773
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setDocumentURI(Ljava/lang/String;)V

    .line 832
    :cond_0
    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 849
    :goto_1
    return-void

    .line 775
    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    const-string v6, "mf.org.apache.xerces.dom.PSVIDocumentImpl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 776
    new-instance v5, Lmf/org/apache/xerces/dom/PSVIDocumentImpl;

    invoke-direct {v5}, Lmf/org/apache/xerces/dom/PSVIDocumentImpl;-><init>()V

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    .line 777
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    check-cast v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 778
    iput-boolean v8, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    .line 782
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5, v10}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setStrictErrorChecking(Z)V

    .line 784
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    .line 786
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setDocumentURI(Ljava/lang/String;)V

    goto :goto_0

    .line 791
    :cond_2
    :try_start_0
    invoke-static {}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 792
    .local v0, "cl":Ljava/lang/ClassLoader;
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    .line 793
    const/4 v6, 0x1

    .line 792
    invoke-static {v5, v0, v6}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    .line 794
    .local v2, "documentClass":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/w3c/dom/Document;

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    .line 798
    const-string v5, "mf.org.apache.xerces.dom.CoreDocumentImpl"

    .line 799
    const/4 v6, 0x1

    .line 798
    invoke-static {v5, v0, v6}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    .line 800
    .local v1, "defaultDocClass":Ljava/lang/Class;
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 801
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    check-cast v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 803
    const-string v5, "mf.org.apache.xerces.dom.PSVIDocumentImpl"

    .line 804
    const/4 v6, 0x1

    .line 803
    invoke-static {v5, v0, v6}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v4

    .line 805
    .local v4, "psviDocClass":Ljava/lang/Class;
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 806
    const/4 v5, 0x1

    iput-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    .line 812
    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setStrictErrorChecking(Z)V

    .line 814
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    .line 816
    if-eqz p1, :cond_0

    .line 817
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setDocumentURI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 821
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "defaultDocClass":Ljava/lang/Class;
    .end local v2    # "documentClass":Ljava/lang/Class;
    .end local v4    # "psviDocClass":Ljava/lang/Class;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 824
    :catch_1
    move-exception v3

    .line 825
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    .line 827
    const-string v6, "http://www.w3.org/dom/DOMTR"

    .line 828
    const-string v7, "CannotCreateDocumentClass"

    .line 829
    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    aput-object v9, v8, v10

    .line 826
    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 825
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 835
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v5, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget-boolean v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    invoke-direct {v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;-><init>(Z)V

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 836
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    .line 837
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredDocument()I

    move-result v5

    iput v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentIndex:I

    .line 842
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v5, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    .line 844
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setDocumentURI(Ljava/lang/String;)V

    .line 845
    iget v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentIndex:I

    iput v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto/16 :goto_1
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 22
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 932
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v2, :cond_f

    .line 933
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v2, :cond_0

    .line 934
    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    .line 1126
    :goto_0
    return-void

    .line 937
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->createElementNode(Lmf/org/apache/xerces/xni/QName;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    .line 938
    .local v3, "el":Lmf/org/w3c/dom/Element;
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v11

    .line 939
    .local v11, "attrCount":I
    const/16 v19, 0x0

    .line 940
    .local v19, "seenSchemaDefault":Z
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    if-lt v0, v11, :cond_4

    .line 1014
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    .line 1016
    if-eqz p3, :cond_2

    .line 1017
    const-string v2, "ELEMENT_PSVI"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmf/org/apache/xerces/xs/ElementPSVI;

    .line 1018
    .local v16, "elementPSVI":Lmf/org/apache/xerces/xs/ElementPSVI;
    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v2, :cond_2

    .line 1019
    invoke-interface/range {v16 .. v16}, Lmf/org/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v21

    .line 1020
    .local v21, "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-nez v21, :cond_1

    .line 1021
    invoke-interface/range {v16 .. v16}, Lmf/org/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v21

    :cond_1
    move-object v2, v3

    .line 1023
    check-cast v2, Lmf/org/apache/xerces/dom/ElementNSImpl;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setType(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    .line 1029
    .end local v16    # "elementPSVI":Lmf/org/apache/xerces/xs/ElementPSVI;
    .end local v21    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v2, :cond_3

    .line 1030
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRoot:Lmf/org/w3c/dom/Node;

    if-nez v2, :cond_e

    .line 1032
    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRoot:Lmf/org/w3c/dom/Node;

    .line 1066
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1067
    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    .line 941
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->createAttrNode(Lmf/org/apache/xerces/xni/QName;)Lmf/org/w3c/dom/Attr;

    move-result-object v10

    .line 944
    .local v10, "attr":Lmf/org/w3c/dom/Attr;
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v14

    .line 946
    .local v14, "attrValue":Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v2

    const-string v4, "ATTRIBUTE_PSVI"

    invoke-interface {v2, v4}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmf/org/apache/xerces/xs/AttributePSVI;

    .line 947
    .local v13, "attrPSVI":Lmf/org/apache/xerces/xs/AttributePSVI;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    if-eqz v2, :cond_5

    if-eqz v13, :cond_5

    move-object v2, v10

    .line 948
    check-cast v2, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;

    invoke-virtual {v2, v13}, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/AttributePSVI;)V

    .line 951
    :cond_5
    invoke-interface {v10, v14}, Lmf/org/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 952
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v20

    .line 956
    .local v20, "specified":Z
    if-nez v20, :cond_a

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v4, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v2, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 958
    :cond_6
    invoke-interface {v3, v10}, Lmf/org/w3c/dom/Element;->setAttributeNodeNS(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    .line 959
    const/16 v19, 0x1

    .line 968
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v2, :cond_9

    move-object v12, v10

    .line 969
    check-cast v12, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 970
    .local v12, "attrImpl":Lmf/org/apache/xerces/dom/AttrImpl;
    const/16 v21, 0x0

    .line 971
    .local v21, "type":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 978
    .local v8, "id":Z
    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v2, :cond_c

    .line 980
    invoke-interface {v13}, Lmf/org/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v21

    .line 981
    .local v21, "type":Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    if-nez v21, :cond_b

    .line 982
    invoke-interface {v13}, Lmf/org/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v21

    .line 983
    .local v21, "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-eqz v21, :cond_7

    move-object/from16 v2, v21

    .line 984
    check-cast v2, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v8

    .line 985
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    .line 1006
    .end local v21    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_7
    :goto_4
    if-eqz v8, :cond_8

    move-object v2, v3

    .line 1007
    check-cast v2, Lmf/org/apache/xerces/dom/ElementImpl;

    const/4 v4, 0x1

    invoke-virtual {v2, v10, v4}, Lmf/org/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V

    .line 1010
    :cond_8
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    .line 940
    .end local v8    # "id":Z
    .end local v12    # "attrImpl":Lmf/org/apache/xerces/dom/AttrImpl;
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 962
    :cond_a
    invoke-interface {v3, v10}, Lmf/org/w3c/dom/Element;->setAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    goto :goto_3

    .restart local v8    # "id":Z
    .restart local v12    # "attrImpl":Lmf/org/apache/xerces/dom/AttrImpl;
    .local v21, "type":Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    :cond_b
    move-object/from16 v2, v21

    .line 989
    check-cast v2, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v8

    .line 990
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    goto :goto_4

    .line 995
    .local v21, "type":Ljava/lang/Object;
    :cond_c
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v4

    const-string v5, "ATTRIBUTE_DECLARED"

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 999
    .local v18, "isDeclared":Z
    if-eqz v18, :cond_d

    .line 1000
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v21

    .line 1001
    .local v21, "type":Ljava/lang/String;
    const-string v2, "ID"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1003
    .end local v21    # "type":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    goto :goto_4

    .line 1034
    .end local v8    # "id":Z
    .end local v10    # "attr":Lmf/org/w3c/dom/Attr;
    .end local v12    # "attrImpl":Lmf/org/apache/xerces/dom/AttrImpl;
    .end local v13    # "attrPSVI":Lmf/org/apache/xerces/xs/AttributePSVI;
    .end local v14    # "attrValue":Ljava/lang/String;
    .end local v18    # "isDeclared":Z
    .end local v20    # "specified":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/ls/LSParserFilter;->startElement(Lmf/org/w3c/dom/Element;)S

    move-result v15

    .line 1035
    .local v15, "code":S
    packed-switch v15, :pswitch_data_0

    .line 1059
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1038
    :pswitch_0
    sget-object v2, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2

    .line 1042
    :pswitch_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    .line 1043
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    goto/16 :goto_0

    .line 1053
    :pswitch_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    .line 1054
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1070
    .end local v3    # "el":Lmf/org/w3c/dom/Element;
    .end local v11    # "attrCount":I
    .end local v15    # "code":S
    .end local v17    # "i":I
    .end local v19    # "seenSchemaDefault":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v2, :cond_10

    .line 1071
    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :goto_5
    move-object/from16 v0, p1

    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 1070
    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredElement(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1072
    .local v3, "el":I
    const/16 v21, 0x0

    .line 1073
    .local v21, "type":Ljava/lang/Object;
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v11

    .line 1076
    .restart local v11    # "attrCount":I
    add-int/lit8 v17, v11, -0x1

    .end local v21    # "type":Ljava/lang/Object;
    .restart local v17    # "i":I
    :goto_6
    if-gez v17, :cond_11

    .line 1123
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v2, v4, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    .line 1124
    move-object/from16 v0, p0

    iput v3, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto/16 :goto_0

    .line 1071
    .end local v3    # "el":I
    .end local v11    # "attrCount":I
    .end local v17    # "i":I
    :cond_10
    const/4 v2, 0x0

    goto :goto_5

    .line 1079
    .restart local v3    # "el":I
    .restart local v11    # "attrCount":I
    .restart local v17    # "i":I
    :cond_11
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v2

    const-string v4, "ATTRIBUTE_PSVI"

    invoke-interface {v2, v4}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmf/org/apache/xerces/xs/AttributePSVI;

    .line 1080
    .restart local v13    # "attrPSVI":Lmf/org/apache/xerces/xs/AttributePSVI;
    const/4 v8, 0x0

    .line 1087
    .restart local v8    # "id":Z
    if-eqz v13, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v2, :cond_13

    .line 1089
    invoke-interface {v13}, Lmf/org/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v21

    .line 1090
    .local v21, "type":Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    if-nez v21, :cond_12

    .line 1091
    invoke-interface {v13}, Lmf/org/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v21

    .line 1092
    .local v21, "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-eqz v21, :cond_15

    move-object/from16 v2, v21

    .line 1093
    check-cast v2, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v8

    move-object/from16 v9, v21

    .line 1113
    .end local v21    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 1115
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    .line 1116
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v5

    .line 1117
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 1118
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v7

    .line 1113
    invoke-virtual/range {v2 .. v9}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Object;)I

    .line 1076
    add-int/lit8 v17, v17, -0x1

    move-object/from16 v21, v9

    goto :goto_6

    .local v21, "type":Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    :cond_12
    move-object/from16 v2, v21

    .line 1097
    check-cast v2, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v8

    move-object/from16 v9, v21

    .line 1099
    goto :goto_7

    .line 1102
    .end local v21    # "type":Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    :cond_13
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v4

    const-string v5, "ATTRIBUTE_DECLARED"

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 1106
    .restart local v18    # "isDeclared":Z
    if-eqz v18, :cond_14

    .line 1107
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v21

    .line 1108
    .local v21, "type":Ljava/lang/String;
    const-string v2, "ID"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move-object/from16 v9, v21

    goto :goto_7

    .end local v21    # "type":Ljava/lang/String;
    :cond_14
    move-object/from16 v9, v21

    goto :goto_7

    .end local v18    # "isDeclared":Z
    .local v21, "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_15
    move-object/from16 v9, v21

    goto :goto_7

    .line 1035
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1891
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1892
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    .line 1893
    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 10
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
    const/4 v7, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 501
    iget-boolean v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v6, :cond_3

    .line 502
    iget-boolean v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v6, :cond_0

    .line 558
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    .line 506
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-interface {v6, p1}, Lmf/org/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lmf/org/w3c/dom/EntityReference;

    move-result-object v1

    .line 507
    .local v1, "er":Lmf/org/w3c/dom/EntityReference;
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v6, :cond_2

    move-object v2, v1

    .line 512
    check-cast v2, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    .line 515
    .local v2, "erImpl":Lmf/org/apache/xerces/dom/EntityReferenceImpl;
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->setBaseURI(Ljava/lang/String;)V

    .line 516
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    if-eqz v6, :cond_1

    .line 518
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    invoke-interface {v6}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 519
    .local v0, "entities":Lmf/org/w3c/dom/NamedNodeMap;
    invoke-interface {v0, p1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/dom/EntityImpl;

    iput-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    .line 520
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    if-eqz v6, :cond_1

    .line 521
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    invoke-virtual {v6, p3}, Lmf/org/apache/xerces/dom/EntityImpl;->setInputEncoding(Ljava/lang/String;)V

    .line 527
    .end local v0    # "entities":Lmf/org/w3c/dom/NamedNodeMap;
    :cond_1
    invoke-virtual {v2, v8}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->needsSyncChildren(Z)V

    .line 529
    .end local v2    # "erImpl":Lmf/org/apache/xerces/dom/EntityReferenceImpl;
    :cond_2
    iput-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    .line 530
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v6, v1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 531
    iput-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    .line 536
    .end local v1    # "er":Lmf/org/w3c/dom/EntityReference;
    :cond_3
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredEntityReference(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 537
    .local v1, "er":I
    iget v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    if-eq v6, v9, :cond_4

    .line 539
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {v6, v7, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v3

    .line 540
    .local v3, "node":I
    :goto_1
    if-ne v3, v9, :cond_5

    .line 554
    .end local v3    # "node":I
    :cond_4
    :goto_2
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v6, v7, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    .line 555
    iput v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto :goto_0

    .line 541
    .restart local v3    # "node":I
    :cond_5
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v6, v3, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v5

    .line 542
    .local v5, "nodeType":S
    const/4 v6, 0x6

    if-ne v5, v6, :cond_6

    .line 544
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v6, v3, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v4

    .line 545
    .local v4, "nodeName":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 546
    iput v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    .line 547
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v6, v3, p3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setInputEncoding(ILjava/lang/String;)V

    goto :goto_2

    .line 551
    .end local v4    # "nodeName":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v6, v3, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v3

    goto :goto_1
.end method

.method public startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
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
    .line 2115
    if-eqz p4, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    .line 2116
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v0, :cond_0

    .line 2117
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "ENTITY_SKIPPED"

    invoke-interface {p4, v1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2118
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2120
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2121
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 578
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-eqz v0, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v0, :cond_2

    .line 582
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-nez v0, :cond_0

    .line 583
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/dom/EntityImpl;->setXmlEncoding(Ljava/lang/String;)V

    .line 584
    if-eqz p1, :cond_0

    .line 585
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/EntityImpl;->setXmlVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 590
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    invoke-virtual {v0, v1, p1, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setEntityInfo(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "notation"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 2166
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v3

    .line 2167
    .local v3, "publicId":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v4

    .line 2168
    .local v4, "literalSystemId":Ljava/lang/String;
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v1, :cond_1

    .line 2169
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, "<!ENTITY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2170
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2171
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2172
    if-eqz v3, :cond_4

    .line 2173
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, "PUBLIC \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2174
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2175
    if-eqz v4, :cond_0

    .line 2176
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, "\' \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2177
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2184
    :cond_0
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, "\' NDATA "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2185
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2186
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, ">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2194
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    if-eqz v1, :cond_2

    .line 2195
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    invoke-interface {v1}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 2196
    .local v7, "entities":Lmf/org/w3c/dom/NamedNodeMap;
    invoke-interface {v7, p1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/dom/EntityImpl;

    .line 2197
    .local v8, "entity":Lmf/org/apache/xerces/dom/EntityImpl;
    if-nez v8, :cond_2

    .line 2198
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lmf/org/w3c/dom/Entity;

    move-result-object v8

    .end local v8    # "entity":Lmf/org/apache/xerces/dom/EntityImpl;
    check-cast v8, Lmf/org/apache/xerces/dom/EntityImpl;

    .line 2199
    .restart local v8    # "entity":Lmf/org/apache/xerces/dom/EntityImpl;
    invoke-virtual {v8, v3}, Lmf/org/apache/xerces/dom/EntityImpl;->setPublicId(Ljava/lang/String;)V

    .line 2200
    invoke-virtual {v8, v4}, Lmf/org/apache/xerces/dom/EntityImpl;->setSystemId(Ljava/lang/String;)V

    .line 2201
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Lmf/org/apache/xerces/dom/EntityImpl;->setNotationName(Ljava/lang/String;)V

    .line 2202
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lmf/org/apache/xerces/dom/EntityImpl;->setBaseURI(Ljava/lang/String;)V

    .line 2203
    invoke-interface {v7, v8}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 2208
    .end local v7    # "entities":Lmf/org/w3c/dom/NamedNodeMap;
    .end local v8    # "entity":Lmf/org/apache/xerces/dom/EntityImpl;
    :cond_2
    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 2209
    const/4 v10, 0x0

    .line 2210
    .local v10, "found":Z
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v11

    .line 2211
    .local v11, "nodeIndex":I
    :goto_1
    const/4 v1, -0x1

    if-ne v11, v1, :cond_5

    .line 2222
    :goto_2
    if-nez v10, :cond_3

    .line 2223
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 2224
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move-object/from16 v5, p3

    .line 2223
    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 2225
    .local v9, "entityIndex":I
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {v1, v2, v9}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    .line 2229
    .end local v9    # "entityIndex":I
    .end local v10    # "found":Z
    .end local v11    # "nodeIndex":I
    :cond_3
    return-void

    .line 2181
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, "SYSTEM \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2182
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2212
    .restart local v10    # "found":Z
    .restart local v11    # "nodeIndex":I
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v11, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v13

    .line 2213
    .local v13, "nodeType":S
    const/4 v1, 0x6

    if-ne v13, v1, :cond_6

    .line 2214
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v11, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v12

    .line 2215
    .local v12, "nodeName":Ljava/lang/String;
    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2216
    const/4 v10, 0x1

    .line 2217
    goto :goto_2

    .line 2220
    .end local v12    # "nodeName":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v11, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v11

    goto :goto_1
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
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
    .line 867
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v0, :cond_2

    .line 870
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v0, :cond_1

    .line 871
    if-eqz p1, :cond_0

    .line 872
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setXmlVersion(Ljava/lang/String;)V

    .line 873
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setXmlEncoding(Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    const-string v1, "yes"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setXmlStandalone(Z)V

    .line 883
    :cond_1
    :goto_0
    return-void

    .line 878
    :cond_2
    if-eqz p1, :cond_3

    .line 879
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setXmlVersion(Ljava/lang/String;)V

    .line 880
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setXmlEncoding(Ljava/lang/String;)V

    .line 881
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const-string v1, "yes"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setXmlStandalone(Z)V

    goto :goto_0
.end method
