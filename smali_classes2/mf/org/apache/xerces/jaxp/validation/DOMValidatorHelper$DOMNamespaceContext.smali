.class final Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;
.super Ljava/lang/Object;
.source "DOMValidatorHelper.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DOMNamespaceContext"
.end annotation


# instance fields
.field protected fDOMContextBuilt:Z

.field protected fNamespace:[Ljava/lang/String;

.field protected fNamespaceSize:I

.field final synthetic this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 481
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    .line 495
    iput v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    .line 501
    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fDOMContextBuilt:Z

    return-void
.end method

.method private declarePrefix0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 591
    iget v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 592
    iget v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 593
    .local v0, "namespacearray":[Ljava/lang/String;
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    .line 598
    .end local v0    # "namespacearray":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    aput-object p1, v1, v2

    .line 599
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    aput-object p2, v1, v2

    .line 600
    return-void
.end method

.method private fillNamespaceContext()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 556
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fRoot:Lmf/org/w3c/dom/Node;
    invoke-static {v6}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$1(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 557
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fRoot:Lmf/org/w3c/dom/Node;
    invoke-static {v6}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$1(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 558
    .local v3, "currentNode":Lmf/org/w3c/dom/Node;
    :goto_0
    if-nez v3, :cond_1

    .line 587
    .end local v3    # "currentNode":Lmf/org/w3c/dom/Node;
    :cond_0
    return-void

    .line 559
    .restart local v3    # "currentNode":Lmf/org/w3c/dom/Node;
    :cond_1
    const/4 v6, 0x1

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-ne v6, v8, :cond_2

    .line 560
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 561
    .local v2, "attributes":Lmf/org/w3c/dom/NamedNodeMap;
    invoke-interface {v2}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    .line 562
    .local v1, "attrCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v1, :cond_3

    .line 584
    .end local v1    # "attrCount":I
    .end local v2    # "attributes":Lmf/org/w3c/dom/NamedNodeMap;
    .end local v4    # "i":I
    :cond_2
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    goto :goto_0

    .line 563
    .restart local v1    # "attrCount":I
    .restart local v2    # "attributes":Lmf/org/w3c/dom/NamedNodeMap;
    .restart local v4    # "i":I
    :cond_3
    invoke-interface {v2, v4}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    .line 564
    .local v0, "attr":Lmf/org/w3c/dom/Attr;
    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 565
    .local v5, "value":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 566
    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 568
    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    iget-object v8, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    iget-object v8, v8, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    # invokes: Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Node;)V
    invoke-static {v6, v8, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;Lmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Node;)V

    .line 572
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    iget-object v6, v6, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v6, v8, :cond_5

    .line 574
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    iget-object v6, v6, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v6, v8, :cond_7

    .line 575
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    iget-object v6, v6, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v6, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;
    invoke-static {v6}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$3(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/SymbolTable;

    move-result-object v6

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-direct {p0, v8, v6}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->declarePrefix0(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    move-object v6, v7

    .line 575
    goto :goto_2

    .line 578
    :cond_7
    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;
    invoke-static {v6}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$3(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/SymbolTable;

    move-result-object v6

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-direct {p0, v8, v6}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->declarePrefix0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object v6, v7

    goto :goto_4
.end method

.method private getURI0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 604
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    if-lt v0, v1, :cond_0

    .line 610
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 605
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 606
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_1

    .line 604
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 516
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$0(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllPrefixes()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$0(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->getAllPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredPrefixAt(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 543
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$0(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/NamespaceSupport;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredPrefixCount()I
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$0(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->getDeclaredPrefixCount()I

    move-result v0

    return v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 535
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$0(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 520
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;
    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$0(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/NamespaceSupport;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "uri":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 522
    iget-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fDOMContextBuilt:Z

    if-nez v1, :cond_0

    .line 523
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fillNamespaceContext()V

    .line 524
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fDOMContextBuilt:Z

    .line 526
    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    if-lez v1, :cond_1

    .line 527
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;
    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$0(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/NamespaceSupport;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/util/NamespaceSupport;->containsPrefix(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 528
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->getURI0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 531
    :cond_1
    return-object v0
.end method

.method public popContext()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$0(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->popContext()V

    .line 513
    return-void
.end method

.method public pushContext()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$0(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->pushContext()V

    .line 509
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 551
    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fDOMContextBuilt:Z

    .line 552
    iput v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    .line 553
    return-void
.end method
