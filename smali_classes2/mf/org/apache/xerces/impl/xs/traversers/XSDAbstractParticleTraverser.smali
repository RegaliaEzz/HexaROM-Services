.class abstract Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDAbstractParticleTraverser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;
    }
.end annotation


# instance fields
.field fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 1
    .param p1, "handler"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;
    .param p2, "gAttrCheck"    # Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    .line 382
    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    .line 45
    return-void
.end method

.method private traverseSeqChoice(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;IZLmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 27
    .param p1, "decl"    # Lmf/org/w3c/dom/Element;
    .param p2, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p3, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p4, "allContextFlags"    # I
    .param p5, "choice"    # Z
    .param p6, "parent"    # Lmf/org/apache/xerces/xs/XSObject;

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v7

    .line 204
    .local v7, "attrValues":[Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v21

    .line 205
    .local v21, "child":Lmf/org/w3c/dom/Element;
    const/16 v18, 0x0

    .line 206
    .local v18, "annotation":Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    if-eqz v21, :cond_0

    invoke-static/range {v21 .. v21}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v7, v4, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v18

    .line 208
    invoke-static/range {v21 .. v21}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v9

    .line 217
    .end local v21    # "child":Lmf/org/w3c/dom/Element;
    .local v9, "child":Lmf/org/w3c/dom/Element;
    :goto_0
    const/16 v22, 0x0

    .line 219
    .local v22, "childName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->pushContext()V

    .line 221
    :goto_1
    if-nez v9, :cond_1

    .line 266
    const/4 v12, 0x0

    .line 268
    .local v12, "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v26, v7, v4

    check-cast v26, Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 269
    .local v26, "minAtt":Lmf/org/apache/xerces/impl/xs/util/XInt;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v25, v7, v4

    check-cast v25, Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 270
    .local v25, "maxAtt":Lmf/org/apache/xerces/impl/xs/util/XInt;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    aget-object v23, v7, v4

    check-cast v23, Ljava/lang/Long;

    .line 272
    .local v23, "defaultVals":Ljava/lang/Long;
    new-instance v24, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    .line 273
    .local v24, "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    if-eqz p5, :cond_a

    const/16 v4, 0x65

    :goto_2
    move-object/from16 v0, v24

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    .line 274
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->getParticleCount()I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    .line 275
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->popContext()[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 277
    if-eqz v18, :cond_b

    .line 278
    new-instance v19, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct/range {v19 .. v19}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    .local v19, "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    move-object/from16 v4, v19

    .line 279
    check-cast v4, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    .line 283
    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 284
    new-instance v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .end local v12    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    invoke-direct {v12}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .line 285
    .restart local v12    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    const/4 v4, 0x3

    iput-short v4, v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 286
    invoke-virtual/range {v26 .. v26}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v4

    iput v4, v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 287
    invoke-virtual/range {v25 .. v25}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v4

    iput v4, v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 288
    move-object/from16 v0, v24

    iput-object v0, v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 289
    move-object/from16 v0, v19

    iput-object v0, v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 292
    if-eqz p5, :cond_c

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    .line 293
    :goto_4
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lmf/org/w3c/dom/Element;

    .line 295
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v11, p0

    move/from16 v15, p4

    .line 291
    invoke-virtual/range {v11 .. v17}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->checkOccurrences(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/lang/String;Lmf/org/w3c/dom/Element;IJ)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v12

    .line 296
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 298
    return-object v12

    .line 211
    .end local v9    # "child":Lmf/org/w3c/dom/Element;
    .end local v12    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .end local v19    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    .end local v22    # "childName":Ljava/lang/String;
    .end local v23    # "defaultVals":Ljava/lang/Long;
    .end local v24    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    .end local v25    # "maxAtt":Lmf/org/apache/xerces/impl/xs/util/XInt;
    .end local v26    # "minAtt":Lmf/org/apache/xerces/impl/xs/util/XInt;
    .restart local v21    # "child":Lmf/org/w3c/dom/Element;
    :cond_0
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 212
    .local v6, "text":Ljava/lang/String;
    if-eqz v6, :cond_d

    .line 213
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v18

    move-object/from16 v9, v21

    .end local v21    # "child":Lmf/org/w3c/dom/Element;
    .restart local v9    # "child":Lmf/org/w3c/dom/Element;
    goto/16 :goto_0

    .line 223
    .end local v6    # "text":Ljava/lang/String;
    .restart local v22    # "childName":Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    .line 225
    .restart local v12    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    invoke-static {v9}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v22

    .line 226
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 227
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v8, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v12, 0x0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p6

    invoke-virtual/range {v8 .. v13}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .end local v12    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    move-result-object v12

    .line 262
    .restart local v12    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    :cond_2
    :goto_5
    if-eqz v12, :cond_3

    .line 263
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v4, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->addParticle(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)V

    .line 221
    :cond_3
    invoke-static {v9}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v9

    goto/16 :goto_1

    .line 229
    :cond_4
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v9, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v12

    .line 234
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->hasAllContent(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 237
    const/4 v12, 0x0

    .line 238
    const-string v4, "cos-all-limited.1.2"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_5

    .line 242
    :cond_5
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 243
    const/4 v12, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p6

    invoke-virtual/range {v8 .. v13}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseChoice(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .end local v12    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    move-result-object v12

    .line 244
    .restart local v12    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    goto :goto_5

    .line 245
    :cond_6
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 246
    const/4 v12, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p6

    invoke-virtual/range {v8 .. v13}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseSequence(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .end local v12    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    move-result-object v12

    .line 247
    .restart local v12    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    goto :goto_5

    .line 248
    :cond_7
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANY:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 249
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fWildCardTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v9, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->traverseAny(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v12

    .line 250
    goto/16 :goto_5

    .line 253
    :cond_8
    if-eqz p5, :cond_9

    .line 254
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/4 v4, 0x0

    const-string v5, "choice"

    aput-object v5, v20, v4

    const/4 v4, 0x1

    const-string v5, "(annotation?, (element | group | choice | sequence | any)*)"

    aput-object v5, v20, v4

    const/4 v4, 0x2

    invoke-static {v9}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v20, v4

    .line 259
    .local v20, "args":[Ljava/lang/Object;
    :goto_6
    const-string v4, "s4s-elt-must-match.1"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_5

    .line 257
    .end local v20    # "args":[Ljava/lang/Object;
    :cond_9
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/4 v4, 0x0

    const-string v5, "sequence"

    aput-object v5, v20, v4

    const/4 v4, 0x1

    const-string v5, "(annotation?, (element | group | choice | sequence | any)*)"

    aput-object v5, v20, v4

    const/4 v4, 0x2

    invoke-static {v9}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v20, v4

    .restart local v20    # "args":[Ljava/lang/Object;
    goto :goto_6

    .line 273
    .end local v20    # "args":[Ljava/lang/Object;
    .restart local v23    # "defaultVals":Ljava/lang/Long;
    .restart local v24    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    .restart local v25    # "maxAtt":Lmf/org/apache/xerces/impl/xs/util/XInt;
    .restart local v26    # "minAtt":Lmf/org/apache/xerces/impl/xs/util/XInt;
    :cond_a
    const/16 v4, 0x66

    goto/16 :goto_2

    .line 281
    :cond_b
    sget-object v19, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .restart local v19    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    goto/16 :goto_3

    .line 292
    :cond_c
    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    goto/16 :goto_4

    .end local v9    # "child":Lmf/org/w3c/dom/Element;
    .end local v12    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .end local v19    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    .end local v22    # "childName":Ljava/lang/String;
    .end local v23    # "defaultVals":Ljava/lang/Long;
    .end local v24    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    .end local v25    # "maxAtt":Lmf/org/apache/xerces/impl/xs/util/XInt;
    .end local v26    # "minAtt":Lmf/org/apache/xerces/impl/xs/util/XInt;
    .restart local v6    # "text":Ljava/lang/String;
    .restart local v21    # "child":Lmf/org/w3c/dom/Element;
    :cond_d
    move-object/from16 v9, v21

    .end local v21    # "child":Lmf/org/w3c/dom/Element;
    .restart local v9    # "child":Lmf/org/w3c/dom/Element;
    goto/16 :goto_0
.end method


# virtual methods
.method protected hasAllContent(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z
    .locals 3
    .param p1, "particle"    # Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .prologue
    const/4 v1, 0x0

    .line 304
    if-eqz p1, :cond_1

    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 305
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v2, 0x67

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 305
    goto :goto_0

    :cond_1
    move v0, v1

    .line 308
    goto :goto_0
.end method

.method traverseAll(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 27
    .param p1, "allDecl"    # Lmf/org/w3c/dom/Element;
    .param p2, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p3, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p4, "allContextFlags"    # I
    .param p5, "parent"    # Lmf/org/apache/xerces/xs/XSObject;

    .prologue
    .line 66
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v7

    .line 68
    .local v7, "attrValues":[Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v21

    .line 70
    .local v21, "child":Lmf/org/w3c/dom/Element;
    const/16 v18, 0x0

    .line 71
    .local v18, "annotation":Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    if-eqz v21, :cond_0

    invoke-static/range {v21 .. v21}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v7, v4, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v18

    .line 73
    invoke-static/range {v21 .. v21}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v9

    .line 81
    .end local v21    # "child":Lmf/org/w3c/dom/Element;
    .local v9, "child":Lmf/org/w3c/dom/Element;
    :goto_0
    const/16 v22, 0x0

    .line 83
    .local v22, "childName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->pushContext()V

    .line 85
    :goto_1
    if-nez v9, :cond_1

    .line 103
    const/4 v12, 0x0

    .line 104
    .local v12, "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v26, v7, v4

    check-cast v26, Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 105
    .local v26, "minAtt":Lmf/org/apache/xerces/impl/xs/util/XInt;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v25, v7, v4

    check-cast v25, Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 106
    .local v25, "maxAtt":Lmf/org/apache/xerces/impl/xs/util/XInt;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    aget-object v23, v7, v4

    check-cast v23, Ljava/lang/Long;

    .line 108
    .local v23, "defaultVals":Ljava/lang/Long;
    new-instance v24, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    .line 109
    .local v24, "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    const/16 v4, 0x67

    move-object/from16 v0, v24

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    .line 110
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->getParticleCount()I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    .line 111
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->popContext()[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 113
    if-eqz v18, :cond_4

    .line 114
    new-instance v19, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct/range {v19 .. v19}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    .local v19, "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    move-object/from16 v4, v19

    .line 115
    check-cast v4, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    .line 119
    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 120
    new-instance v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .end local v12    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    invoke-direct {v12}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .line 121
    .restart local v12    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    const/4 v4, 0x3

    iput-short v4, v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 122
    invoke-virtual/range {v26 .. v26}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v4

    iput v4, v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 123
    invoke-virtual/range {v25 .. v25}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v4

    iput v4, v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 124
    move-object/from16 v0, v24

    iput-object v0, v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 125
    move-object/from16 v0, v19

    iput-object v0, v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 128
    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ALL:Ljava/lang/String;

    .line 129
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lmf/org/w3c/dom/Element;

    .line 131
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v11, p0

    move/from16 v15, p4

    .line 127
    invoke-virtual/range {v11 .. v17}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->checkOccurrences(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/lang/String;Lmf/org/w3c/dom/Element;IJ)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v12

    .line 132
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 134
    return-object v12

    .line 76
    .end local v9    # "child":Lmf/org/w3c/dom/Element;
    .end local v12    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .end local v19    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    .end local v22    # "childName":Ljava/lang/String;
    .end local v23    # "defaultVals":Ljava/lang/Long;
    .end local v24    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    .end local v25    # "maxAtt":Lmf/org/apache/xerces/impl/xs/util/XInt;
    .end local v26    # "minAtt":Lmf/org/apache/xerces/impl/xs/util/XInt;
    .restart local v21    # "child":Lmf/org/w3c/dom/Element;
    :cond_0
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "text":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 78
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v18

    move-object/from16 v9, v21

    .end local v21    # "child":Lmf/org/w3c/dom/Element;
    .restart local v9    # "child":Lmf/org/w3c/dom/Element;
    goto/16 :goto_0

    .line 87
    .end local v6    # "text":Ljava/lang/String;
    .restart local v22    # "childName":Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    .line 88
    .restart local v12    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    invoke-static {v9}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v22

    .line 91
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 92
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v8, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v12, 0x1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    invoke-virtual/range {v8 .. v13}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .end local v12    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    move-result-object v12

    .line 99
    .restart local v12    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    :goto_3
    if-eqz v12, :cond_2

    .line 100
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v4, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->addParticle(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)V

    .line 85
    :cond_2
    invoke-static {v9}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v9

    goto/16 :goto_1

    .line 95
    :cond_3
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/4 v4, 0x0

    const-string v5, "all"

    aput-object v5, v20, v4

    const/4 v4, 0x1

    const-string v5, "(annotation?, element*)"

    aput-object v5, v20, v4

    const/4 v4, 0x2

    invoke-static {v9}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v20, v4

    .line 96
    .local v20, "args":[Ljava/lang/Object;
    const-string v4, "s4s-elt-must-match.1"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_3

    .line 117
    .end local v20    # "args":[Ljava/lang/Object;
    .restart local v23    # "defaultVals":Ljava/lang/Long;
    .restart local v24    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    .restart local v25    # "maxAtt":Lmf/org/apache/xerces/impl/xs/util/XInt;
    .restart local v26    # "minAtt":Lmf/org/apache/xerces/impl/xs/util/XInt;
    :cond_4
    sget-object v19, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .restart local v19    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    goto/16 :goto_2

    .end local v9    # "child":Lmf/org/w3c/dom/Element;
    .end local v12    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .end local v19    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    .end local v22    # "childName":Ljava/lang/String;
    .end local v23    # "defaultVals":Ljava/lang/Long;
    .end local v24    # "group":Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;
    .end local v25    # "maxAtt":Lmf/org/apache/xerces/impl/xs/util/XInt;
    .end local v26    # "minAtt":Lmf/org/apache/xerces/impl/xs/util/XInt;
    .restart local v6    # "text":Ljava/lang/String;
    .restart local v21    # "child":Lmf/org/w3c/dom/Element;
    :cond_5
    move-object/from16 v9, v21

    .end local v21    # "child":Lmf/org/w3c/dom/Element;
    .restart local v9    # "child":Lmf/org/w3c/dom/Element;
    goto/16 :goto_0
.end method

.method traverseChoice(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 7
    .param p1, "choiceDecl"    # Lmf/org/w3c/dom/Element;
    .param p2, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p3, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p4, "allContextFlags"    # I
    .param p5, "parent"    # Lmf/org/apache/xerces/xs/XSObject;

    .prologue
    .line 182
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseSeqChoice(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;IZLmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    return-object v0
.end method

.method traverseSequence(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 7
    .param p1, "seqDecl"    # Lmf/org/w3c/dom/Element;
    .param p2, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p3, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p4, "allContextFlags"    # I
    .param p5, "parent"    # Lmf/org/apache/xerces/xs/XSObject;

    .prologue
    .line 158
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseSeqChoice(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;IZLmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    return-object v0
.end method
