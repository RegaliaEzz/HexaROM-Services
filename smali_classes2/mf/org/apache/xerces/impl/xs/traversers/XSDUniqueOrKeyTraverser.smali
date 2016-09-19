.class Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;
.source "XSDUniqueOrKeyTraverser.java"


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0
    .param p1, "handler"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;
    .param p2, "gAttrCheck"    # Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    .line 43
    return-void
.end method


# virtual methods
.method traverse(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 10
    .param p1, "uElem"    # Lmf/org/w3c/dom/Element;
    .param p2, "element"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p3, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p4, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 50
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v5, p1, v8, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "attrValues":[Ljava/lang/Object;
    sget v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v3, v0, v5

    check-cast v3, Ljava/lang/String;

    .line 55
    .local v3, "uName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 56
    const-string v5, "s4s-att-must-appear"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 58
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v5, v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 99
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v4, 0x0

    .line 63
    .local v4, "uniqueOrKey":Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNIQUE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 64
    new-instance v4, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    .end local v4    # "uniqueOrKey":Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;
    iget-object v5, p3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iget-object v6, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-direct {v4, v5, v3, v6, v7}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .line 74
    .restart local v4    # "uniqueOrKey":Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;
    :goto_1
    invoke-virtual {p0, v4, p1, p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->traverseIdentityConstraint(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 76
    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v5

    if-nez v5, :cond_1

    .line 77
    invoke-virtual {p4, p2, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    .line 80
    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v5, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "loc":Ljava/lang/String;
    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v1

    .line 82
    .local v1, "idc":Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    if-nez v1, :cond_2

    .line 83
    invoke-virtual {p4, p2, v4, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;Ljava/lang/String;)V

    .line 87
    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v5, v5, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v5, :cond_4

    .line 88
    if-eqz v1, :cond_3

    .line 89
    instance-of v5, v1, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    if-eqz v5, :cond_3

    .line 93
    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v5, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    .line 98
    .end local v1    # "idc":Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .end local v2    # "loc":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v5, v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto :goto_0

    .line 66
    :cond_5
    new-instance v4, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    .end local v4    # "uniqueOrKey":Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;
    iget-object v5, p3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iget-object v6, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-direct {v4, v5, v3, v6, v9}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .restart local v4    # "uniqueOrKey":Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;
    goto :goto_1
.end method
