.class public Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;
.super Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;
.source "XML11NSDTDValidator.java"


# instance fields
.field private final fAttributeQName:Lmf/org/apache/xerces/xni/QName;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/XML11DTDValidator;-><init>()V

    .line 64
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 61
    return-void
.end method


# virtual methods
.method protected endNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V
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
    .line 206
    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 207
    .local v0, "eprefix":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 208
    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 209
    iput-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 213
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_1

    .line 214
    if-nez p3, :cond_1

    .line 215
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 220
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    .line 222
    return-void

    .line 206
    .end local v0    # "eprefix":Ljava/lang/String;
    :cond_2
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_0
.end method

.method protected final startNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 20
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 71
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v14}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    .line 73
    move-object/from16 v0, p1

    iget-object v14, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v15, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v14, v15, :cond_0

    .line 74
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 75
    const-string v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 76
    const-string v16, "ElementXMLNSPrefix"

    .line 77
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    .line 78
    const/16 v18, 0x2

    .line 74
    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 82
    :cond_0
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v10

    .line 83
    .local v10, "length":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-lt v8, v10, :cond_3

    .line 143
    move-object/from16 v0, p1

    iget-object v14, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v14, :cond_c

    move-object/from16 v0, p1

    iget-object v12, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 144
    .local v12, "prefix":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v14, v12}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v14, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 145
    move-object/from16 v0, p1

    iget-object v14, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v14, :cond_1

    move-object/from16 v0, p1

    iget-object v14, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v14, :cond_1

    .line 146
    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v14, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 148
    :cond_1
    move-object/from16 v0, p1

    iget-object v14, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v14, :cond_2

    move-object/from16 v0, p1

    iget-object v14, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v14, :cond_2

    .line 149
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 150
    const-string v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 151
    const-string v16, "ElementPrefixUnbound"

    .line 152
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    .line 153
    const/16 v18, 0x2

    .line 149
    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 157
    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-lt v8, v10, :cond_d

    .line 179
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v4

    .line 180
    .local v4, "attrCount":I
    const/4 v8, 0x0

    :goto_3
    add-int/lit8 v14, v4, -0x1

    if-lt v8, v14, :cond_12

    .line 199
    return-void

    .line 84
    .end local v4    # "attrCount":I
    .end local v12    # "prefix":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v11

    .line 85
    .local v11, "localpart":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getPrefix(I)Ljava/lang/String;

    move-result-object v12

    .line 88
    .restart local v12    # "prefix":Ljava/lang/String;
    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v12, v14, :cond_4

    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v12, v14, :cond_8

    .line 89
    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v11, v14, :cond_8

    .line 92
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 95
    .local v13, "uri":Ljava/lang/String;
    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v12, v14, :cond_5

    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v11, v14, :cond_5

    .line 96
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 97
    const-string v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 98
    const-string v16, "CantBindXMLNS"

    .line 99
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 100
    const/16 v18, 0x2

    .line 96
    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 104
    :cond_5
    sget-object v14, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v13, v14, :cond_6

    .line 105
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 106
    const-string v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 107
    const-string v16, "CantBindXMLNS"

    .line 108
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 109
    const/16 v18, 0x2

    .line 105
    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 113
    :cond_6
    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-ne v11, v14, :cond_9

    .line 114
    sget-object v14, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v13, v14, :cond_7

    .line 115
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 116
    const-string v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 117
    const-string v16, "CantBindXML"

    .line 118
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 119
    const/16 v18, 0x2

    .line 115
    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 133
    :cond_7
    :goto_4
    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v11, v14, :cond_a

    move-object v12, v11

    .line 138
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_b

    .end local v13    # "uri":Ljava/lang/String;
    :goto_6
    invoke-interface {v14, v12, v13}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 124
    .restart local v13    # "uri":Ljava/lang/String;
    :cond_9
    sget-object v14, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-ne v13, v14, :cond_7

    .line 125
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 126
    const-string v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 127
    const-string v16, "CantBindXML"

    .line 128
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 129
    const/16 v18, 0x2

    .line 125
    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_4

    .line 133
    :cond_a
    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_5

    .line 138
    :cond_b
    const/4 v13, 0x0

    goto :goto_6

    .line 143
    .end local v11    # "localpart":Ljava/lang/String;
    .end local v12    # "prefix":Ljava/lang/String;
    .end local v13    # "uri":Ljava/lang/String;
    :cond_c
    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_1

    .line 158
    .restart local v12    # "prefix":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p2

    invoke-interface {v0, v8, v14}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v14, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 160
    .local v2, "aprefix":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 161
    .local v3, "arawname":Ljava/lang/String;
    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v3, v14, :cond_10

    .line 162
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v16, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface/range {v15 .. v16}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 163
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p2

    invoke-interface {v0, v8, v14}, Lmf/org/apache/xerces/xni/XMLAttributes;->setName(ILmf/org/apache/xerces/xni/QName;)V

    .line 157
    :cond_e
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 159
    .end local v2    # "aprefix":Ljava/lang/String;
    .end local v3    # "arawname":Ljava/lang/String;
    :cond_f
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_7

    .line 164
    .restart local v2    # "aprefix":Ljava/lang/String;
    .restart local v3    # "arawname":Ljava/lang/String;
    :cond_10
    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v2, v14, :cond_e

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v15, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 166
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v14, :cond_11

    .line 167
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 168
    const-string v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 169
    const-string v16, "AttributePrefixUnbound"

    .line 170
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v3, v17, v18

    const/16 v18, 0x2

    aput-object v2, v17, v18

    .line 171
    const/16 v18, 0x2

    .line 167
    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 173
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p2

    invoke-interface {v0, v8, v14}, Lmf/org/apache/xerces/xni/XMLAttributes;->setName(ILmf/org/apache/xerces/xni/QName;)V

    goto :goto_8

    .line 181
    .end local v2    # "aprefix":Ljava/lang/String;
    .end local v3    # "arawname":Ljava/lang/String;
    .restart local v4    # "attrCount":I
    :cond_12
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "auri":Ljava/lang/String;
    if-eqz v5, :cond_13

    sget-object v14, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v5, v14, :cond_14

    .line 180
    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 185
    :cond_14
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "alocalpart":Ljava/lang/String;
    add-int/lit8 v9, v8, 0x1

    .local v9, "j":I
    :goto_9
    if-ge v9, v4, :cond_13

    .line 187
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, "blocalpart":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v7

    .line 189
    .local v7, "buri":Ljava/lang/String;
    if-ne v1, v6, :cond_15

    if-ne v5, v7, :cond_15

    .line 190
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XML11NSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 191
    const-string v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 192
    const-string v16, "AttributeNSNotUnique"

    .line 193
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v1, v17, v18

    const/16 v18, 0x2

    aput-object v5, v17, v18

    .line 194
    const/16 v18, 0x2

    .line 190
    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 186
    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto :goto_9
.end method
