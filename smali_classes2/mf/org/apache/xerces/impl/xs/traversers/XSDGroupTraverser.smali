.class Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;
.source "XSDGroupTraverser.java"


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0
    .param p1, "handler"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;
    .param p2, "gAttrCheck"    # Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    .line 57
    return-void
.end method


# virtual methods
.method traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .locals 22
    .param p1, "elmNode"    # Lmf/org/w3c/dom/Element;
    .param p2, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p3, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v6

    .line 150
    .local v6, "attrValues":[Ljava/lang/Object;
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v21, v6, v3

    check-cast v21, Ljava/lang/String;

    .line 153
    .local v21, "strNameAttr":Ljava/lang/String;
    if-nez v21, :cond_0

    .line 154
    const-string v3, "s4s-att-must-appear"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v9, "group (global)"

    aput-object v9, v4, v7

    const/4 v7, 0x1

    const-string v9, "name"

    aput-object v9, v4, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 159
    :cond_0
    new-instance v12, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    invoke-direct {v12}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;-><init>()V

    .line 160
    .local v12, "group":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    const/16 v19, 0x0

    .line 163
    .local v19, "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v17

    .line 164
    .local v17, "l_elmChild":Lmf/org/w3c/dom/Element;
    const/4 v13, 0x0

    .line 165
    .local v13, "annotation":Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    if-nez v17, :cond_8

    .line 166
    const-string v3, "s4s-elt-must-match.2"

    .line 167
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v9, "group (global)"

    aput-object v9, v4, v7

    const/4 v7, 0x1

    const-string v9, "(annotation?, (all | choice | sequence))"

    aput-object v9, v4, v7

    .line 166
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v8, v17

    .line 210
    .end local v17    # "l_elmChild":Lmf/org/w3c/dom/Element;
    .local v8, "l_elmChild":Lmf/org/w3c/dom/Element;
    :cond_1
    :goto_0
    if-eqz v21, :cond_10

    .line 211
    move-object/from16 v0, v21

    iput-object v0, v12, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    .line 212
    move-object/from16 v0, p2

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v3, v12, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fTargetNamespace:Ljava/lang/String;

    .line 213
    if-nez v19, :cond_2

    .line 214
    invoke-static {}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->getEmptySequence()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v19

    .line 216
    :cond_2
    move-object/from16 v0, v19

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iput-object v3, v12, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 218
    if-eqz v13, :cond_f

    .line 219
    new-instance v14, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v14}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    .local v14, "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    move-object v3, v14

    .line 220
    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v3, v13}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    .line 224
    :goto_1
    iput-object v14, v12, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 226
    iget-object v3, v12, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v3

    if-nez v3, :cond_3

    .line 227
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V

    .line 231
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v18

    .line 232
    .local v18, "loc":Ljava/lang/String;
    iget-object v3, v12, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v16

    .line 233
    .local v16, "group2":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    if-nez v16, :cond_4

    .line 234
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Ljava/lang/String;)V

    .line 238
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v3, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v3, :cond_6

    .line 239
    if-eqz v16, :cond_5

    .line 240
    move-object/from16 v12, v16

    .line 242
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v3, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V

    .line 250
    .end local v14    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    .end local v16    # "group2":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .end local v18    # "loc":Ljava/lang/String;
    :cond_6
    :goto_2
    if-eqz v12, :cond_7

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v4, 0x4

    .line 254
    new-instance v7, Lmf/org/apache/xerces/xni/QName;

    sget-object v9, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v21

    invoke-direct {v7, v9, v0, v1, v10}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v3, v4, v7, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGrpOrAttrGrpRedefinedByRestriction(ILmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v20

    .line 256
    .local v20, "redefinedGrp":Ljava/lang/Object;
    if-eqz v20, :cond_7

    .line 258
    check-cast v20, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .line 259
    .end local v20    # "redefinedGrp":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lmf/org/w3c/dom/Element;)Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v3

    .line 258
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addRedefinedGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V

    .line 263
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 265
    return-object v12

    .line 170
    .end local v8    # "l_elmChild":Lmf/org/w3c/dom/Element;
    .restart local v17    # "l_elmChild":Lmf/org/w3c/dom/Element;
    :cond_8
    invoke-interface/range {v17 .. v17}, Lmf/org/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v15

    .line 171
    .local v15, "childName":Ljava/lang/String;
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 172
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v6, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v13

    .line 173
    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    .line 174
    .end local v17    # "l_elmChild":Lmf/org/w3c/dom/Element;
    .restart local v8    # "l_elmChild":Lmf/org/w3c/dom/Element;
    if-eqz v8, :cond_9

    .line 175
    invoke-interface {v8}, Lmf/org/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v15

    .line 184
    :cond_9
    :goto_3
    if-nez v8, :cond_b

    .line 185
    const-string v3, "s4s-elt-must-match.2"

    .line 186
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v9, "group (global)"

    aput-object v9, v4, v7

    const/4 v7, 0x1

    const-string v9, "(annotation?, (all | choice | sequence))"

    aput-object v9, v4, v7

    .line 185
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 200
    :goto_4
    if-eqz v8, :cond_1

    .line 201
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 202
    const-string v3, "s4s-elt-must-match.1"

    .line 203
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v9, "group (global)"

    aput-object v9, v4, v7

    const/4 v7, 0x1

    const-string v9, "(annotation?, (all | choice | sequence))"

    aput-object v9, v4, v7

    const/4 v7, 0x2

    .line 204
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v9

    invoke-static {v9}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    .line 205
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v7

    .line 202
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .line 178
    .end local v8    # "l_elmChild":Lmf/org/w3c/dom/Element;
    .restart local v17    # "l_elmChild":Lmf/org/w3c/dom/Element;
    :cond_a
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, "text":Ljava/lang/String;
    if-eqz v5, :cond_11

    .line 180
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v13

    move-object/from16 v8, v17

    .end local v17    # "l_elmChild":Lmf/org/w3c/dom/Element;
    .restart local v8    # "l_elmChild":Lmf/org/w3c/dom/Element;
    goto :goto_3

    .line 188
    .end local v5    # "text":Ljava/lang/String;
    :cond_b
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ALL:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 189
    const/4 v11, 0x4

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v7 .. v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseAll(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v19

    .line 190
    goto :goto_4

    :cond_c
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 191
    const/4 v11, 0x4

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v7 .. v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseChoice(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v19

    .line 192
    goto :goto_4

    :cond_d
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 193
    const/4 v11, 0x4

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v7 .. v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseSequence(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v19

    .line 194
    goto :goto_4

    .line 195
    :cond_e
    const-string v3, "s4s-elt-must-match.1"

    .line 196
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v9, "group (global)"

    aput-object v9, v4, v7

    const/4 v7, 0x1

    const-string v9, "(annotation?, (all | choice | sequence))"

    aput-object v9, v4, v7

    const/4 v7, 0x2

    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    .line 195
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_4

    .line 222
    .end local v15    # "childName":Ljava/lang/String;
    :cond_f
    sget-object v14, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .restart local v14    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    goto/16 :goto_1

    .line 247
    .end local v14    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_2

    .end local v8    # "l_elmChild":Lmf/org/w3c/dom/Element;
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v15    # "childName":Ljava/lang/String;
    .restart local v17    # "l_elmChild":Lmf/org/w3c/dom/Element;
    :cond_11
    move-object/from16 v8, v17

    .end local v17    # "l_elmChild":Lmf/org/w3c/dom/Element;
    .restart local v8    # "l_elmChild":Lmf/org/w3c/dom/Element;
    goto/16 :goto_3
.end method

.method traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 26
    .param p1, "elmNode"    # Lmf/org/w3c/dom/Element;
    .param p2, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p3, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    .line 64
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v7

    .line 66
    .local v7, "attrValues":[Ljava/lang/Object;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    aget-object v25, v7, v4

    check-cast v25, Lmf/org/apache/xerces/xni/QName;

    .line 67
    .local v25, "refAttr":Lmf/org/apache/xerces/xni/QName;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v23, v7, v4

    check-cast v23, Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 68
    .local v23, "minAttr":Lmf/org/apache/xerces/impl/xs/util/XInt;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v21, v7, v4

    check-cast v21, Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 70
    .local v21, "maxAttr":Lmf/org/apache/xerces/impl/xs/util/XInt;
    const/16 v20, 0x0

    .line 73
    .local v20, "group":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    if-nez v25, :cond_5

    .line 74
    const-string v4, "s4s-att-must-appear"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "group (local)"

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const-string v9, "ref"

    aput-object v9, v5, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 81
    :goto_0
    const/16 v16, 0x0

    .line 83
    .local v16, "annotation":Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v18

    .line 84
    .local v18, "child":Lmf/org/w3c/dom/Element;
    if-eqz v18, :cond_6

    invoke-static/range {v18 .. v18}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 85
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v7, v4, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v16

    .line 86
    invoke-static/range {v18 .. v18}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v18

    .line 95
    :cond_0
    :goto_1
    if-eqz v18, :cond_1

    .line 96
    const-string v4, "s4s-elt-must-match.1"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "group (local)"

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const-string v9, "(annotation?)"

    aput-object v9, v5, v8

    const/4 v8, 0x2

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 99
    :cond_1
    invoke-virtual/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v24

    .line 100
    .local v24, "minOccurs":I
    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v22

    .line 102
    .local v22, "maxOccurs":I
    const/4 v10, 0x0

    .line 105
    .local v10, "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    if-eqz v20, :cond_4

    move-object/from16 v0, v20

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    if-eqz v4, :cond_4

    .line 106
    if-nez v24, :cond_2

    if-eqz v22, :cond_4

    .line 108
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz v4, :cond_7

    .line 109
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->getParticleDecl()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v10

    .line 113
    :goto_2
    const/4 v4, 0x3

    iput-short v4, v10, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 114
    move-object/from16 v0, v20

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iput-object v4, v10, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 115
    move/from16 v0, v24

    iput v0, v10, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 116
    move/from16 v0, v22

    iput v0, v10, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 117
    move-object/from16 v0, v20

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v4, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v5, 0x67

    if-ne v4, v5, :cond_3

    .line 118
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    aget-object v19, v7, v4

    check-cast v19, Ljava/lang/Long;

    .line 119
    .local v19, "defaultVals":Ljava/lang/Long;
    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    .line 120
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lmf/org/w3c/dom/Element;

    const/4 v13, 0x2

    .line 121
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v9, p0

    .line 119
    invoke-virtual/range {v9 .. v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->checkOccurrences(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/lang/String;Lmf/org/w3c/dom/Element;IJ)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v10

    .line 123
    .end local v19    # "defaultVals":Ljava/lang/Long;
    :cond_3
    if-eqz v25, :cond_9

    .line 125
    if-eqz v16, :cond_8

    .line 126
    new-instance v17, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    .local v17, "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    move-object/from16 v4, v17

    .line 127
    check-cast v4, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    .line 131
    :goto_3
    move-object/from16 v0, v17

    iput-object v0, v10, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 137
    .end local v17    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 139
    return-object v10

    .line 78
    .end local v10    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .end local v16    # "annotation":Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    .end local v18    # "child":Lmf/org/w3c/dom/Element;
    .end local v22    # "maxOccurs":I
    .end local v24    # "minOccurs":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v5, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v4, v0, v5, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "group":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    check-cast v20, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .restart local v20    # "group":Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    goto/16 :goto_0

    .line 89
    .restart local v16    # "annotation":Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    .restart local v18    # "child":Lmf/org/w3c/dom/Element;
    :cond_6
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, "text":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 91
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v16

    goto/16 :goto_1

    .line 111
    .end local v6    # "text":Ljava/lang/String;
    .restart local v10    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .restart local v22    # "maxOccurs":I
    .restart local v24    # "minOccurs":I
    :cond_7
    new-instance v10, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .end local v10    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    invoke-direct {v10}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .restart local v10    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    goto :goto_2

    .line 129
    :cond_8
    sget-object v17, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .restart local v17    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    goto :goto_3

    .line 133
    .end local v17    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    :cond_9
    move-object/from16 v0, v20

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v4, v10, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto :goto_4
.end method
