.class public Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;
.super Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;
.source "XMLNSDTDValidator.java"


# instance fields
.field private final fAttributeQName:Lmf/org/apache/xerces/xni/QName;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;-><init>()V

    .line 65
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

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
    .line 213
    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 214
    .local v0, "eprefix":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 215
    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 216
    iput-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 220
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_1

    .line 221
    if-nez p3, :cond_1

    .line 222
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 227
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    .line 229
    return-void

    .line 213
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
    .line 72
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v14}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    .line 74
    move-object/from16 v0, p1

    iget-object v14, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v15, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v14, v15, :cond_0

    .line 75
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

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

    .line 75
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

    .line 148
    move-object/from16 v0, p1

    iget-object v14, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v14, :cond_d

    .line 149
    move-object/from16 v0, p1

    iget-object v12, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 150
    .local v12, "prefix":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v14, v12}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v14, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 151
    move-object/from16 v0, p1

    iget-object v14, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v14, :cond_1

    move-object/from16 v0, p1

    iget-object v14, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v14, :cond_1

    .line 152
    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v14, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 154
    :cond_1
    move-object/from16 v0, p1

    iget-object v14, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v14, :cond_2

    move-object/from16 v0, p1

    iget-object v14, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v14, :cond_2

    .line 155
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 156
    const-string v16, "ElementPrefixUnbound"

    .line 157
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

    .line 158
    const/16 v18, 0x2

    .line 155
    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 162
    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-lt v8, v10, :cond_e

    .line 185
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v4

    .line 186
    .local v4, "attrCount":I
    const/4 v8, 0x0

    :goto_3
    add-int/lit8 v14, v4, -0x1

    if-lt v8, v14, :cond_13

    .line 205
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

    .line 89
    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v12, v14, :cond_8

    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v11, v14, :cond_8

    .line 92
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

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

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 97
    const-string v16, "CantBindXMLNS"

    .line 98
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 99
    const/16 v18, 0x2

    .line 96
    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 103
    :cond_5
    sget-object v14, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v13, v14, :cond_6

    .line 104
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 105
    const-string v16, "CantBindXMLNS"

    .line 106
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 107
    const/16 v18, 0x2

    .line 104
    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 111
    :cond_6
    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-ne v11, v14, :cond_9

    .line 112
    sget-object v14, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v13, v14, :cond_7

    .line 113
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 114
    const-string v16, "CantBindXML"

    .line 115
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 116
    const/16 v18, 0x2

    .line 113
    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 129
    :cond_7
    :goto_4
    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v11, v14, :cond_a

    move-object v12, v11

    .line 134
    :goto_5
    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v13, v14, :cond_b

    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v11, v14, :cond_b

    .line 135
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 136
    const-string v16, "EmptyPrefixedAttName"

    .line 137
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 138
    const/16 v18, 0x2

    .line 135
    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 83
    .end local v13    # "uri":Ljava/lang/String;
    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 121
    .restart local v13    # "uri":Ljava/lang/String;
    :cond_9
    sget-object v14, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-ne v13, v14, :cond_7

    .line 122
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 123
    const-string v16, "CantBindXML"

    .line 124
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 125
    const/16 v18, 0x2

    .line 122
    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_4

    .line 129
    :cond_a
    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_5

    .line 143
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_c

    .end local v13    # "uri":Ljava/lang/String;
    :goto_7
    invoke-interface {v14, v12, v13}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    .restart local v13    # "uri":Ljava/lang/String;
    :cond_c
    const/4 v13, 0x0

    goto :goto_7

    .line 149
    .end local v11    # "localpart":Ljava/lang/String;
    .end local v12    # "prefix":Ljava/lang/String;
    .end local v13    # "uri":Ljava/lang/String;
    :cond_d
    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_1

    .line 163
    .restart local v12    # "prefix":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p2

    invoke-interface {v0, v8, v14}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v14, :cond_10

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v14, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 166
    .local v2, "aprefix":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 167
    .local v3, "arawname":Ljava/lang/String;
    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v3, v14, :cond_11

    .line 168
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v16, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface/range {v15 .. v16}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p2

    invoke-interface {v0, v8, v14}, Lmf/org/apache/xerces/xni/XMLAttributes;->setName(ILmf/org/apache/xerces/xni/QName;)V

    .line 162
    :cond_f
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 165
    .end local v2    # "aprefix":Ljava/lang/String;
    .end local v3    # "arawname":Ljava/lang/String;
    :cond_10
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_8

    .line 171
    .restart local v2    # "aprefix":Ljava/lang/String;
    .restart local v3    # "arawname":Ljava/lang/String;
    :cond_11
    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v2, v14, :cond_f

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v15, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 173
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v14, :cond_12

    .line 174
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 175
    const-string v16, "AttributePrefixUnbound"

    .line 176
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

    .line 177
    const/16 v18, 0x2

    .line 174
    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 179
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p2

    invoke-interface {v0, v8, v14}, Lmf/org/apache/xerces/xni/XMLAttributes;->setName(ILmf/org/apache/xerces/xni/QName;)V

    goto :goto_9

    .line 187
    .end local v2    # "aprefix":Ljava/lang/String;
    .end local v3    # "arawname":Ljava/lang/String;
    .restart local v4    # "attrCount":I
    :cond_13
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "auri":Ljava/lang/String;
    if-eqz v5, :cond_14

    sget-object v14, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v5, v14, :cond_15

    .line 186
    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 191
    :cond_15
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "alocalpart":Ljava/lang/String;
    add-int/lit8 v9, v8, 0x1

    .local v9, "j":I
    :goto_a
    if-ge v9, v4, :cond_14

    .line 193
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, "blocalpart":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v7

    .line 195
    .local v7, "buri":Ljava/lang/String;
    if-ne v1, v6, :cond_16

    if-ne v5, v7, :cond_16

    .line 196
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v15, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 197
    const-string v16, "AttributeNSNotUnique"

    .line 198
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

    .line 199
    const/16 v18, 0x2

    .line 196
    invoke-virtual/range {v14 .. v18}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 192
    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_a
.end method
