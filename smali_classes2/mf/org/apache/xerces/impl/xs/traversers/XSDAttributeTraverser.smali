.class Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDAttributeTraverser.java"


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0
    .param p1, "handler"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;
    .param p2, "gAttrCheck"    # Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    .line 67
    return-void
.end method


# virtual methods
.method checkDefaultValid(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V
    .locals 4
    .param p1, "attribute"    # Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v1

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    .line 475
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    .line 476
    return-void
.end method

.method checkDefaultValid(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)V
    .locals 4
    .param p1, "attrUse"    # Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    .line 483
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    .line 484
    return-void
.end method

.method protected traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 8
    .param p1, "attrDecl"    # Lmf/org/w3c/dom/Element;
    .param p2, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p3, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    const/4 v5, 0x1

    .line 216
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, p1, v5, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v2

    .line 217
    .local v2, "attrValues":[Ljava/lang/Object;
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseNamedAttr(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZLmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v7

    .line 218
    .local v7, "attribute":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v2, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 219
    return-object v7
.end method

.method protected traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    .locals 26
    .param p1, "attrDecl"    # Lmf/org/w3c/dom/Element;
    .param p2, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p3, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p4, "enclosingCT"    # Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .prologue
    .line 75
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v6

    .line 77
    .local v6, "attrValues":[Ljava/lang/Object;
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    aget-object v20, v6, v3

    check-cast v20, Ljava/lang/String;

    .line 78
    .local v20, "defaultAtt":Ljava/lang/String;
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    aget-object v21, v6, v3

    check-cast v21, Ljava/lang/String;

    .line 79
    .local v21, "fixedAtt":Ljava/lang/String;
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v23, v6, v3

    check-cast v23, Ljava/lang/String;

    .line 80
    .local v23, "nameAtt":Ljava/lang/String;
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    aget-object v24, v6, v3

    check-cast v24, Lmf/org/apache/xerces/xni/QName;

    .line 81
    .local v24, "refAtt":Lmf/org/apache/xerces/xni/QName;
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_USE:I

    aget-object v25, v6, v3

    check-cast v25, Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 84
    .local v25, "useAtt":Lmf/org/apache/xerces/impl/xs/util/XInt;
    const/16 v17, 0x0

    .line 85
    .local v17, "attribute":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    const/4 v14, 0x0

    .line 86
    .local v14, "annotation":Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 87
    if-eqz v24, :cond_b

    .line 88
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v4, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-virtual {v3, v0, v4, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "attribute":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    check-cast v17, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 90
    .restart local v17    # "attribute":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v18

    .line 91
    .local v18, "child":Lmf/org/w3c/dom/Element;
    if-eqz v18, :cond_a

    invoke-static/range {v18 .. v18}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 92
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v6, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v14

    .line 93
    invoke-static/range {v18 .. v18}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v18

    .line 102
    :cond_0
    :goto_0
    if-eqz v18, :cond_1

    .line 103
    const-string v3, "src-attribute.3.2"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v24

    iget-object v8, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v4, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 106
    :cond_1
    move-object/from16 v0, v24

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 115
    .end local v18    # "child":Lmf/org/w3c/dom/Element;
    :goto_1
    const/16 v19, 0x0

    .line 116
    .local v19, "consType":S
    if-eqz v20, :cond_d

    .line 117
    const/16 v19, 0x1

    .line 124
    :cond_2
    :goto_2
    const/16 v16, 0x0

    .line 125
    .local v16, "attrUse":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    if-eqz v17, :cond_4

    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz v3, :cond_e

    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->getAttributeUse()Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    move-result-object v16

    .line 131
    :goto_3
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 132
    invoke-virtual/range {v25 .. v25}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v3

    move-object/from16 v0, v16

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    .line 133
    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-short v0, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    .line 134
    if-eqz v20, :cond_3

    .line 135
    new-instance v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    move-object/from16 v0, v16

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 136
    move-object/from16 v0, v16

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v0, v20

    iput-object v0, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    .line 139
    :cond_3
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v3

    if-nez v3, :cond_f

    .line 140
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 156
    :cond_4
    :goto_4
    if-eqz v20, :cond_5

    if-eqz v21, :cond_5

    .line 157
    const-string v3, "src-attribute.1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v23, v4, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 161
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_6

    .line 162
    if-eqz v25, :cond_6

    invoke-virtual/range {v25 .. v25}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v3

    if-eqz v3, :cond_6

    .line 163
    const-string v3, "src-attribute.2"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v23, v4, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 165
    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    .line 170
    :cond_6
    if-eqz v20, :cond_9

    if-eqz v16, :cond_9

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    move-object/from16 v0, p2

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 174
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->checkDefaultValid(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_5
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 186
    const-string v3, "a-props-correct.3"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v23, v4, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 188
    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 189
    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    .line 195
    :cond_7
    move-object/from16 v0, v16

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    .line 196
    move-object/from16 v0, v16

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    if-eqz v3, :cond_9

    .line 197
    move-object/from16 v0, v16

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 198
    move-object/from16 v0, v16

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v3

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    move-object/from16 v0, v16

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 199
    :cond_8
    const-string v3, "au-props-correct.2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v23, v4, v7

    const/4 v7, 0x1

    move-object/from16 v0, v16

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v8

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 201
    move-object/from16 v0, v16

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 202
    const/4 v3, 0x2

    move-object/from16 v0, v16

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    .line 207
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 208
    return-object v16

    .line 96
    .end local v16    # "attrUse":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    .end local v19    # "consType":S
    .restart local v18    # "child":Lmf/org/w3c/dom/Element;
    :cond_a
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, "text":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 98
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v14

    goto/16 :goto_0

    .line 108
    .end local v5    # "text":Ljava/lang/String;
    .end local v18    # "child":Lmf/org/w3c/dom/Element;
    :cond_b
    const/16 v17, 0x0

    .line 110
    goto/16 :goto_1

    .line 111
    :cond_c
    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v6

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseNamedAttr(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZLmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v17

    goto/16 :goto_1

    .line 118
    .restart local v19    # "consType":S
    :cond_d
    if-eqz v21, :cond_2

    .line 119
    const/16 v19, 0x2

    .line 120
    move-object/from16 v20, v21

    .line 121
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 129
    .restart local v16    # "attrUse":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    :cond_e
    new-instance v16, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .end local v16    # "attrUse":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    invoke-direct/range {v16 .. v16}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;-><init>()V

    .restart local v16    # "attrUse":Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    goto/16 :goto_3

    .line 143
    :cond_f
    if-eqz v14, :cond_10

    .line 144
    new-instance v15, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v15}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    .local v15, "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    move-object v3, v15

    .line 145
    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v3, v14}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    .line 149
    :goto_6
    move-object/from16 v0, v16

    iput-object v15, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto/16 :goto_4

    .line 147
    .end local v15    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    :cond_10
    sget-object v15, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .restart local v15    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    goto :goto_6

    .line 176
    .end local v15    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    :catch_0
    move-exception v22

    .line 177
    .local v22, "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 178
    const-string v3, "a-props-correct.2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v23, v4, v7

    const/4 v7, 0x1

    aput-object v20, v4, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 180
    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 181
    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    goto/16 :goto_5
.end method

.method traverseNamedAttr(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZLmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 31
    .param p1, "attrDecl"    # Lmf/org/w3c/dom/Element;
    .param p2, "attrValues"    # [Ljava/lang/Object;
    .param p3, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p4, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .param p5, "isGlobal"    # Z
    .param p6, "enclosingCT"    # Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .prologue
    .line 240
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    aget-object v21, p2, v4

    check-cast v21, Ljava/lang/String;

    .line 241
    .local v21, "defaultAtt":Ljava/lang/String;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    aget-object v22, p2, v4

    check-cast v22, Ljava/lang/String;

    .line 242
    .local v22, "fixedAtt":Ljava/lang/String;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FORM:I

    aget-object v23, p2, v4

    check-cast v23, Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 243
    .local v23, "formAtt":Lmf/org/apache/xerces/impl/xs/util/XInt;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v8, p2, v4

    check-cast v8, Ljava/lang/String;

    .line 244
    .local v8, "nameAtt":Ljava/lang/String;
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TYPE:I

    aget-object v30, p2, v4

    check-cast v30, Lmf/org/apache/xerces/xni/QName;

    .line 247
    .local v30, "typeAtt":Lmf/org/apache/xerces/xni/QName;
    const/16 v17, 0x0

    .line 248
    .local v17, "attribute":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz v4, :cond_b

    .line 249
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->getAttributeDecl()Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v17

    .line 255
    :goto_0
    if-eqz v8, :cond_1c

    .line 256
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v27, v8

    .line 259
    .end local v8    # "nameAtt":Ljava/lang/String;
    .local v27, "nameAtt":Ljava/lang/String;
    :goto_1
    const/16 v28, 0x0

    .line 260
    .local v28, "tnsAtt":Ljava/lang/String;
    const/4 v14, 0x0

    .line 261
    .local v14, "enclCT":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    const/4 v12, 0x0

    .line 262
    .local v12, "scope":S
    if-eqz p5, :cond_c

    .line 263
    move-object/from16 v0, p3

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 264
    const/4 v12, 0x1

    .line 280
    :cond_0
    :goto_2
    const/4 v13, 0x0

    .line 281
    .local v13, "attDefault":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    const/4 v11, 0x0

    .line 282
    .local v11, "constraintType":S
    if-eqz p5, :cond_1

    .line 283
    if-eqz v22, :cond_f

    .line 284
    new-instance v13, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .end local v13    # "attDefault":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    invoke-direct {v13}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    .line 285
    .restart local v13    # "attDefault":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    move-object/from16 v0, v22

    iput-object v0, v13, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    .line 286
    const/4 v11, 0x2

    .line 295
    :cond_1
    :goto_3
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v19

    .line 296
    .local v19, "child":Lmf/org/w3c/dom/Element;
    const/16 v16, 0x0

    .line 297
    .local v16, "annotation":Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    if-eqz v19, :cond_10

    invoke-static/range {v19 .. v19}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 298
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v4, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v16

    .line 299
    invoke-static/range {v19 .. v19}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v19

    .line 309
    :cond_2
    :goto_4
    const/4 v10, 0x0

    .line 310
    .local v10, "attrType":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    const/16 v24, 0x0

    .line 313
    .local v24, "haveAnonType":Z
    if-eqz v19, :cond_3

    .line 314
    invoke-static/range {v19 .. v19}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v20

    .line 316
    .local v20, "childName":Ljava/lang/String;
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v10

    .line 318
    const/16 v24, 0x1

    .line 319
    invoke-static/range {v19 .. v19}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v19

    .line 324
    .end local v20    # "childName":Ljava/lang/String;
    :cond_3
    if-nez v10, :cond_4

    if-eqz v30, :cond_4

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v5, 0x7

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    invoke-virtual {v4, v0, v5, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 326
    .local v29, "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    if-eqz v29, :cond_11

    invoke-interface/range {v29 .. v29}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_11

    move-object/from16 v10, v29

    .line 327
    check-cast v10, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 337
    .end local v29    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_4
    :goto_5
    if-nez v10, :cond_5

    .line 338
    sget-object v10, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 342
    :cond_5
    if-eqz v16, :cond_12

    .line 343
    new-instance v15, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v15}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    .local v15, "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    move-object v4, v15

    .line 344
    check-cast v4, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    :goto_6
    move-object/from16 v7, v17

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    .line 348
    invoke-virtual/range {v7 .. v15}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    .line 354
    if-nez v27, :cond_1b

    .line 355
    if-eqz p5, :cond_13

    .line 356
    const-string v4, "s4s-att-must-appear"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    aput-object v9, v5, v7

    const/4 v7, 0x1

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aput-object v9, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 359
    :goto_7
    const-string v8, "(no name)"

    .line 363
    .end local v27    # "nameAtt":Ljava/lang/String;
    .restart local v8    # "nameAtt":Ljava/lang/String;
    :goto_8
    if-eqz v19, :cond_6

    .line 364
    const-string v4, "s4s-elt-must-match.1"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v9, "(annotation?, (simpleType?))"

    aput-object v9, v5, v7

    const/4 v7, 0x2

    invoke-static/range {v19 .. v19}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 372
    :cond_6
    if-eqz v21, :cond_7

    if-eqz v22, :cond_7

    .line 373
    const-string v4, "src-attribute.1"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 387
    :cond_7
    if-eqz v24, :cond_8

    if-eqz v30, :cond_8

    .line 388
    const-string v4, "src-attribute.4"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 393
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v10, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->checkNotationType(Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/w3c/dom/Element;)V

    .line 398
    if-eqz v13, :cond_9

    .line 399
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    move-object/from16 v0, p3

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 401
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->checkDefaultValid(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :cond_9
    :goto_9
    if-eqz v13, :cond_a

    .line 416
    invoke-interface {v10}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 417
    const-string v4, "a-props-correct.3"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 419
    const/4 v13, 0x0

    .line 420
    const/4 v11, 0x0

    move-object/from16 v7, v17

    move-object/from16 v9, v28

    .line 421
    invoke-virtual/range {v7 .. v15}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    .line 429
    :cond_a
    if-eqz v8, :cond_14

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 430
    const-string v4, "no-xmlns"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 431
    const/4 v4, 0x0

    .line 467
    :goto_a
    return-object v4

    .line 251
    .end local v10    # "attrType":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .end local v11    # "constraintType":S
    .end local v12    # "scope":S
    .end local v13    # "attDefault":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .end local v14    # "enclCT":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .end local v15    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    .end local v16    # "annotation":Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    .end local v19    # "child":Lmf/org/w3c/dom/Element;
    .end local v24    # "haveAnonType":Z
    .end local v28    # "tnsAtt":Ljava/lang/String;
    :cond_b
    new-instance v17, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .end local v17    # "attribute":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    invoke-direct/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;-><init>()V

    .restart local v17    # "attribute":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    goto/16 :goto_0

    .line 267
    .end local v8    # "nameAtt":Ljava/lang/String;
    .restart local v12    # "scope":S
    .restart local v14    # "enclCT":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .restart local v27    # "nameAtt":Ljava/lang/String;
    .restart local v28    # "tnsAtt":Ljava/lang/String;
    :cond_c
    if-eqz p6, :cond_d

    .line 268
    move-object/from16 v14, p6

    .line 269
    const/4 v12, 0x2

    .line 271
    :cond_d
    if-eqz v23, :cond_e

    .line 272
    invoke-virtual/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 273
    move-object/from16 v0, p3

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 274
    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p3

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fAreLocalAttributesQualified:Z

    if-eqz v4, :cond_0

    .line 275
    move-object/from16 v0, p3

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v28, v0

    goto/16 :goto_2

    .line 287
    .restart local v11    # "constraintType":S
    .restart local v13    # "attDefault":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    :cond_f
    if-eqz v21, :cond_1

    .line 288
    new-instance v13, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .end local v13    # "attDefault":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    invoke-direct {v13}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    .line 289
    .restart local v13    # "attDefault":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    move-object/from16 v0, v21

    iput-object v0, v13, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    .line 290
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 302
    .restart local v16    # "annotation":Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    .restart local v19    # "child":Lmf/org/w3c/dom/Element;
    :cond_10
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 303
    .local v6, "text":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 304
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v16

    goto/16 :goto_4

    .line 330
    .end local v6    # "text":Ljava/lang/String;
    .restart local v10    # "attrType":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .restart local v24    # "haveAnonType":Z
    .restart local v29    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_11
    const-string v4, "src-resolve"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v30

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v9, v5, v7

    const/4 v7, 0x1

    const-string v9, "simpleType definition"

    aput-object v9, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 331
    if-nez v29, :cond_4

    .line 332
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fUnresolvedTypeName:Lmf/org/apache/xerces/xni/QName;

    goto/16 :goto_5

    .line 346
    .end local v29    # "type":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_12
    sget-object v15, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .restart local v15    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    goto/16 :goto_6

    .line 358
    :cond_13
    const-string v4, "src-attribute.3.1"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_7

    .line 403
    .end local v27    # "nameAtt":Ljava/lang/String;
    .restart local v8    # "nameAtt":Ljava/lang/String;
    :catch_0
    move-exception v25

    .line 404
    .local v25, "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    invoke-virtual/range {v25 .. v25}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 405
    const-string v4, "a-props-correct.2"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v5, v7

    const/4 v7, 0x1

    iget-object v9, v13, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    aput-object v9, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 407
    const/4 v13, 0x0

    .line 408
    const/4 v11, 0x0

    move-object/from16 v7, v17

    move-object/from16 v9, v28

    .line 409
    invoke-virtual/range {v7 .. v15}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    goto/16 :goto_9

    .line 437
    .end local v25    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    :cond_14
    if-eqz v28, :cond_15

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 438
    const-string v4, "no-xsi"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    aput-object v9, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 439
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 443
    :cond_15
    const-string v4, "(no name)"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 444
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 447
    :cond_16
    if-eqz p5, :cond_1a

    .line 448
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v4

    if-nez v4, :cond_17

    .line 449
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V

    .line 453
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v26

    .line 454
    .local v26, "loc":Ljava/lang/String;
    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-virtual {v0, v8, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v18

    .line 455
    .local v18, "attribute2":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    if-nez v18, :cond_18

    .line 456
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;Ljava/lang/String;)V

    .line 459
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v4, :cond_1a

    .line 460
    if-eqz v18, :cond_19

    .line 461
    move-object/from16 v17, v18

    .line 463
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V

    .end local v18    # "attribute2":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .end local v26    # "loc":Ljava/lang/String;
    :cond_1a
    move-object/from16 v4, v17

    .line 467
    goto/16 :goto_a

    .end local v8    # "nameAtt":Ljava/lang/String;
    .restart local v27    # "nameAtt":Ljava/lang/String;
    :cond_1b
    move-object/from16 v8, v27

    .end local v27    # "nameAtt":Ljava/lang/String;
    .restart local v8    # "nameAtt":Ljava/lang/String;
    goto/16 :goto_8

    .end local v10    # "attrType":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .end local v11    # "constraintType":S
    .end local v12    # "scope":S
    .end local v13    # "attDefault":Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .end local v14    # "enclCT":Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .end local v15    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    .end local v16    # "annotation":Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    .end local v19    # "child":Lmf/org/w3c/dom/Element;
    .end local v24    # "haveAnonType":Z
    .end local v28    # "tnsAtt":Ljava/lang/String;
    :cond_1c
    move-object/from16 v27, v8

    .end local v8    # "nameAtt":Ljava/lang/String;
    .restart local v27    # "nameAtt":Ljava/lang/String;
    goto/16 :goto_1
.end method
