.class Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDAbstractIDConstraintTraverser.java"


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0
    .param p1, "handler"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;
    .param p2, "gAttrCheck"    # Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    .line 44
    return-void
.end method


# virtual methods
.method traverseIdentityConstraint(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;[Ljava/lang/Object;)Z
    .locals 21
    .param p1, "ic"    # Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .param p2, "icElem"    # Lmf/org/w3c/dom/Element;
    .param p3, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p4, "icElemAttrs"    # [Ljava/lang/Object;

    .prologue
    .line 52
    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v15

    .line 53
    .local v15, "sElem":Lmf/org/w3c/dom/Element;
    if-nez v15, :cond_0

    .line 54
    const-string v3, "s4s-elt-must-match.2"

    .line 55
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "identity constraint"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "(annotation?, selector, field+)"

    aput-object v8, v4, v7

    .line 54
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 57
    const/4 v3, 0x0

    .line 190
    :goto_0
    return v3

    .line 62
    :cond_0
    invoke-static {v15}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v15, v1, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    .line 64
    invoke-static {v15}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v15

    .line 66
    if-nez v15, :cond_2

    .line 67
    const-string v3, "s4s-elt-must-match.2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "identity constraint"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "(annotation?, selector, field+)"

    aput-object v8, v4, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 68
    const/4 v3, 0x0

    goto :goto_0

    .line 72
    :cond_1
    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "text":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 74
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    .line 79
    .end local v5    # "text":Ljava/lang/String;
    :cond_2
    invoke-static {v15}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 80
    const-string v3, "s4s-elt-must-match.1"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "identity constraint"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "(annotation?, selector, field+)"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    aput-object v8, v4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 81
    const/4 v3, 0x0

    goto :goto_0

    .line 83
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v15, v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v6

    .line 86
    .local v6, "attrValues":[Ljava/lang/Object;
    invoke-static {v15}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v19

    .line 88
    .local v19, "selChild":Lmf/org/w3c/dom/Element;
    if-eqz v19, :cond_6

    .line 90
    invoke-static/range {v19 .. v19}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 91
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v6, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    .line 92
    invoke-static/range {v19 .. v19}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v19

    .line 97
    :goto_1
    if-eqz v19, :cond_4

    .line 98
    const-string v3, "s4s-elt-must-match.1"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "(annotation?)"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    invoke-static/range {v19 .. v19}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 108
    :cond_4
    :goto_2
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    aget-object v16, v6, v3

    check-cast v16, Ljava/lang/String;

    .line 109
    .local v16, "sText":Ljava/lang/String;
    if-nez v16, :cond_7

    .line 110
    const-string v3, "s4s-att-must-appear"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    aput-object v8, v4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 111
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 95
    .end local v16    # "sText":Ljava/lang/String;
    :cond_5
    const-string v3, "s4s-elt-must-match.1"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "(annotation?)"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    invoke-static/range {v19 .. v19}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1

    .line 102
    :cond_6
    invoke-static {v15}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 103
    .restart local v5    # "text":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 104
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_2

    .line 113
    .end local v5    # "text":Ljava/lang/String;
    .restart local v16    # "sText":Ljava/lang/String;
    :cond_7
    invoke-static/range {v16 .. v16}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 115
    const/16 v17, 0x0

    .line 117
    .local v17, "sXpath":Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;
    :try_start_0
    new-instance v18, Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 118
    move-object/from16 v0, p3

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    .line 117
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3, v4}, Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v17    # "sXpath":Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;
    .local v18, "sXpath":Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;
    :try_start_1
    new-instance v20, Lmf/org/apache/xerces/impl/xs/identity/Selector;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/identity/Selector;-><init>(Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    .line 120
    .local v20, "selector":Lmf/org/apache/xerces/impl/xs/identity/Selector;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->setSelector(Lmf/org/apache/xerces/impl/xs/identity/Selector;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xpath/XPathException; {:try_start_1 .. :try_end_1} :catch_2

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 133
    invoke-static {v15}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    .line 134
    .local v10, "fElem":Lmf/org/w3c/dom/Element;
    if-nez v10, :cond_9

    .line 135
    const-string v3, "s4s-elt-must-match.2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "identity constraint"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "(annotation?, selector, field+)"

    aput-object v8, v4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 136
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 122
    .end local v10    # "fElem":Lmf/org/w3c/dom/Element;
    .end local v18    # "sXpath":Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;
    .end local v20    # "selector":Lmf/org/apache/xerces/impl/xs/identity/Selector;
    .restart local v17    # "sXpath":Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;
    :catch_0
    move-exception v9

    .line 123
    .local v9, "e":Lmf/org/apache/xerces/impl/xpath/XPathException;
    :goto_3
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xpath/XPathException;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v16, v4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 126
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 139
    .end local v9    # "e":Lmf/org/apache/xerces/impl/xpath/XPathException;
    .end local v17    # "sXpath":Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;
    .restart local v10    # "fElem":Lmf/org/w3c/dom/Element;
    .restart local v18    # "sXpath":Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;
    .restart local v20    # "selector":Lmf/org/apache/xerces/impl/xs/identity/Selector;
    :cond_8
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 140
    const-string v3, "s4s-elt-must-match.1"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "identity constraint"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "(annotation?, selector, field+)"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    aput-object v8, v4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 141
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    .line 138
    :cond_9
    :goto_4
    if-nez v10, :cond_8

    .line 190
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getFieldCount()I

    move-result v3

    if-lez v3, :cond_f

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 146
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v6

    .line 149
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v14

    .line 150
    .local v14, "fieldChild":Lmf/org/w3c/dom/Element;
    if-eqz v14, :cond_b

    .line 152
    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 153
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v6, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    .line 154
    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v14

    .line 157
    :cond_b
    if-eqz v14, :cond_d

    .line 158
    const-string v3, "s4s-elt-must-match.1"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "(annotation?)"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 166
    :cond_c
    :goto_5
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    aget-object v11, v6, v3

    check-cast v11, Ljava/lang/String;

    .line 167
    .local v11, "fText":Ljava/lang/String;
    if-nez v11, :cond_e

    .line 168
    const-string v3, "s4s-att-must-appear"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    aput-object v8, v4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 170
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 161
    .end local v11    # "fText":Ljava/lang/String;
    :cond_d
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 162
    .restart local v5    # "text":Ljava/lang/String;
    if-eqz v5, :cond_c

    .line 163
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_5

    .line 172
    .end local v5    # "text":Ljava/lang/String;
    .restart local v11    # "fText":Ljava/lang/String;
    :cond_e
    invoke-static {v11}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 174
    :try_start_2
    new-instance v12, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 175
    move-object/from16 v0, p3

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    .line 174
    invoke-direct {v12, v11, v3, v4}, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 176
    .local v12, "fXpath":Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;
    new-instance v13, Lmf/org/apache/xerces/impl/xs/identity/Field;

    move-object/from16 v0, p1

    invoke-direct {v13, v12, v0}, Lmf/org/apache/xerces/impl/xs/identity/Field;-><init>(Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    .line 177
    .local v13, "field":Lmf/org/apache/xerces/impl/xs/identity/Field;
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addField(Lmf/org/apache/xerces/impl/xs/identity/Field;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/xpath/XPathException; {:try_start_2 .. :try_end_2} :catch_1

    .line 185
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_4

    .line 179
    .end local v12    # "fXpath":Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;
    .end local v13    # "field":Lmf/org/apache/xerces/impl/xs/identity/Field;
    :catch_1
    move-exception v9

    .line 180
    .restart local v9    # "e":Lmf/org/apache/xerces/impl/xpath/XPathException;
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xpath/XPathException;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    .line 183
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 190
    .end local v9    # "e":Lmf/org/apache/xerces/impl/xpath/XPathException;
    .end local v11    # "fText":Ljava/lang/String;
    .end local v14    # "fieldChild":Lmf/org/w3c/dom/Element;
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 122
    .end local v10    # "fElem":Lmf/org/w3c/dom/Element;
    .end local v20    # "selector":Lmf/org/apache/xerces/impl/xs/identity/Selector;
    :catch_2
    move-exception v9

    move-object/from16 v17, v18

    .end local v18    # "sXpath":Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;
    .restart local v17    # "sXpath":Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;
    goto/16 :goto_3
.end method
