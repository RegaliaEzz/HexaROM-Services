.class public Lmf/org/apache/xerces/dom/CoreDocumentImpl;
.super Lmf/org/apache/xerces/dom/ParentNode;
.source "CoreDocumentImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/Document;


# static fields
.field private static final kidOK:[I

.field static final serialVersionUID:J


# instance fields
.field protected actualEncoding:Ljava/lang/String;

.field protected allowGrammarAccess:Z

.field protected changes:I

.field protected docElement:Lmf/org/apache/xerces/dom/ElementImpl;

.field protected docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

.field private documentNumber:I

.field transient domNormalizer:Lmf/org/apache/xerces/dom/DOMNormalizer;

.field protected encoding:Ljava/lang/String;

.field protected errorChecking:Z

.field transient fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

.field protected fDocumentURI:Ljava/lang/String;

.field transient fFreeNLCache:Lmf/org/apache/xerces/dom/NodeListCache;

.field transient fXPathEvaluator:Ljava/lang/Object;

.field protected identifiers:Ljava/util/Hashtable;

.field private nodeCounter:I

.field private nodeTable:Ljava/util/Map;

.field protected standalone:Z

.field protected userData:Ljava/util/Map;

.field protected version:Ljava/lang/String;

.field private xml11Version:Z

.field protected xmlVersionChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    .line 216
    const/16 v0, 0xd

    new-array v0, v0, [I

    sput-object v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    .line 218
    sget-object v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/16 v1, 0x9

    .line 219
    const/16 v2, 0x582

    .line 218
    aput v2, v0, v1

    .line 222
    sget-object v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/16 v1, 0xb

    .line 223
    sget-object v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v3, 0x6

    .line 224
    sget-object v4, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v5, 0x5

    .line 225
    sget-object v6, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v7, 0x1

    .line 226
    const/16 v8, 0x1ba

    .line 225
    aput v8, v6, v7

    .line 224
    aput v8, v4, v5

    .line 223
    aput v8, v2, v3

    .line 222
    aput v8, v0, v1

    .line 231
    sget-object v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v1, 0x2

    .line 232
    const/16 v2, 0x28

    .line 231
    aput v2, v0, v1

    .line 234
    sget-object v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/16 v1, 0xa

    .line 235
    sget-object v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v3, 0x7

    .line 236
    sget-object v4, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/16 v5, 0x8

    .line 237
    sget-object v6, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v7, 0x3

    .line 238
    sget-object v8, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v9, 0x4

    .line 239
    sget-object v10, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/16 v11, 0xc

    .line 240
    const/4 v12, 0x0

    .line 239
    aput v12, v10, v11

    .line 238
    aput v12, v8, v9

    .line 237
    aput v12, v6, v7

    .line 236
    aput v12, v4, v5

    .line 235
    aput v12, v2, v3

    .line 234
    aput v12, v0, v1

    .line 242
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;-><init>(Z)V

    .line 254
    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/DocumentType;)V
    .locals 1
    .param p1, "doctype"    # Lmf/org/w3c/dom/DocumentType;

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;-><init>(Lmf/org/w3c/dom/DocumentType;Z)V

    .line 269
    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/DocumentType;Z)V
    .locals 7
    .param p1, "doctype"    # Lmf/org/w3c/dom/DocumentType;
    .param p2, "grammarAccess"    # Z

    .prologue
    .line 273
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;-><init>(Z)V

    .line 274
    if-eqz p1, :cond_0

    .line 277
    :try_start_0
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .local v1, "doctypeImpl":Lmf/org/apache/xerces/dom/DocumentTypeImpl;
    iput-object p0, v1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 283
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 285
    .end local v1    # "doctypeImpl":Lmf/org/apache/xerces/dom/DocumentTypeImpl;
    :cond_0
    return-void

    .line 278
    :catch_0
    move-exception v2

    .line 279
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "WRONG_DOCUMENT_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "msg":Ljava/lang/String;
    new-instance v4, Lmf/org/w3c/dom/DOMException;

    const/4 v5, 0x4

    invoke-direct {v4, v5, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "grammarAccess"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 258
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/ParentNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 142
    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->domNormalizer:Lmf/org/apache/xerces/dom/DOMNormalizer;

    .line 143
    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    .line 146
    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;

    .line 185
    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->changes:I

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    .line 197
    iput-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xmlVersionChanged:Z

    .line 203
    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->documentNumber:I

    .line 207
    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeCounter:I

    .line 209
    iput-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    .line 259
    iput-object p0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 260
    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    .line 261
    return-void
.end method

.method private importNode(Lmf/org/w3c/dom/Node;ZZLjava/util/HashMap;)Lmf/org/w3c/dom/Node;
    .locals 31
    .param p1, "source"    # Lmf/org/w3c/dom/Node;
    .param p2, "deep"    # Z
    .param p3, "cloningDoc"    # Z
    .param p4, "reversedIdentifiers"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1518
    const/16 v17, 0x0

    .line 1519
    .local v17, "newnode":Lmf/org/w3c/dom/Node;
    const/16 v27, 0x0

    .line 1532
    .local v27, "userData":Ljava/util/Hashtable;
    move-object/from16 v0, p1

    instance-of v0, v0, Lmf/org/apache/xerces/dom/NodeImpl;

    move/from16 v28, v0

    if-eqz v28, :cond_0

    move-object/from16 v28, p1

    .line 1533
    check-cast v28, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual/range {v28 .. v28}, Lmf/org/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v27

    .line 1534
    :cond_0
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v26

    .line 1535
    .local v26, "type":I
    packed-switch v26, :pswitch_data_0

    .line 1732
    :pswitch_0
    const-string/jumbo v28, "http://www.w3.org/dom/DOMTR"

    const-string v29, "NOT_SUPPORTED_ERR"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1733
    .local v11, "msg":Ljava/lang/String;
    new-instance v28, Lmf/org/w3c/dom/DOMException;

    const/16 v29, 0x9

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v0, v1, v11}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v28

    .line 1538
    .end local v11    # "msg":Ljava/lang/String;
    :pswitch_1
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lmf/org/w3c/dom/Document;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v28

    const-string v29, "XML"

    const-string v30, "2.0"

    invoke-interface/range {v28 .. v30}, Lmf/org/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 1540
    .local v6, "domLevel20":Z
    if-eqz v6, :cond_1

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_8

    .line 1541
    :cond_1
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createElement(Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v13

    .line 1547
    .local v13, "newElement":Lmf/org/w3c/dom/Element;
    :goto_0
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v20

    .line 1548
    .local v20, "sourceAttrs":Lmf/org/w3c/dom/NamedNodeMap;
    if-eqz v20, :cond_2

    .line 1549
    invoke-interface/range {v20 .. v20}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v10

    .line 1550
    .local v10, "length":I
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_1
    if-lt v9, v10, :cond_9

    .line 1573
    .end local v9    # "index":I
    .end local v10    # "length":I
    :cond_2
    if-eqz p4, :cond_4

    .line 1575
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1576
    .local v7, "elementId":Ljava/lang/Object;
    if-eqz v7, :cond_4

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    if-nez v28, :cond_3

    .line 1578
    new-instance v28, Ljava/util/Hashtable;

    invoke-direct/range {v28 .. v28}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    .line 1580
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v7, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    .end local v7    # "elementId":Ljava/lang/Object;
    :cond_4
    move-object/from16 v17, v13

    .line 1737
    .end local v6    # "domLevel20":Z
    .end local v13    # "newElement":Lmf/org/w3c/dom/Element;
    .end local v20    # "sourceAttrs":Lmf/org/w3c/dom/NamedNodeMap;
    :goto_2
    if-eqz v27, :cond_5

    .line 1738
    const/16 v28, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v28

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;SLjava/util/Hashtable;)V

    .line 1741
    :cond_5
    if-eqz p2, :cond_6

    .line 1742
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v23

    .line 1743
    .local v23, "srckid":Lmf/org/w3c/dom/Node;
    :goto_3
    if-nez v23, :cond_18

    .line 1749
    .end local v23    # "srckid":Lmf/org/w3c/dom/Node;
    :cond_6
    invoke-interface/range {v17 .. v17}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v28

    const/16 v29, 0x6

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    move-object/from16 v28, v17

    .line 1750
    check-cast v28, Lmf/org/apache/xerces/dom/NodeImpl;

    const/16 v29, 0x1

    const/16 v30, 0x1

    invoke-virtual/range {v28 .. v30}, Lmf/org/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    .line 1752
    :cond_7
    return-object v17

    .line 1543
    .restart local v6    # "domLevel20":Z
    :cond_8
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v28

    .line 1544
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v29

    .line 1543
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v13

    .restart local v13    # "newElement":Lmf/org/w3c/dom/Element;
    goto :goto_0

    .line 1551
    .restart local v9    # "index":I
    .restart local v10    # "length":I
    .restart local v20    # "sourceAttrs":Lmf/org/w3c/dom/NamedNodeMap;
    :cond_9
    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lmf/org/w3c/dom/Attr;

    .line 1557
    .local v5, "attr":Lmf/org/w3c/dom/Attr;
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v28

    if-nez v28, :cond_a

    if-eqz p3, :cond_c

    .line 1558
    :cond_a
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->importNode(Lmf/org/w3c/dom/Node;ZZLjava/util/HashMap;)Lmf/org/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lmf/org/w3c/dom/Attr;

    .line 1563
    .local v12, "newAttr":Lmf/org/w3c/dom/Attr;
    if-eqz v6, :cond_b

    .line 1564
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_d

    .line 1565
    :cond_b
    invoke-interface {v13, v12}, Lmf/org/w3c/dom/Element;->setAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    .line 1550
    .end local v12    # "newAttr":Lmf/org/w3c/dom/Attr;
    :cond_c
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1567
    .restart local v12    # "newAttr":Lmf/org/w3c/dom/Attr;
    :cond_d
    invoke-interface {v13, v12}, Lmf/org/w3c/dom/Element;->setAttributeNodeNS(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    goto :goto_4

    .line 1590
    .end local v5    # "attr":Lmf/org/w3c/dom/Attr;
    .end local v6    # "domLevel20":Z
    .end local v9    # "index":I
    .end local v10    # "length":I
    .end local v12    # "newAttr":Lmf/org/w3c/dom/Attr;
    .end local v13    # "newElement":Lmf/org/w3c/dom/Element;
    .end local v20    # "sourceAttrs":Lmf/org/w3c/dom/NamedNodeMap;
    :pswitch_2
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lmf/org/w3c/dom/Document;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v28

    const-string v29, "XML"

    const-string v30, "2.0"

    invoke-interface/range {v28 .. v30}, Lmf/org/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 1591
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_e

    .line 1592
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v17

    .line 1603
    :goto_5
    move-object/from16 v0, p1

    instance-of v0, v0, Lmf/org/apache/xerces/dom/AttrImpl;

    move/from16 v28, v0

    if-eqz v28, :cond_11

    move-object/from16 v5, p1

    .line 1604
    check-cast v5, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 1605
    .local v5, "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v28

    if-eqz v28, :cond_10

    move-object/from16 v14, v17

    .line 1606
    check-cast v14, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 1607
    .local v14, "newattr":Lmf/org/apache/xerces/dom/AttrImpl;
    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    .line 1608
    const/16 p2, 0x0

    .line 1609
    goto/16 :goto_2

    .line 1594
    .end local v5    # "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    .end local v14    # "newattr":Lmf/org/apache/xerces/dom/AttrImpl;
    :cond_e
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v28

    .line 1595
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v29

    .line 1594
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v17

    .line 1597
    goto :goto_5

    .line 1599
    :cond_f
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v17

    goto :goto_5

    .line 1611
    .restart local v5    # "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    :cond_10
    const/16 p2, 0x1

    .line 1613
    goto/16 :goto_2

    .line 1620
    .end local v5    # "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    :cond_11
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v28

    if-nez v28, :cond_12

    .line 1621
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 1622
    const/16 p2, 0x0

    .line 1623
    goto/16 :goto_2

    .line 1624
    :cond_12
    const/16 p2, 0x1

    .line 1627
    goto/16 :goto_2

    .line 1631
    :pswitch_3
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v17

    .line 1632
    goto/16 :goto_2

    .line 1636
    :pswitch_4
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;

    move-result-object v17

    .line 1637
    goto/16 :goto_2

    .line 1641
    :pswitch_5
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createEntityReference(Ljava/lang/String;)Lmf/org/w3c/dom/EntityReference;

    move-result-object v17

    .line 1644
    const/16 p2, 0x0

    .line 1645
    goto/16 :goto_2

    :pswitch_6
    move-object/from16 v22, p1

    .line 1649
    check-cast v22, Lmf/org/w3c/dom/Entity;

    .line 1651
    .local v22, "srcentity":Lmf/org/w3c/dom/Entity;
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lmf/org/w3c/dom/Entity;

    move-result-object v16

    check-cast v16, Lmf/org/apache/xerces/dom/EntityImpl;

    .line 1652
    .local v16, "newentity":Lmf/org/apache/xerces/dom/EntityImpl;
    invoke-interface/range {v22 .. v22}, Lmf/org/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/EntityImpl;->setPublicId(Ljava/lang/String;)V

    .line 1653
    invoke-interface/range {v22 .. v22}, Lmf/org/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/EntityImpl;->setSystemId(Ljava/lang/String;)V

    .line 1654
    invoke-interface/range {v22 .. v22}, Lmf/org/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/EntityImpl;->setNotationName(Ljava/lang/String;)V

    .line 1657
    const/16 v28, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/EntityImpl;->isReadOnly(Z)V

    .line 1658
    move-object/from16 v17, v16

    .line 1659
    goto/16 :goto_2

    .line 1663
    .end local v16    # "newentity":Lmf/org/apache/xerces/dom/EntityImpl;
    .end local v22    # "srcentity":Lmf/org/w3c/dom/Entity;
    :pswitch_7
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v28

    .line 1664
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v29

    .line 1663
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;

    move-result-object v17

    .line 1665
    goto/16 :goto_2

    .line 1669
    :pswitch_8
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createComment(Ljava/lang/String;)Lmf/org/w3c/dom/Comment;

    move-result-object v17

    .line 1670
    goto/16 :goto_2

    .line 1676
    :pswitch_9
    if-nez p3, :cond_13

    .line 1677
    const-string/jumbo v28, "http://www.w3.org/dom/DOMTR"

    const-string v29, "NOT_SUPPORTED_ERR"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1678
    .restart local v11    # "msg":Ljava/lang/String;
    new-instance v28, Lmf/org/w3c/dom/DOMException;

    const/16 v29, 0x9

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v0, v1, v11}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v28

    .end local v11    # "msg":Ljava/lang/String;
    :cond_13
    move-object/from16 v21, p1

    .line 1680
    check-cast v21, Lmf/org/w3c/dom/DocumentType;

    .line 1682
    .local v21, "srcdoctype":Lmf/org/w3c/dom/DocumentType;
    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/DocumentType;->getNodeName()Ljava/lang/String;

    move-result-object v28

    .line 1683
    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v29

    .line 1684
    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v30

    .line 1682
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/DocumentType;

    move-result-object v15

    .line 1681
    check-cast v15, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    .line 1685
    .local v15, "newdoctype":Lmf/org/apache/xerces/dom/DocumentTypeImpl;
    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->setInternalSubset(Ljava/lang/String;)V

    .line 1687
    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v19

    .line 1688
    .local v19, "smap":Lmf/org/w3c/dom/NamedNodeMap;
    invoke-virtual {v15}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v25

    .line 1689
    .local v25, "tmap":Lmf/org/w3c/dom/NamedNodeMap;
    if-eqz v19, :cond_14

    .line 1690
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    invoke-interface/range {v19 .. v19}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v28

    move/from16 v0, v28

    if-lt v8, v0, :cond_16

    .line 1695
    .end local v8    # "i":I
    :cond_14
    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/DocumentType;->getNotations()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v19

    .line 1696
    invoke-virtual {v15}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getNotations()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v25

    .line 1697
    if-eqz v19, :cond_15

    .line 1698
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_7
    invoke-interface/range {v19 .. v19}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v28

    move/from16 v0, v28

    if-lt v8, v0, :cond_17

    .line 1709
    .end local v8    # "i":I
    :cond_15
    move-object/from16 v17, v15

    .line 1710
    goto/16 :goto_2

    .line 1691
    .restart local v8    # "i":I
    :cond_16
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v28

    const/16 v29, 0x1

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->importNode(Lmf/org/w3c/dom/Node;ZZLjava/util/HashMap;)Lmf/org/w3c/dom/Node;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1690
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1699
    :cond_17
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v28

    const/16 v29, 0x1

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->importNode(Lmf/org/w3c/dom/Node;ZZLjava/util/HashMap;)Lmf/org/w3c/dom/Node;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1698
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1714
    .end local v8    # "i":I
    .end local v15    # "newdoctype":Lmf/org/apache/xerces/dom/DocumentTypeImpl;
    .end local v19    # "smap":Lmf/org/w3c/dom/NamedNodeMap;
    .end local v21    # "srcdoctype":Lmf/org/w3c/dom/DocumentType;
    .end local v25    # "tmap":Lmf/org/w3c/dom/NamedNodeMap;
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createDocumentFragment()Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v17

    .line 1716
    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v24, p1

    .line 1720
    check-cast v24, Lmf/org/w3c/dom/Notation;

    .line 1722
    .local v24, "srcnotation":Lmf/org/w3c/dom/Notation;
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createNotation(Ljava/lang/String;)Lmf/org/w3c/dom/Notation;

    move-result-object v18

    check-cast v18, Lmf/org/apache/xerces/dom/NotationImpl;

    .line 1723
    .local v18, "newnotation":Lmf/org/apache/xerces/dom/NotationImpl;
    invoke-interface/range {v24 .. v24}, Lmf/org/w3c/dom/Notation;->getPublicId()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/NotationImpl;->setPublicId(Ljava/lang/String;)V

    .line 1724
    invoke-interface/range {v24 .. v24}, Lmf/org/w3c/dom/Notation;->getSystemId()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/NotationImpl;->setSystemId(Ljava/lang/String;)V

    .line 1726
    move-object/from16 v17, v18

    .line 1728
    goto/16 :goto_2

    .line 1745
    .end local v18    # "newnotation":Lmf/org/apache/xerces/dom/NotationImpl;
    .end local v24    # "srcnotation":Lmf/org/w3c/dom/Notation;
    .restart local v23    # "srckid":Lmf/org/w3c/dom/Node;
    :cond_18
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->importNode(Lmf/org/w3c/dom/Node;ZZLjava/util/HashMap;)Lmf/org/w3c/dom/Node;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1744
    invoke-interface/range {v23 .. v23}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v23

    goto/16 :goto_3

    .line 1535
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static final isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "local"    # Ljava/lang/String;
    .param p2, "xml11Version"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2237
    if-nez p1, :cond_0

    .line 2249
    :goto_0
    return v2

    .line 2238
    :cond_0
    const/4 v0, 0x0

    .line 2240
    .local v0, "validNCName":Z
    if-nez p2, :cond_3

    .line 2241
    if-eqz p0, :cond_1

    invoke-static {p0}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2242
    :cond_1
    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    .line 2249
    goto :goto_0

    :cond_2
    move v0, v2

    .line 2241
    goto :goto_1

    .line 2245
    :cond_3
    if-eqz p0, :cond_4

    invoke-static {p0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2246
    :cond_4
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 2245
    :goto_2
    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public static final isXMLName(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "xml11Version"    # Z

    .prologue
    .line 2217
    if-nez p0, :cond_0

    .line 2218
    const/4 v0, 0x0

    .line 2223
    :goto_0
    return v0

    .line 2220
    :cond_0
    if-nez p1, :cond_1

    .line 2221
    invoke-static {p0}, Lmf/org/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 2223
    :cond_1
    invoke-static {p0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2781
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2782
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2783
    new-instance v0, Ljava/util/WeakHashMap;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    .line 2785
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2786
    new-instance v0, Ljava/util/WeakHashMap;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    .line 2788
    :cond_1
    return-void
.end method

.method private replaceRenameElement(Lmf/org/apache/xerces/dom/ElementImpl;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/dom/ElementImpl;
    .locals 6
    .param p1, "el"    # Lmf/org/apache/xerces/dom/ElementImpl;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 1091
    invoke-virtual {p0, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/ElementNSImpl;

    .line 1094
    .local v2, "nel":Lmf/org/apache/xerces/dom/ElementNSImpl;
    invoke-virtual {p0, p1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->copyEventListeners(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 1097
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeUserDataTable(Lmf/org/w3c/dom/Node;)Ljava/util/Hashtable;

    move-result-object v1

    .line 1100
    .local v1, "data":Ljava/util/Hashtable;
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 1101
    .local v4, "parent":Lmf/org/w3c/dom/Node;
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 1102
    .local v3, "nextSib":Lmf/org/w3c/dom/Node;
    if-eqz v4, :cond_0

    .line 1103
    invoke-interface {v4, p1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1106
    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1107
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_2

    .line 1113
    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/dom/ElementNSImpl;->moveSpecifiedAttributes(Lmf/org/apache/xerces/dom/ElementImpl;)V

    .line 1116
    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    .line 1120
    const/4 v5, 0x4

    .line 1119
    invoke-virtual {p0, p1, v2, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    .line 1123
    if-eqz v4, :cond_1

    .line 1124
    invoke-interface {v4, v2, v3}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1126
    :cond_1
    return-object v2

    .line 1108
    :cond_2
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1109
    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1110
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2797
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    .line 2798
    .local v1, "oldUserData":Ljava/util/Map;
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    .line 2800
    .local v0, "oldNodeTable":Ljava/util/Map;
    if-eqz v1, :cond_0

    .line 2801
    :try_start_0
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2, v1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    .line 2803
    :cond_0
    if-eqz v0, :cond_1

    .line 2804
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2, v0}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    .line 2806
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2811
    iput-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    .line 2812
    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    .line 2814
    return-void

    .line 2810
    :catchall_0
    move-exception v2

    .line 2811
    iput-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    .line 2812
    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    .line 2813
    throw v2
.end method


# virtual methods
.method public abort()V
    .locals 0

    .prologue
    .line 1255
    return-void
.end method

.method protected addEventListener(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V
    .locals 0
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "listener"    # Lmf/org/w3c/dom/events/EventListener;
    .param p4, "useCapture"    # Z

    .prologue
    .line 2643
    return-void
.end method

.method public adoptNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 17
    .param p1, "source"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 1765
    const/4 v13, 0x0

    .line 1767
    .local v13, "userData":Ljava/util/Hashtable;
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    move-object v9, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1775
    .local v9, "node":Lmf/org/apache/xerces/dom/NodeImpl;
    if-nez p1, :cond_1

    .line 1776
    const/4 v9, 0x0

    .line 1906
    .end local v9    # "node":Lmf/org/apache/xerces/dom/NodeImpl;
    :cond_0
    :goto_0
    return-object v9

    .line 1768
    :catch_0
    move-exception v5

    .line 1770
    .local v5, "e":Ljava/lang/ClassCastException;
    const/4 v9, 0x0

    goto :goto_0

    .line 1778
    .end local v5    # "e":Ljava/lang/ClassCastException;
    .restart local v9    # "node":Lmf/org/apache/xerces/dom/NodeImpl;
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 1780
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v12

    .line 1781
    .local v12, "thisImpl":Lmf/org/w3c/dom/DOMImplementation;
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v14

    invoke-interface {v14}, Lmf/org/w3c/dom/Document;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v10

    .line 1784
    .local v10, "otherImpl":Lmf/org/w3c/dom/DOMImplementation;
    if-eq v12, v10, :cond_7

    .line 1786
    instance-of v14, v12, Lmf/org/apache/xerces/dom/DOMImplementationImpl;

    if-eqz v14, :cond_5

    .line 1787
    instance-of v14, v10, Lmf/org/apache/xerces/dom/DeferredDOMImplementationImpl;

    if-eqz v14, :cond_5

    .line 1789
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->undeferChildren(Lmf/org/w3c/dom/Node;)V

    .line 1807
    .end local v10    # "otherImpl":Lmf/org/w3c/dom/DOMImplementation;
    .end local v12    # "thisImpl":Lmf/org/w3c/dom/DOMImplementation;
    :cond_2
    :goto_1
    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 1888
    :pswitch_0
    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v13

    .line 1890
    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v11

    .line 1891
    .local v11, "parent":Lmf/org/w3c/dom/Node;
    if-eqz v11, :cond_3

    .line 1892
    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1895
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lmf/org/apache/xerces/dom/NodeImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 1896
    if-eqz v13, :cond_4

    .line 1897
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    .line 1903
    .end local v11    # "parent":Lmf/org/w3c/dom/Node;
    :cond_4
    :goto_2
    if-eqz v13, :cond_0

    .line 1904
    const/4 v14, 0x0

    const/4 v15, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15, v13}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;SLjava/util/Hashtable;)V

    goto :goto_0

    .line 1791
    .restart local v10    # "otherImpl":Lmf/org/w3c/dom/DOMImplementation;
    .restart local v12    # "thisImpl":Lmf/org/w3c/dom/DOMImplementation;
    :cond_5
    instance-of v14, v12, Lmf/org/apache/xerces/dom/DeferredDOMImplementationImpl;

    if-eqz v14, :cond_6

    .line 1792
    instance-of v14, v10, Lmf/org/apache/xerces/dom/DOMImplementationImpl;

    if-nez v14, :cond_2

    .line 1797
    :cond_6
    const/4 v9, 0x0

    goto :goto_0

    .line 1801
    :cond_7
    instance-of v14, v10, Lmf/org/apache/xerces/dom/DeferredDOMImplementationImpl;

    if-eqz v14, :cond_2

    .line 1803
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->undeferChildren(Lmf/org/w3c/dom/Node;)V

    goto :goto_1

    .end local v10    # "otherImpl":Lmf/org/w3c/dom/DOMImplementation;
    .end local v12    # "thisImpl":Lmf/org/w3c/dom/DOMImplementation;
    :pswitch_1
    move-object v2, v9

    .line 1809
    check-cast v2, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 1811
    .local v2, "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 1813
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v14

    invoke-interface {v14, v2}, Lmf/org/w3c/dom/Element;->removeAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    .line 1816
    :cond_8
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    .line 1817
    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v13

    .line 1820
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 1821
    if-eqz v13, :cond_4

    .line 1822
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    goto :goto_2

    .line 1829
    .end local v2    # "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    :pswitch_2
    const-string/jumbo v14, "http://www.w3.org/dom/DOMTR"

    const-string v15, "NO_MODIFICATION_ALLOWED_ERR"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1830
    .local v8, "msg":Ljava/lang/String;
    new-instance v14, Lmf/org/w3c/dom/DOMException;

    const/4 v15, 0x7

    invoke-direct {v14, v15, v8}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v14

    .line 1837
    .end local v8    # "msg":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v14, "http://www.w3.org/dom/DOMTR"

    const-string v15, "NOT_SUPPORTED_ERR"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1838
    .restart local v8    # "msg":Ljava/lang/String;
    new-instance v14, Lmf/org/w3c/dom/DOMException;

    const/16 v15, 0x9

    invoke-direct {v14, v15, v8}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v14

    .line 1841
    .end local v8    # "msg":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v13

    .line 1843
    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v11

    .line 1844
    .restart local v11    # "parent":Lmf/org/w3c/dom/Node;
    if-eqz v11, :cond_9

    .line 1845
    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1849
    :cond_9
    :goto_3
    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .local v3, "child":Lmf/org/w3c/dom/Node;
    if-nez v3, :cond_b

    .line 1853
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lmf/org/apache/xerces/dom/NodeImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 1854
    if-eqz v13, :cond_a

    .line 1855
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    .line 1857
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    if-eqz v14, :cond_4

    .line 1860
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    invoke-virtual {v14}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 1861
    .local v6, "entities":Lmf/org/w3c/dom/NamedNodeMap;
    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v14}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v7

    .line 1862
    .local v7, "entityNode":Lmf/org/w3c/dom/Node;
    if-eqz v7, :cond_4

    .line 1865
    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 1866
    :goto_4
    if-eqz v3, :cond_4

    .line 1867
    const/4 v14, 0x1

    invoke-interface {v3, v14}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 1868
    .local v4, "childClone":Lmf/org/w3c/dom/Node;
    invoke-virtual {v9, v4}, Lmf/org/apache/xerces/dom/NodeImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1866
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    goto :goto_4

    .line 1850
    .end local v4    # "childClone":Lmf/org/w3c/dom/Node;
    .end local v6    # "entities":Lmf/org/w3c/dom/NamedNodeMap;
    .end local v7    # "entityNode":Lmf/org/w3c/dom/Node;
    :cond_b
    invoke-virtual {v9, v3}, Lmf/org/apache/xerces/dom/NodeImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_3

    .line 1873
    .end local v3    # "child":Lmf/org/w3c/dom/Node;
    .end local v11    # "parent":Lmf/org/w3c/dom/Node;
    :pswitch_5
    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v13

    .line 1875
    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v11

    .line 1876
    .restart local v11    # "parent":Lmf/org/w3c/dom/Node;
    if-eqz v11, :cond_c

    .line 1877
    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1880
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lmf/org/apache/xerces/dom/NodeImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 1881
    if-eqz v13, :cond_d

    .line 1882
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    :cond_d
    move-object v14, v9

    .line 1884
    check-cast v14, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v14}, Lmf/org/apache/xerces/dom/ElementImpl;->reconcileDefaultAttributes()V

    goto/16 :goto_2

    .line 1807
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V
    .locals 2
    .param p1, "n"    # Lmf/org/w3c/dom/Node;
    .param p2, "c"    # Lmf/org/w3c/dom/Node;
    .param p3, "operation"    # S

    .prologue
    .line 2440
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 2451
    :cond_0
    :goto_0
    return-void

    .line 2444
    :cond_1
    instance-of v1, p1, Lmf/org/apache/xerces/dom/NodeImpl;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 2445
    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v0

    .line 2446
    .local v0, "t":Ljava/util/Hashtable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2449
    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;SLjava/util/Hashtable;)V

    goto :goto_0
.end method

.method callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;SLjava/util/Hashtable;)V
    .locals 9
    .param p1, "n"    # Lmf/org/w3c/dom/Node;
    .param p2, "c"    # Lmf/org/w3c/dom/Node;
    .param p3, "operation"    # S
    .param p4, "userData"    # Ljava/util/Hashtable;

    .prologue
    .line 2461
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2473
    :cond_0
    return-void

    .line 2464
    :cond_1
    invoke-virtual {p4}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2465
    .local v6, "entries":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2466
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2467
    .local v7, "entry":Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2468
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    .line 2469
    .local v8, "r":Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;
    iget-object v0, v8, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fHandler:Lmf/org/w3c/dom/UserDataHandler;

    if-eqz v0, :cond_2

    .line 2470
    iget-object v0, v8, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fHandler:Lmf/org/w3c/dom/UserDataHandler;

    iget-object v3, v8, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    move v1, p3

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lmf/org/w3c/dom/UserDataHandler;->handle(SLjava/lang/String;Ljava/lang/Object;Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)V

    goto :goto_0
.end method

.method protected canRenameElements(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Z
    .locals 1
    .param p1, "newNamespaceURI"    # Ljava/lang/String;
    .param p2, "newNodeName"    # Ljava/lang/String;
    .param p3, "el"    # Lmf/org/apache/xerces/dom/ElementImpl;

    .prologue
    .line 973
    const/4 v0, 0x1

    return v0
.end method

.method protected changed()V
    .locals 1

    .prologue
    .line 2271
    iget v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->changes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->changes:I

    .line 2272
    return-void
.end method

.method protected changes()I
    .locals 1

    .prologue
    .line 2278
    iget v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->changes:I

    return v0
.end method

.method protected final checkDOMNSErr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xe

    .line 2531
    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_4

    .line 2532
    if-nez p2, :cond_0

    .line 2535
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    .line 2536
    const-string v2, "NAMESPACE_ERR"

    .line 2534
    invoke-static {v1, v2, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2538
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 2540
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "xml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2541
    sget-object v1, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2544
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    .line 2545
    const-string v2, "NAMESPACE_ERR"

    .line 2543
    invoke-static {v1, v2, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2547
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 2550
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "xmlns"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2551
    sget-object v1, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2552
    :cond_2
    const-string/jumbo v1, "xmlns"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2553
    sget-object v1, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2556
    :cond_3
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    .line 2557
    const-string v2, "NAMESPACE_ERR"

    .line 2555
    invoke-static {v1, v2, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2559
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 2562
    .end local v0    # "msg":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method protected final checkNamespaceWF(Ljava/lang/String;II)V
    .locals 4
    .param p1, "qname"    # Ljava/lang/String;
    .param p2, "colon1"    # I
    .param p3, "colon2"    # I

    .prologue
    .line 2514
    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v1, :cond_1

    .line 2528
    :cond_0
    return-void

    .line 2520
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p2, v1, :cond_2

    if-eq p3, p2, :cond_0

    .line 2523
    :cond_2
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    .line 2524
    const-string v2, "NAMESPACE_ERR"

    .line 2525
    const/4 v3, 0x0

    .line 2522
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2526
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0xe

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method protected final checkQName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2572
    iget-boolean v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v4, :cond_1

    .line 2596
    :cond_0
    return-void

    .line 2577
    :cond_1
    const/4 v1, 0x0

    .line 2578
    .local v1, "validNCName":Z
    iget-boolean v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    if-nez v4, :cond_4

    .line 2579
    if-eqz p1, :cond_2

    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2580
    :cond_2
    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 2587
    :goto_0
    if-nez v1, :cond_0

    .line 2591
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    .line 2592
    const-string v3, "INVALID_CHARACTER_ERR"

    .line 2593
    const/4 v4, 0x0

    .line 2590
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2594
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .end local v0    # "msg":Ljava/lang/String;
    :cond_3
    move v1, v3

    .line 2579
    goto :goto_0

    .line 2583
    :cond_4
    if-eqz p1, :cond_5

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2584
    :cond_5
    invoke-static {p2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    .line 2583
    :goto_1
    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_1
.end method

.method protected final clearIdentifiers()V
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 1978
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1980
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2199
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 2200
    .local v0, "newdoc":Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    iput-object v1, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    .line 2201
    iput-object v1, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    .line 2202
    return-object v0
.end method

.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 2
    .param p1, "deep"    # Z

    .prologue
    .line 318
    new-instance v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;-><init>()V

    .line 319
    .local v0, "newdoc":Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    const/4 v1, 0x1

    invoke-virtual {p0, p0, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    .line 320
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->cloneNode(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Z)V

    .line 322
    return-object v0
.end method

.method protected cloneNode(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Z)V
    .locals 8
    .param p1, "newdoc"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "deep"    # Z

    .prologue
    const/4 v7, 0x1

    .line 333
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncChildren()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 334
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeChildren()V

    .line 337
    :cond_0
    if-eqz p2, :cond_2

    .line 338
    const/4 v5, 0x0

    .line 339
    .local v5, "reversedIdentifiers":Ljava/util/HashMap;
    iget-object v6, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-eqz v6, :cond_1

    .line 341
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "reversedIdentifiers":Ljava/util/HashMap;
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 342
    .restart local v5    # "reversedIdentifiers":Ljava/util/HashMap;
    iget-object v6, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 343
    .local v2, "entries":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 352
    .end local v2    # "entries":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .local v4, "kid":Lmf/org/apache/xerces/dom/ChildNode;
    :goto_1
    if-nez v4, :cond_4

    .line 360
    .end local v4    # "kid":Lmf/org/apache/xerces/dom/ChildNode;
    .end local v5    # "reversedIdentifiers":Ljava/util/HashMap;
    :cond_2
    iget-boolean v6, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    iput-boolean v6, p1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    .line 361
    iget-boolean v6, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    iput-boolean v6, p1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    .line 363
    return-void

    .line 344
    .restart local v2    # "entries":Ljava/util/Iterator;
    .restart local v5    # "reversedIdentifiers":Ljava/util/HashMap;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 345
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 346
    .local v0, "elementId":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 347
    .local v1, "elementNode":Ljava/lang/Object;
    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 354
    .end local v0    # "elementId":Ljava/lang/Object;
    .end local v1    # "elementNode":Ljava/lang/Object;
    .end local v2    # "entries":Ljava/util/Iterator;
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .restart local v4    # "kid":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_4
    invoke-direct {p1, v4, v7, v7, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->importNode(Lmf/org/w3c/dom/Node;ZZLjava/util/HashMap;)Lmf/org/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {p1, v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 353
    iget-object v4, v4, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1
.end method

.method protected copyEventListeners(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;)V
    .locals 0
    .param p1, "src"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "tgt"    # Lmf/org/apache/xerces/dom/NodeImpl;

    .prologue
    .line 2653
    return-void
.end method

.method public createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 558
    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    .line 562
    const-string v2, "INVALID_CHARACTER_ERR"

    .line 563
    const/4 v3, 0x0

    .line 560
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 566
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v1, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/AttrImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v1
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 2148
    new-instance v0, Lmf/org/apache/xerces/dom/AttrNSImpl;

    invoke-direct {v0, p0, p1, p2}, Lmf/org/apache/xerces/dom/AttrNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "localpart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 2169
    new-instance v0, Lmf/org/apache/xerces/dom/AttrNSImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/AttrNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 581
    new-instance v0, Lmf/org/apache/xerces/dom/CDATASectionImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/dom/CDATASectionImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lmf/org/w3c/dom/Comment;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 590
    new-instance v0, Lmf/org/apache/xerces/dom/CommentImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/dom/CommentImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createDocumentFragment()Lmf/org/w3c/dom/DocumentFragment;
    .locals 1

    .prologue
    .line 598
    new-instance v0, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    return-object v0
.end method

.method public createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/DocumentType;
    .locals 1
    .param p1, "qualifiedName"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1380
    new-instance v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 616
    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 617
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_CHARACTER_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 620
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v1, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/ElementImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v1
.end method

.method public createElementDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/dom/ElementDefinitionImpl;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1438
    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1439
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_CHARACTER_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1440
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 1442
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v1, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v1
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 2105
    new-instance v0, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-direct {v0, p0, p1, p2}, Lmf/org/apache/xerces/dom/ElementNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "localpart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 2125
    new-instance v0, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/ElementNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createEntity(Ljava/lang/String;)Lmf/org/w3c/dom/Entity;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1400
    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1401
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_CHARACTER_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1402
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 1404
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v1, Lmf/org/apache/xerces/dom/EntityImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/EntityImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v1
.end method

.method public createEntityReference(Ljava/lang/String;)Lmf/org/w3c/dom/EntityReference;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 637
    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 638
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_CHARACTER_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 641
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v1, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v1
.end method

.method public createNotation(Ljava/lang/String;)Lmf/org/w3c/dom/Notation;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1423
    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1424
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_CHARACTER_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1425
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 1427
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v1, Lmf/org/apache/xerces/dom/NotationImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/NotationImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v1
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;
    .locals 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 662
    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 663
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_CHARACTER_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 666
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v1, Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;

    invoke-direct {v1, p0, p1, p2}, Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 677
    new-instance v0, Lmf/org/apache/xerces/dom/TextImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/dom/TextImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method deletedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    .locals 0
    .param p1, "node"    # Lmf/org/apache/xerces/dom/CharacterDataImpl;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 2674
    return-void
.end method

.method protected dispatchEvent(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/w3c/dom/events/Event;)Z
    .locals 1
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "event"    # Lmf/org/w3c/dom/events/Event;

    .prologue
    .line 2657
    const/4 v0, 0x0

    return v0
.end method

.method freeNodeListCache(Lmf/org/apache/xerces/dom/NodeListCache;)V
    .locals 1
    .param p1, "c"    # Lmf/org/apache/xerces/dom/NodeListCache;

    .prologue
    .line 2309
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput-object v0, p1, Lmf/org/apache/xerces/dom/NodeListCache;->next:Lmf/org/apache/xerces/dom/NodeListCache;

    .line 2310
    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lmf/org/apache/xerces/dom/NodeListCache;

    .line 2311
    return-void
.end method

.method public getAsync()Z
    .locals 1

    .prologue
    .line 1224
    const/4 v0, 0x0

    return v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1186
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1188
    :try_start_0
    new-instance v1, Lmf/org/apache/xerces/util/URI;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1195
    :goto_0
    return-object v1

    .line 1190
    :catch_0
    move-exception v0

    .line 1192
    .local v0, "e":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    const/4 v1, 0x0

    goto :goto_0

    .line 1195
    .end local v0    # "e":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDoctype()Lmf/org/w3c/dom/DocumentType;
    .locals 1

    .prologue
    .line 688
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeChildren()V

    .line 691
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    return-object v0
.end method

.method public getDocumentElement()Lmf/org/w3c/dom/Element;
    .locals 1

    .prologue
    .line 705
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeChildren()V

    .line 708
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    return-object v0
.end method

.method public getDocumentURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    return-object v0
.end method

.method public getDomConfig()Lmf/org/w3c/dom/DOMConfiguration;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    if-nez v0, :cond_0

    .line 1171
    new-instance v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    .line 1173
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 1
    .param p1, "elementId"    # Ljava/lang/String;

    .prologue
    .line 1970
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getIdentifier(Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .locals 1
    .param p1, "tagname"    # Ljava/lang/String;

    .prologue
    .line 721
    new-instance v0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/dom/DeepNodeListImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 2190
    new-instance v0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;

    invoke-direct {v0, p0, p1, p2}, Lmf/org/apache/xerces/dom/DeepNodeListImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 847
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorChecking()Z
    .locals 1

    .prologue
    .line 776
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    return v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 498
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 505
    .local v0, "anyVersion":Z
    :goto_0
    const-string v6, "+XPath"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 506
    if-nez v0, :cond_0

    const-string v6, "3.0"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 510
    :cond_0
    iget-object v6, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;

    if-eqz v6, :cond_2

    .line 511
    iget-object v6, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;

    .line 536
    :goto_1
    return-object v6

    .end local v0    # "anyVersion":Z
    :cond_1
    move v0, v6

    .line 498
    goto :goto_0

    .line 516
    .restart local v0    # "anyVersion":Z
    :cond_2
    :try_start_0
    const-string/jumbo v6, "org.apache.xpath.domapi.XPathEvaluatorImpl"

    .line 517
    invoke-static {}, Lmf/org/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const/4 v9, 0x1

    .line 515
    invoke-static {v6, v8, v9}, Lmf/org/apache/xerces/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v4

    .line 519
    .local v4, "xpathClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Lmf/org/w3c/dom/Document;

    aput-object v9, v6, v8

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 523
    .local v5, "xpathClassConstr":Ljava/lang/reflect/Constructor;
    invoke-virtual {v4}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 524
    .local v3, "interfaces":[Ljava/lang/Class;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v6, v3

    if-lt v2, v6, :cond_3

    move-object v6, v7

    .line 531
    goto :goto_1

    .line 525
    :cond_3
    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 526
    const-string/jumbo v8, "org.w3c.dom.xpath.XPathEvaluator"

    .line 525
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 526
    if-eqz v6, :cond_4

    .line 527
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;

    .line 528
    iget-object v6, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 524
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 532
    .end local v2    # "i":I
    .end local v3    # "interfaces":[Ljava/lang/Class;
    .end local v4    # "xpathClass":Ljava/lang/Class;
    .end local v5    # "xpathClassConstr":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v6, v7

    .line 533
    goto :goto_1

    .line 536
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ParentNode;->getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1
.end method

.method public getIdentifier(Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4
    .param p1, "idName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2019
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2020
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeData()V

    .line 2023
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-nez v3, :cond_2

    move-object v0, v2

    .line 2037
    :cond_1
    :goto_0
    return-object v0

    .line 2026
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Element;

    .line 2027
    .local v0, "elem":Lmf/org/w3c/dom/Element;
    if-eqz v0, :cond_3

    .line 2029
    invoke-interface {v0}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 2030
    .local v1, "parent":Lmf/org/w3c/dom/Node;
    :goto_1
    if-nez v1, :cond_4

    .end local v1    # "parent":Lmf/org/w3c/dom/Node;
    :cond_3
    move-object v0, v2

    .line 2037
    goto :goto_0

    .line 2031
    .restart local v1    # "parent":Lmf/org/w3c/dom/Node;
    :cond_4
    if-eq v1, p0, :cond_1

    .line 2034
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_1
.end method

.method public getIdentifiers()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 2064
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2065
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeData()V

    .line 2068
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    .line 2069
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    .line 2072
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    .prologue
    .line 733
    invoke-static {}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    return-object v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->actualEncoding:Ljava/lang/String;

    return-object v0
.end method

.method getMutationEvents()Z
    .locals 1

    .prologue
    .line 1355
    const/4 v0, 0x0

    return v0
.end method

.method getNodeListCache(Lmf/org/apache/xerces/dom/ParentNode;)Lmf/org/apache/xerces/dom/NodeListCache;
    .locals 4
    .param p1, "owner"    # Lmf/org/apache/xerces/dom/ParentNode;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2287
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lmf/org/apache/xerces/dom/NodeListCache;

    if-nez v1, :cond_0

    .line 2288
    new-instance v0, Lmf/org/apache/xerces/dom/NodeListCache;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/dom/NodeListCache;-><init>(Lmf/org/apache/xerces/dom/ParentNode;)V

    .line 2301
    :goto_0
    return-object v0

    .line 2290
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lmf/org/apache/xerces/dom/NodeListCache;

    .line 2291
    .local v0, "c":Lmf/org/apache/xerces/dom/NodeListCache;
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget-object v1, v1, Lmf/org/apache/xerces/dom/NodeListCache;->next:Lmf/org/apache/xerces/dom/NodeListCache;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lmf/org/apache/xerces/dom/NodeListCache;

    .line 2292
    iput-object v3, v0, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 2293
    iput v2, v0, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    .line 2294
    iput v2, v0, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    .line 2296
    iget-object v1, v0, Lmf/org/apache/xerces/dom/NodeListCache;->fOwner:Lmf/org/apache/xerces/dom/ParentNode;

    if-eqz v1, :cond_1

    .line 2297
    iget-object v1, v0, Lmf/org/apache/xerces/dom/NodeListCache;->fOwner:Lmf/org/apache/xerces/dom/ParentNode;

    iput-object v3, v1, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    .line 2299
    :cond_1
    iput-object p1, v0, Lmf/org/apache/xerces/dom/NodeListCache;->fOwner:Lmf/org/apache/xerces/dom/ParentNode;

    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    const-string v0, "#document"

    return-object v0
.end method

.method protected getNodeNumber()I
    .locals 2

    .prologue
    .line 1452
    iget v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->documentNumber:I

    if-nez v1, :cond_0

    .line 1454
    invoke-static {}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    .line 1455
    .local v0, "cd":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->assignDocumentNumber()I

    move-result v1

    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->documentNumber:I

    .line 1457
    .end local v0    # "cd":Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;
    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->documentNumber:I

    return v1
.end method

.method protected getNodeNumber(Lmf/org/w3c/dom/Node;)I
    .locals 4
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 1472
    iget-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 1473
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    .line 1474
    iget v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeCounter:I

    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeCounter:I

    .line 1475
    .local v1, "num":I
    iget-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    :goto_0
    return v1

    .line 1478
    .end local v1    # "num":I
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1479
    .local v0, "n":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 1480
    iget v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeCounter:I

    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeCounter:I

    .line 1481
    .restart local v1    # "num":I
    iget-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1484
    .end local v1    # "num":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1    # "num":I
    goto :goto_0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 299
    const/16 v0, 0x9

    return v0
.end method

.method public final getOwnerDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStandalone()Z
    .locals 1

    .prologue
    .line 947
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlStandalone()Z

    move-result v0

    return v0
.end method

.method public getStrictErrorChecking()Z
    .locals 1

    .prologue
    .line 783
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    return v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 481
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getUserData(Lmf/org/apache/xerces/dom/NodeImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lmf/org/apache/xerces/dom/NodeImpl;

    .prologue
    .line 2633
    const-string v0, "XERCES1DOMUSERDATA"

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getUserData(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUserData(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "n"    # Lmf/org/w3c/dom/Node;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2381
    iget-object v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 2393
    :cond_0
    :goto_0
    return-object v3

    .line 2384
    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    .line 2385
    .local v2, "t":Ljava/util/Hashtable;
    if-eqz v2, :cond_0

    .line 2388
    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2389
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 2390
    check-cast v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    .line 2391
    .local v1, "r":Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;
    iget-object v3, v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected getUserDataRecord(Lmf/org/w3c/dom/Node;)Ljava/util/Hashtable;
    .locals 3
    .param p1, "n"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    .line 2397
    iget-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 2404
    :cond_0
    :goto_0
    return-object v0

    .line 2400
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 2401
    .local v0, "t":Ljava/util/Hashtable;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 2402
    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 905
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlStandalone()Z
    .locals 1

    .prologue
    .line 938
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->standalone:Z

    return v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->version:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "1.0"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->version:Ljava/lang/String;

    goto :goto_0
.end method

.method public importNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 2
    .param p1, "source"    # Lmf/org/w3c/dom/Node;
    .param p2, "deep"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1500
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->importNode(Lmf/org/w3c/dom/Node;ZZLjava/util/HashMap;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 5
    .param p1, "newChild"    # Lmf/org/w3c/dom/Node;
    .param p2, "refChild"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 383
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    .line 384
    .local v1, "type":I
    iget-boolean v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_3

    .line 385
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeChildren()V

    .line 388
    :cond_0
    if-ne v1, v3, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    if-nez v2, :cond_2

    .line 389
    :cond_1
    if-ne v1, v4, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    if-eqz v2, :cond_3

    .line 390
    :cond_2
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "HIERARCHY_REQUEST_ERR"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 395
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    if-nez v2, :cond_4

    .line 396
    instance-of v2, p1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    if-eqz v2, :cond_4

    move-object v2, p1

    .line 397
    check-cast v2, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    iput-object p0, v2, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 399
    :cond_4
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ParentNode;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 402
    if-ne v1, v3, :cond_6

    move-object v2, p1

    .line 403
    check-cast v2, Lmf/org/apache/xerces/dom/ElementImpl;

    iput-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    .line 409
    :cond_5
    :goto_0
    return-object p1

    .line 405
    :cond_6
    if-ne v1, v4, :cond_5

    move-object v2, p1

    .line 406
    check-cast v2, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    iput-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_0
.end method

.method insertedNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .locals 0
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "newInternal"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p3, "replace"    # Z

    .prologue
    .line 2705
    return-void
.end method

.method insertedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    .locals 0
    .param p1, "node"    # Lmf/org/apache/xerces/dom/CharacterDataImpl;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 2681
    return-void
.end method

.method insertingNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .locals 0
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "replace"    # Z

    .prologue
    .line 2699
    return-void
.end method

.method protected isKidOK(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z
    .locals 4
    .param p1, "parent"    # Lmf/org/w3c/dom/Node;
    .param p2, "child"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2260
    iget-boolean v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    if-eqz v2, :cond_2

    .line 2261
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 2262
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v2, v0, :cond_1

    .line 2264
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2262
    goto :goto_0

    .line 2264
    :cond_2
    sget-object v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    aget v2, v2, v3

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    shl-int v3, v0, v3

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method isNormalizeDocRequired()Z
    .locals 1

    .prologue
    .line 2609
    const/4 v0, 0x1

    return v0
.end method

.method isXML11Version()Z
    .locals 1

    .prologue
    .line 2603
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    return v0
.end method

.method isXMLVersionChanged()Z
    .locals 1

    .prologue
    .line 2615
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xmlVersionChanged:Z

    return v0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1294
    const/4 v0, 0x0

    return v0
.end method

.method public loadXML(Ljava/lang/String;)Z
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 1306
    const/4 v0, 0x0

    return v0
.end method

.method modifiedAttrValue(Lmf/org/apache/xerces/dom/AttrImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "attr"    # Lmf/org/apache/xerces/dom/AttrImpl;
    .param p2, "oldvalue"    # Ljava/lang/String;

    .prologue
    .line 2748
    return-void
.end method

.method modifiedCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "oldvalue"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "replace"    # Z

    .prologue
    .line 2693
    return-void
.end method

.method modifyingCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .locals 0
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "replace"    # Z

    .prologue
    .line 2687
    return-void
.end method

.method public normalizeDocument()V
    .locals 2

    .prologue
    .line 1136
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isNormalizeDocRequired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1159
    :goto_0
    return-void

    .line 1139
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1140
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeChildren()V

    .line 1143
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->domNormalizer:Lmf/org/apache/xerces/dom/DOMNormalizer;

    if-nez v0, :cond_2

    .line 1144
    new-instance v0, Lmf/org/apache/xerces/dom/DOMNormalizer;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMNormalizer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->domNormalizer:Lmf/org/apache/xerces/dom/DOMNormalizer;

    .line 1147
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    if-nez v0, :cond_3

    .line 1148
    new-instance v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    .line 1154
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->domNormalizer:Lmf/org/apache/xerces/dom/DOMNormalizer;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/dom/DOMNormalizer;->normalizeDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Lmf/org/apache/xerces/dom/DOMConfigurationImpl;)V

    .line 1155
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isNormalized(Z)V

    .line 1158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xmlVersionChanged:Z

    goto :goto_0

    .line 1151
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->reset()V

    goto :goto_1
.end method

.method public putIdentifier(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V
    .locals 1
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "element"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 1993
    if-nez p2, :cond_0

    .line 1994
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    .line 2008
    :goto_0
    return-void

    .line 1998
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1999
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeData()V

    .line 2002
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-nez v0, :cond_2

    .line 2003
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    .line 2006
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3
    .param p1, "oldChild"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 422
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 425
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 426
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 427
    iput-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    .line 433
    :cond_0
    :goto_0
    return-object p1

    .line 429
    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 430
    iput-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_0
.end method

.method protected removeEventListener(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V
    .locals 0
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "listener"    # Lmf/org/w3c/dom/events/EventListener;
    .param p4, "useCapture"    # Z

    .prologue
    .line 2649
    return-void
.end method

.method public removeIdentifier(Ljava/lang/String;)V
    .locals 1
    .param p1, "idName"    # Ljava/lang/String;

    .prologue
    .line 2049
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2050
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeData()V

    .line 2053
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    .line 2059
    :goto_0
    return-void

    .line 2057
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method removeUserDataTable(Lmf/org/w3c/dom/Node;)Ljava/util/Hashtable;
    .locals 1
    .param p1, "n"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 2413
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2414
    const/4 v0, 0x0

    .line 2416
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    goto :goto_0
.end method

.method removedAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "attr"    # Lmf/org/apache/xerces/dom/AttrImpl;
    .param p2, "oldOwner"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 2760
    return-void
.end method

.method removedNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .locals 0
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "replace"    # Z

    .prologue
    .line 2717
    return-void
.end method

.method removingNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .locals 0
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "oldChild"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p3, "replace"    # Z

    .prologue
    .line 2711
    return-void
.end method

.method public renameNode(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 10
    .param p1, "n"    # Lmf/org/w3c/dom/Node;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 983
    iget-boolean v6, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v6, :cond_0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v6

    if-eq v6, p0, :cond_0

    if-eq p1, p0, :cond_0

    .line 985
    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string v7, "WRONG_DOCUMENT_ERR"

    .line 984
    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 986
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v6, v9, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    .line 988
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1081
    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string v7, "NOT_SUPPORTED_ERR"

    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1082
    .restart local v4    # "msg":Ljava/lang/String;
    new-instance v6, Lmf/org/w3c/dom/DOMException;

    const/16 v7, 0x9

    invoke-direct {v6, v7, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    .end local v4    # "msg":Ljava/lang/String;
    :pswitch_0
    move-object v3, p1

    .line 990
    check-cast v3, Lmf/org/apache/xerces/dom/ElementImpl;

    .line 991
    .local v3, "el":Lmf/org/apache/xerces/dom/ElementImpl;
    instance-of v6, v3, Lmf/org/apache/xerces/dom/ElementNSImpl;

    if-eqz v6, :cond_2

    .line 992
    invoke-virtual {p0, p2, p3, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->canRenameElements(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v3

    .line 993
    check-cast v6, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-virtual {v6, p2, p3}, Lmf/org/apache/xerces/dom/ElementNSImpl;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    invoke-virtual {p0, v3, v8, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    .line 1012
    :goto_0
    check-cast p1, Lmf/org/w3c/dom/Element;

    .end local p1    # "n":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0, p1, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->renamedElement(Lmf/org/w3c/dom/Element;Lmf/org/w3c/dom/Element;)V

    .line 1078
    .end local v3    # "el":Lmf/org/apache/xerces/dom/ElementImpl;
    :goto_1
    return-object v3

    .line 998
    .restart local v3    # "el":Lmf/org/apache/xerces/dom/ElementImpl;
    .restart local p1    # "n":Lmf/org/w3c/dom/Node;
    :cond_1
    invoke-direct {p0, v3, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replaceRenameElement(Lmf/org/apache/xerces/dom/ElementImpl;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/dom/ElementImpl;

    move-result-object v3

    .line 1000
    goto :goto_0

    .line 1002
    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p0, v8, p3, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->canRenameElements(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1003
    invoke-virtual {v3, p3}, Lmf/org/apache/xerces/dom/ElementImpl;->rename(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p0, v3, v8, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    goto :goto_0

    .line 1008
    :cond_3
    invoke-direct {p0, v3, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replaceRenameElement(Lmf/org/apache/xerces/dom/ElementImpl;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/dom/ElementImpl;

    move-result-object v3

    goto :goto_0

    .end local v3    # "el":Lmf/org/apache/xerces/dom/ElementImpl;
    :pswitch_1
    move-object v0, p1

    .line 1016
    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 1019
    .local v0, "at":Lmf/org/apache/xerces/dom/AttrImpl;
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v3

    .line 1020
    .local v3, "el":Lmf/org/w3c/dom/Element;
    if-eqz v3, :cond_4

    .line 1021
    invoke-interface {v3, v0}, Lmf/org/w3c/dom/Element;->removeAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    .line 1023
    :cond_4
    instance-of v6, p1, Lmf/org/apache/xerces/dom/AttrNSImpl;

    if-eqz v6, :cond_6

    move-object v6, v0

    .line 1024
    check-cast v6, Lmf/org/apache/xerces/dom/AttrNSImpl;

    invoke-virtual {v6, p2, p3}, Lmf/org/apache/xerces/dom/AttrNSImpl;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    if-eqz v3, :cond_5

    .line 1027
    invoke-interface {v3, v0}, Lmf/org/w3c/dom/Element;->setAttributeNodeNS(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    .line 1031
    :cond_5
    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    .line 1076
    :goto_2
    check-cast p1, Lmf/org/w3c/dom/Attr;

    .end local p1    # "n":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->renamedAttrNode(Lmf/org/w3c/dom/Attr;Lmf/org/w3c/dom/Attr;)V

    move-object v3, v0

    .line 1078
    goto :goto_1

    .line 1034
    .restart local p1    # "n":Lmf/org/w3c/dom/Node;
    :cond_6
    if-nez p2, :cond_8

    .line 1035
    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/dom/AttrImpl;->rename(Ljava/lang/String;)V

    .line 1037
    if-eqz v3, :cond_7

    .line 1038
    invoke-interface {v3, v0}, Lmf/org/w3c/dom/Element;->setAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    .line 1042
    :cond_7
    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    goto :goto_2

    .line 1046
    :cond_8
    invoke-virtual {p0, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/dom/AttrNSImpl;

    .line 1049
    .local v5, "nat":Lmf/org/apache/xerces/dom/AttrNSImpl;
    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->copyEventListeners(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 1052
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeUserDataTable(Lmf/org/w3c/dom/Node;)Ljava/util/Hashtable;

    move-result-object v2

    .line 1055
    .local v2, "data":Ljava/util/Hashtable;
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1056
    .local v1, "child":Lmf/org/w3c/dom/Node;
    :goto_3
    if-nez v1, :cond_a

    .line 1063
    invoke-virtual {p0, v5, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    .line 1066
    invoke-virtual {p0, v0, v5, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    .line 1069
    if-eqz v3, :cond_9

    .line 1070
    invoke-interface {v3, v5}, Lmf/org/w3c/dom/Element;->setAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    .line 1072
    :cond_9
    move-object v0, v5

    goto :goto_2

    .line 1057
    :cond_a
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1058
    invoke-virtual {v5, v1}, Lmf/org/apache/xerces/dom/AttrNSImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1059
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_3

    .line 988
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method renamedAttrNode(Lmf/org/w3c/dom/Attr;Lmf/org/w3c/dom/Attr;)V
    .locals 0
    .param p1, "oldAt"    # Lmf/org/w3c/dom/Attr;
    .param p2, "newAt"    # Lmf/org/w3c/dom/Attr;

    .prologue
    .line 2766
    return-void
.end method

.method renamedElement(Lmf/org/w3c/dom/Element;Lmf/org/w3c/dom/Element;)V
    .locals 0
    .param p1, "oldEl"    # Lmf/org/w3c/dom/Element;
    .param p2, "newEl"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 2772
    return-void
.end method

.method public replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 6
    .param p1, "newChild"    # Lmf/org/w3c/dom/Node;
    .param p2, "oldChild"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 448
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    if-nez v1, :cond_0

    .line 449
    instance-of v1, p1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 450
    check-cast v1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    iput-object p0, v1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 453
    :cond_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    if-eqz v1, :cond_1

    .line 454
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-eq v1, v3, :cond_1

    .line 455
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-eq v1, v3, :cond_2

    .line 456
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    if-eqz v1, :cond_3

    .line 457
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-eq v1, v2, :cond_3

    .line 458
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v2, :cond_3

    .line 460
    :cond_2
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    .line 461
    const/4 v2, 0x3

    .line 462
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "HIERARCHY_REQUEST_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 460
    invoke-direct {v1, v2, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 464
    :cond_3
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ParentNode;->replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 466
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 467
    .local v0, "type":I
    if-ne v0, v2, :cond_5

    .line 468
    check-cast p1, Lmf/org/apache/xerces/dom/ElementImpl;

    .end local p1    # "newChild":Lmf/org/w3c/dom/Node;
    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    .line 473
    :cond_4
    :goto_0
    return-object p2

    .line 470
    .restart local p1    # "newChild":Lmf/org/w3c/dom/Node;
    :cond_5
    if-ne v0, v3, :cond_4

    .line 471
    check-cast p1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    .end local p1    # "newChild":Lmf/org/w3c/dom/Node;
    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_0
.end method

.method replacedCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "oldvalue"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 2741
    return-void
.end method

.method replacedNode(Lmf/org/apache/xerces/dom/NodeImpl;)V
    .locals 0
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;

    .prologue
    .line 2729
    return-void
.end method

.method replacedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;)V
    .locals 0
    .param p1, "node"    # Lmf/org/apache/xerces/dom/CharacterDataImpl;

    .prologue
    .line 2667
    return-void
.end method

.method replacingData(Lmf/org/apache/xerces/dom/NodeImpl;)V
    .locals 0
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;

    .prologue
    .line 2735
    return-void
.end method

.method replacingNode(Lmf/org/apache/xerces/dom/NodeImpl;)V
    .locals 0
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;

    .prologue
    .line 2723
    return-void
.end method

.method public saveXML(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 6
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1329
    iget-boolean v3, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 1330
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v3

    if-eq p0, v3, :cond_0

    .line 1331
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "WRONG_DOCUMENT_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1332
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Lmf/org/w3c/dom/DOMException;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 1334
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/dom/DOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/ls/DOMImplementationLS;

    .line 1335
    .local v0, "domImplLS":Lmf/org/w3c/dom/ls/DOMImplementationLS;
    invoke-interface {v0}, Lmf/org/w3c/dom/ls/DOMImplementationLS;->createLSSerializer()Lmf/org/w3c/dom/ls/LSSerializer;

    move-result-object v2

    .line 1336
    .local v2, "xmlWriter":Lmf/org/w3c/dom/ls/LSSerializer;
    if-nez p1, :cond_1

    .line 1337
    move-object p1, p0

    .line 1339
    :cond_1
    invoke-interface {v2, p1}, Lmf/org/w3c/dom/ls/LSSerializer;->writeToString(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public setAsync(Z)V
    .locals 4
    .param p1, "async"    # Z

    .prologue
    .line 1242
    if-eqz p1, :cond_0

    .line 1243
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NOT_SUPPORTED_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1244
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 1246
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method setAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/AttrImpl;)V
    .locals 0
    .param p1, "attr"    # Lmf/org/apache/xerces/dom/AttrImpl;
    .param p2, "previous"    # Lmf/org/apache/xerces/dom/AttrImpl;

    .prologue
    .line 2754
    return-void
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "documentURI"    # Ljava/lang/String;

    .prologue
    .line 1202
    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    .line 1203
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 830
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setXmlEncoding(Ljava/lang/String;)V

    .line 831
    return-void
.end method

.method public setErrorChecking(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 762
    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    .line 763
    return-void
.end method

.method public setInputEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 810
    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->actualEncoding:Ljava/lang/String;

    .line 811
    return-void
.end method

.method setMutationEvents(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 1348
    return-void
.end method

.method public setStandalone(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 929
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setXmlStandalone(Z)V

    .line 930
    return-void
.end method

.method public setStrictErrorChecking(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 769
    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    .line 770
    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "textContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 491
    return-void
.end method

.method public setUserData(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 5
    .param p1, "n"    # Lmf/org/w3c/dom/Node;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "handler"    # Lmf/org/w3c/dom/UserDataHandler;

    .prologue
    const/4 v3, 0x0

    .line 2333
    if-nez p3, :cond_1

    .line 2334
    iget-object v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 2335
    iget-object v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    .line 2336
    .local v2, "t":Ljava/util/Hashtable;
    if-eqz v2, :cond_0

    .line 2337
    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2338
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 2339
    check-cast v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    .line 2340
    .local v1, "r":Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;
    iget-object v3, v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    .line 2365
    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "r":Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;
    .end local v2    # "t":Ljava/util/Hashtable;
    :cond_0
    :goto_0
    return-object v3

    .line 2348
    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-nez v4, :cond_3

    .line 2349
    new-instance v4, Ljava/util/WeakHashMap;

    invoke-direct {v4}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    .line 2350
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 2351
    .restart local v2    # "t":Ljava/util/Hashtable;
    iget-object v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2360
    :cond_2
    :goto_1
    new-instance v4, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    invoke-direct {v4, p0, p3, p4}, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;-><init>(Lmf/org/apache/xerces/dom/ParentNode;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)V

    invoke-virtual {v2, p2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2361
    .restart local v0    # "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 2362
    check-cast v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    .line 2363
    .restart local v1    # "r":Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;
    iget-object v3, v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    goto :goto_0

    .line 2354
    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "r":Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;
    .end local v2    # "t":Ljava/util/Hashtable;
    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    .line 2355
    .restart local v2    # "t":Ljava/util/Hashtable;
    if-nez v2, :cond_2

    .line 2356
    new-instance v2, Ljava/util/Hashtable;

    .end local v2    # "t":Ljava/util/Hashtable;
    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 2357
    .restart local v2    # "t":Ljava/util/Hashtable;
    iget-object v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method protected setUserData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/Object;)V
    .locals 2
    .param p1, "n"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 2625
    const-string v0, "XERCES1DOMUSERDATA"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserData(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    .line 2626
    return-void
.end method

.method setUserDataTable(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "n"    # Lmf/org/w3c/dom/Node;
    .param p2, "data"    # Ljava/util/Hashtable;

    .prologue
    .line 2425
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2426
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    .line 2428
    :cond_0
    if-eqz p2, :cond_1

    .line 2429
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2431
    :cond_1
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 888
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setXmlVersion(Ljava/lang/String;)V

    .line 889
    return-void
.end method

.method public setXmlEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 821
    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->encoding:Ljava/lang/String;

    .line 822
    return-void
.end method

.method public setXmlStandalone(Z)V
    .locals 0
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 920
    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->standalone:Z

    .line 921
    return-void
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 856
    const-string v1, "1.0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1.1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 859
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 860
    iput-boolean v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xmlVersionChanged:Z

    .line 862
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isNormalized(Z)V

    .line 863
    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->version:Ljava/lang/String;

    .line 874
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 875
    iput-boolean v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    .line 880
    :goto_0
    return-void

    .line 870
    :cond_2
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NOT_SUPPORTED_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 878
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3
    iput-boolean v3, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    goto :goto_0
.end method

.method protected undeferChildren(Lmf/org/w3c/dom/Node;)V
    .locals 6
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 1916
    move-object v4, p1

    .line 1918
    .local v4, "top":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez p1, :cond_0

    .line 1954
    return-void

    :cond_0
    move-object v5, p1

    .line 1920
    check-cast v5, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, p1

    .line 1921
    check-cast v5, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/NodeImpl;->synchronizeData()V

    .line 1924
    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 1925
    .local v0, "attributes":Lmf/org/w3c/dom/NamedNodeMap;
    if-eqz v0, :cond_2

    .line 1926
    invoke-interface {v0}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    .line 1927
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_5

    .line 1932
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_2
    const/4 v3, 0x0

    .line 1933
    .local v3, "nextNode":Lmf/org/w3c/dom/Node;
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 1935
    :cond_3
    if-eqz v3, :cond_6

    .line 1952
    :cond_4
    :goto_2
    move-object p1, v3

    goto :goto_0

    .line 1928
    .end local v3    # "nextNode":Lmf/org/w3c/dom/Node;
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_5
    invoke-interface {v0, v1}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->undeferChildren(Lmf/org/w3c/dom/Node;)V

    .line 1927
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1937
    .end local v1    # "i":I
    .end local v2    # "length":I
    .restart local v3    # "nextNode":Lmf/org/w3c/dom/Node;
    :cond_6
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1940
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 1942
    if-nez v3, :cond_3

    .line 1943
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    .line 1945
    if-eqz p1, :cond_7

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1946
    :cond_7
    const/4 v3, 0x0

    .line 1947
    goto :goto_2
.end method
