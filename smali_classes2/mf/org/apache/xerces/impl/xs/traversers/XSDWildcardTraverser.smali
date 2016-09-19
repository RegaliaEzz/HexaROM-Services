.class Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDWildcardTraverser.java"


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0
    .param p1, "handler"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;
    .param p2, "gAttrCheck"    # Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    .line 72
    return-void
.end method


# virtual methods
.method traverseAny(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 7
    .param p1, "elmNode"    # Lmf/org/w3c/dom/Element;
    .param p2, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p3, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    .line 88
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    .line 89
    .local v0, "attrValues":[Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->traverseWildcardDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v4

    .line 92
    .local v4, "wildcard":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    const/4 v3, 0x0

    .line 93
    .local v3, "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    if-eqz v4, :cond_0

    .line 94
    sget v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v5, v0, v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v2

    .line 95
    .local v2, "min":I
    sget v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v5, v0, v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v1

    .line 96
    .local v1, "max":I
    if-eqz v1, :cond_0

    .line 97
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz v5, :cond_1

    .line 98
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->getParticleDecl()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v3

    .line 102
    :goto_0
    const/4 v5, 0x2

    iput-short v5, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 103
    iput-object v4, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 104
    iput v2, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 105
    iput v1, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 106
    iget-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v5, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 110
    .end local v1    # "max":I
    .end local v2    # "min":I
    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v5, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 112
    return-object v3

    .line 100
    .restart local v1    # "max":I
    .restart local v2    # "min":I
    :cond_1
    new-instance v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .end local v3    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .restart local v3    # "particle":Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    goto :goto_0
.end method

.method traverseAnyAttribute(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .locals 4
    .param p1, "elmNode"    # Lmf/org/w3c/dom/Element;
    .param p2, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p3, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    .line 129
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, "attrValues":[Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->traverseWildcardDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v1

    .line 131
    .local v1, "wildcard":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v2, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 133
    return-object v1
.end method

.method traverseWildcardDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .locals 12
    .param p1, "elmNode"    # Lmf/org/w3c/dom/Element;
    .param p2, "attrValues"    # [Ljava/lang/Object;
    .param p3, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p4, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    .line 151
    new-instance v11, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v11}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    .line 153
    .local v11, "wildcard":Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    aget-object v9, p2, v0

    check-cast v9, Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 154
    .local v9, "namespaceTypeAttr":Lmf/org/apache/xerces/impl/xs/util/XInt;
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v0

    iput-short v0, v11, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    .line 156
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    aget-object v0, p2, v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v11, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    .line 158
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PROCESSCONTENTS:I

    aget-object v10, p2, v0

    check-cast v10, Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 159
    .local v10, "processContentsAttr":Lmf/org/apache/xerces/impl/xs/util/XInt;
    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v0

    iput-short v0, v11, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    .line 162
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    .line 163
    .local v8, "child":Lmf/org/w3c/dom/Element;
    const/4 v6, 0x0

    .line 164
    .local v6, "annotation":Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    if-eqz v8, :cond_3

    .line 166
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v8, p2, v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v6

    .line 168
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    .line 177
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 178
    const-string v0, "s4s-elt-must-match.1"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "wildcard"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "(annotation?)"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 188
    :cond_1
    :goto_1
    if-eqz v6, :cond_4

    .line 189
    new-instance v7, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v7}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    .local v7, "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    move-object v0, v7

    .line 190
    check-cast v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    .line 194
    :goto_2
    iput-object v7, v11, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 196
    return-object v11

    .line 171
    .end local v7    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    :cond_2
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 173
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v6

    goto :goto_0

    .line 182
    .end local v2    # "text":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .restart local v2    # "text":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 184
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v6

    goto :goto_1

    .line 192
    .end local v2    # "text":Ljava/lang/String;
    :cond_4
    sget-object v7, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .restart local v7    # "annotations":Lmf/org/apache/xerces/xs/XSObjectList;
    goto :goto_2
.end method
