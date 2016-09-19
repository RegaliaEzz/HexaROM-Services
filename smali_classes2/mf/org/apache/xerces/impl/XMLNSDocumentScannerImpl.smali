.class public Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;
.super Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;
.source "XMLNSDocumentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;
    }
.end annotation


# instance fields
.field protected fBindNamespaces:Z

.field private fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

.field protected fPerformValidation:Z

.field private fSawSpace:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    return-object v0
.end method


# virtual methods
.method protected createContentDispatcher()Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;
    .locals 1

    .prologue
    .line 696
    new-instance v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;-><init>(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)V

    return-object v0
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 1
    .param p1, "componentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 689
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 690
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fPerformValidation:Z

    .line 691
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    .line 692
    return-void
.end method

.method protected scanAttribute(Lmf/org/apache/xerces/util/XMLAttributesImpl;)V
    .locals 13
    .param p1, "attributes"    # Lmf/org/apache/xerces/util/XMLAttributesImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    .line 503
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 504
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    const-string v0, "EqRequiredInAttribute"

    .line 506
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 505
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 513
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v0, :cond_9

    .line 514
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v6

    .line 515
    .local v6, "attrIndex":I
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_1
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fTempString2:Lmf/org/apache/xerces/xni/XMLString;

    .line 531
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fIsEntityDeclaredVC:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v0, p0

    .line 530
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->scanAttributeValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v7

    .line 533
    .local v7, "isSameNormalizedAttr":Z
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 534
    .local v12, "value":Ljava/lang/String;
    invoke-virtual {p1, v6, v12}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setValue(ILjava/lang/String;)V

    .line 536
    if-nez v7, :cond_2

    .line 537
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fTempString2:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setNonNormalizedValue(ILjava/lang/String;)V

    .line 539
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v6, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    .line 542
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v0, :cond_8

    .line 544
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 545
    .local v8, "localpart":Ljava/lang/String;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 546
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 549
    .local v10, "prefix":Ljava/lang/String;
    :goto_1
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v10, v0, :cond_3

    .line 550
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v10, v0, :cond_e

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v8, v0, :cond_e

    .line 553
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 556
    .local v11, "uri":Ljava/lang/String;
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v10, v0, :cond_4

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v8, v0, :cond_4

    .line 557
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 558
    const-string v2, "CantBindXMLNS"

    .line 559
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v5, v3, v4

    .line 560
    const/4 v4, 0x2

    .line 557
    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 564
    :cond_4
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v11, v0, :cond_5

    .line 565
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 566
    const-string v2, "CantBindXMLNS"

    .line 567
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v5, v3, v4

    .line 568
    const/4 v4, 0x2

    .line 565
    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 572
    :cond_5
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-ne v8, v0, :cond_b

    .line 573
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v11, v0, :cond_6

    .line 574
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 575
    const-string v2, "CantBindXML"

    .line 576
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v5, v3, v4

    .line 577
    const/4 v4, 0x2

    .line 574
    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 590
    :cond_6
    :goto_2
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v8, v0, :cond_c

    move-object v10, v8

    .line 595
    :goto_3
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v11, v0, :cond_7

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v8, v0, :cond_7

    .line 596
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 597
    const-string v2, "EmptyPrefixedAttName"

    .line 598
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v5, v3, v4

    .line 599
    const/4 v4, 0x2

    .line 596
    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 603
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_d

    .end local v11    # "uri":Ljava/lang/String;
    :goto_4
    invoke-interface {v0, v10, v11}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 605
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    .line 617
    .end local v8    # "localpart":Ljava/lang/String;
    .end local v10    # "prefix":Ljava/lang/String;
    :cond_8
    :goto_5
    return-void

    .line 518
    .end local v6    # "attrIndex":I
    .end local v7    # "isSameNormalizedAttr":Z
    .end local v12    # "value":Ljava/lang/String;
    :cond_9
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v9

    .line 519
    .local v9, "oldLen":I
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 522
    .restart local v6    # "attrIndex":I
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v0

    if-ne v9, v0, :cond_1

    .line 523
    const-string v0, "AttributeNotUnique"

    .line 524
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 525
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 523
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 546
    .end local v9    # "oldLen":I
    .restart local v7    # "isSameNormalizedAttr":Z
    .restart local v8    # "localpart":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    :cond_a
    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_1

    .line 582
    .restart local v10    # "prefix":Ljava/lang/String;
    .restart local v11    # "uri":Ljava/lang/String;
    :cond_b
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-ne v11, v0, :cond_6

    .line 583
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 584
    const-string v2, "CantBindXML"

    .line 585
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v5, v3, v4

    .line 586
    const/4 v4, 0x2

    .line 583
    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_2

    .line 590
    :cond_c
    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_3

    .line 603
    :cond_d
    const/4 v11, 0x0

    goto :goto_4

    .line 610
    .end local v11    # "uri":Ljava/lang/String;
    :cond_e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 611
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto :goto_5
.end method

.method protected scanEndElement()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 639
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    .line 650
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 651
    const-string v0, "ETagRequired"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 655
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 656
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 657
    const-string v0, "ETagUnterminated"

    .line 658
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 657
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    .line 663
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    .line 666
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityDepth:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-ge v0, v1, :cond_2

    .line 667
    const-string v0, "ElementEntityMismatch"

    .line 668
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 667
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_3

    .line 674
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 675
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v0, :cond_3

    .line 676
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    .line 681
    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    return v0
.end method

.method protected scanStartElement()Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    .line 132
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v11, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 133
    .local v8, "rawname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v11, :cond_1

    .line 134
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v11}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    .line 135
    move-object/from16 v0, p0

    iget v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fScannerState:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_1

    .line 136
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fPerformValidation:Z

    if-eqz v11, :cond_1

    .line 137
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v12, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 138
    const-string v13, "MSG_GRAMMAR_NOT_FOUND"

    .line 139
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    .line 140
    const/4 v15, 0x1

    .line 137
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 142
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 143
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v12, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 144
    const-string v13, "RootElementTypeMustMatchDoctypedecl"

    .line 145
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    .line 146
    const/4 v15, 0x1

    .line 143
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 153
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    .line 156
    const/4 v3, 0x0

    .line 157
    .local v3, "empty":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 160
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v9

    .line 163
    .local v9, "sawSpace":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    .line 164
    .local v2, "c":I
    const/16 v11, 0x3e

    if-ne v2, v11, :cond_9

    .line 165
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 186
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v11, :cond_5

    .line 188
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v11, v12, :cond_2

    .line 189
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 190
    const-string v13, "ElementXMLNSPrefix"

    .line 191
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 192
    const/4 v15, 0x2

    .line 189
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 196
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v11, :cond_e

    .line 197
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 199
    .local v7, "prefix":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v12, v7}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 201
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v12, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 203
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 204
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v12, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 206
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v12, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 208
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v11, :cond_4

    .line 209
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 210
    const-string v13, "ElementPrefixUnbound"

    .line 211
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 212
    const/4 v15, 0x2

    .line 209
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 216
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v5

    .line 218
    .local v5, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-lt v4, v5, :cond_f

    .line 243
    const/4 v11, 0x1

    if-le v5, v11, :cond_5

    .line 244
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->checkDuplicatesNS()Lmf/org/apache/xerces/xni/QName;

    move-result-object v6

    .line 245
    .local v6, "name":Lmf/org/apache/xerces/xni/QName;
    if-eqz v6, :cond_5

    .line 246
    iget-object v11, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v11, :cond_14

    .line 247
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 248
    const-string v13, "AttributeNSNotUnique"

    .line 249
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v6, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget-object v0, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 250
    const/4 v15, 0x2

    .line 247
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 264
    .end local v4    # "i":I
    .end local v5    # "length":I
    .end local v6    # "name":Lmf/org/apache/xerces/xni/QName;
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v11, :cond_8

    .line 265
    if-eqz v3, :cond_15

    .line 268
    move-object/from16 v0, p0

    iget v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    .line 271
    move-object/from16 v0, p0

    iget v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityStack:[I

    move-object/from16 v0, p0

    iget v13, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityDepth:I

    add-int/lit8 v13, v13, -0x1

    aget v12, v12, v13

    if-ge v11, v12, :cond_6

    .line 272
    const-string v11, "ElementEntityMismatch"

    .line 273
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 272
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    const/4 v14, 0x0

    invoke-interface {v11, v12, v13, v14}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 278
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v11, :cond_7

    .line 279
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v11}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    .line 282
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    .line 289
    :cond_8
    :goto_5
    return v3

    .line 168
    :cond_9
    const/16 v11, 0x2f

    if-ne v2, v11, :cond_b

    .line 169
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 170
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v12, 0x3e

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v11

    if-nez v11, :cond_a

    .line 171
    const-string v11, "ElementUnterminated"

    .line 172
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    .line 171
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :cond_a
    const/4 v3, 0x1

    .line 175
    goto/16 :goto_1

    .line 177
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v11

    if-eqz v11, :cond_c

    if-nez v9, :cond_d

    .line 178
    :cond_c
    const-string v11, "ElementUnterminated"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->scanAttribute(Lmf/org/apache/xerces/util/XMLAttributesImpl;)V

    goto/16 :goto_0

    .line 197
    :cond_e
    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_2

    .line 219
    .restart local v4    # "i":I
    .restart local v5    # "length":I
    .restart local v7    # "prefix":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v11, v4, v12}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getName(ILmf/org/apache/xerces/xni/QName;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v11, :cond_11

    .line 222
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 223
    .local v1, "aprefix":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v11, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 226
    .local v10, "uri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v11, :cond_12

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v11, v10, :cond_12

    .line 218
    :cond_10
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 222
    .end local v1    # "aprefix":Ljava/lang/String;
    .end local v10    # "uri":Ljava/lang/String;
    :cond_11
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_6

    .line 230
    .restart local v1    # "aprefix":Ljava/lang/String;
    .restart local v10    # "uri":Ljava/lang/String;
    :cond_12
    sget-object v11, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v1, v11, :cond_10

    .line 231
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iput-object v10, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 232
    if-nez v10, :cond_13

    .line 233
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 234
    const-string v13, "AttributePrefixUnbound"

    .line 235
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    aput-object v1, v14, v15

    .line 236
    const/4 v15, 0x2

    .line 233
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 238
    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v11, v4, v10}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto :goto_7

    .line 253
    .end local v1    # "aprefix":Ljava/lang/String;
    .end local v10    # "uri":Ljava/lang/String;
    .restart local v6    # "name":Lmf/org/apache/xerces/xni/QName;
    :cond_14
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 254
    const-string v13, "AttributeNotUnique"

    .line 255
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v6, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 256
    const/4 v15, 0x2

    .line 253
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_4

    .line 284
    .end local v4    # "i":I
    .end local v5    # "length":I
    .end local v6    # "name":Lmf/org/apache/xerces/xni/QName;
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    const/4 v14, 0x0

    invoke-interface {v11, v12, v13, v14}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_5
.end method

.method protected scanStartElementAfterName()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 317
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v9, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 318
    .local v7, "rawname":Ljava/lang/String;
    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v9, :cond_1

    .line 319
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v9}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    .line 320
    iget v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fScannerState:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_1

    .line 321
    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fPerformValidation:Z

    if-eqz v9, :cond_1

    .line 322
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 323
    const-string v11, "MSG_GRAMMAR_NOT_FOUND"

    .line 324
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    .line 325
    const/4 v13, 0x1

    .line 322
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 327
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 328
    :cond_0
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 329
    const-string v11, "RootElementTypeMustMatchDoctypedecl"

    .line 330
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v7, v12, v13

    .line 331
    const/4 v13, 0x1

    .line 328
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 338
    :cond_1
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v9

    iput-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    .line 341
    const/4 v2, 0x0

    .line 342
    .local v2, "empty":Z
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 346
    :goto_0
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    .line 347
    .local v1, "c":I
    const/16 v9, 0x3e

    if-ne v1, v9, :cond_9

    .line 348
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 372
    :goto_1
    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v9, :cond_5

    .line 374
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v9, v10, :cond_2

    .line 375
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 376
    const-string v11, "ElementXMLNSPrefix"

    .line 377
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 378
    const/4 v13, 0x2

    .line 375
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 382
    :cond_2
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v9, :cond_e

    .line 383
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 385
    .local v6, "prefix":Ljava/lang/String;
    :goto_2
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v10, v6}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 387
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, v10, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v10, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 389
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v9, :cond_3

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 390
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v10, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 392
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v10, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 394
    :cond_3
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v9, :cond_4

    .line 395
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 396
    const-string v11, "ElementPrefixUnbound"

    .line 397
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 398
    const/4 v13, 0x2

    .line 395
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 402
    :cond_4
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v4

    .line 404
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-lt v3, v4, :cond_f

    .line 429
    const/4 v9, 0x1

    if-le v4, v9, :cond_5

    .line 430
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->checkDuplicatesNS()Lmf/org/apache/xerces/xni/QName;

    move-result-object v5

    .line 431
    .local v5, "name":Lmf/org/apache/xerces/xni/QName;
    if-eqz v5, :cond_5

    .line 432
    iget-object v9, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_14

    .line 433
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 434
    const-string v11, "AttributeNSNotUnique"

    .line 435
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, v5, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    iget-object v14, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 436
    const/4 v13, 0x2

    .line 433
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 450
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "name":Lmf/org/apache/xerces/xni/QName;
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_5
    :goto_4
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v9, :cond_8

    .line 451
    if-eqz v2, :cond_15

    .line 454
    iget v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    .line 457
    iget v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityStack:[I

    iget v11, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityDepth:I

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    if-ge v9, v10, :cond_6

    .line 458
    const-string v9, "ElementEntityMismatch"

    .line 459
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    .line 458
    invoke-virtual {p0, v9, v10}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    :cond_6
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 464
    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v9, :cond_7

    .line 465
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v9}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    .line 468
    :cond_7
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    .line 475
    :cond_8
    :goto_5
    return v2

    .line 351
    :cond_9
    const/16 v9, 0x2f

    if-ne v1, v9, :cond_b

    .line 352
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 353
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v10, 0x3e

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v9

    if-nez v9, :cond_a

    .line 354
    const-string v9, "ElementUnterminated"

    .line 355
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    .line 354
    invoke-virtual {p0, v9, v10}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    :cond_a
    const/4 v2, 0x1

    .line 358
    goto/16 :goto_1

    .line 360
    :cond_b
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fSawSpace:Z

    if-nez v9, :cond_d

    .line 361
    :cond_c
    const-string v9, "ElementUnterminated"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-virtual {p0, v9, v10}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    :cond_d
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p0, v9}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->scanAttribute(Lmf/org/apache/xerces/util/XMLAttributesImpl;)V

    .line 368
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v9

    iput-boolean v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fSawSpace:Z

    goto/16 :goto_0

    .line 383
    :cond_e
    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_2

    .line 405
    .restart local v3    # "i":I
    .restart local v4    # "length":I
    .restart local v6    # "prefix":Ljava/lang/String;
    :cond_f
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v9, v3, v10}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getName(ILmf/org/apache/xerces/xni/QName;)V

    .line 407
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v9, :cond_11

    .line 408
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 409
    .local v0, "aprefix":Ljava/lang/String;
    :goto_6
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v9, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 412
    .local v8, "uri":Ljava/lang/String;
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_12

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v9, v8, :cond_12

    .line 404
    :cond_10
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 408
    .end local v0    # "aprefix":Ljava/lang/String;
    .end local v8    # "uri":Ljava/lang/String;
    :cond_11
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_6

    .line 416
    .restart local v0    # "aprefix":Ljava/lang/String;
    .restart local v8    # "uri":Ljava/lang/String;
    :cond_12
    sget-object v9, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v0, v9, :cond_10

    .line 417
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iput-object v8, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 418
    if-nez v8, :cond_13

    .line 419
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 420
    const-string v11, "AttributePrefixUnbound"

    .line 421
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object v0, v12, v13

    .line 422
    const/4 v13, 0x2

    .line 419
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 424
    :cond_13
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v9, v3, v8}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto :goto_7

    .line 439
    .end local v0    # "aprefix":Ljava/lang/String;
    .end local v8    # "uri":Ljava/lang/String;
    .restart local v5    # "name":Lmf/org/apache/xerces/xni/QName;
    :cond_14
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 440
    const-string v11, "AttributeNotUnique"

    .line 441
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 442
    const/4 v13, 0x2

    .line 439
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_4

    .line 470
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "name":Lmf/org/apache/xerces/xni/QName;
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_15
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_5
.end method

.method protected scanStartElementName()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    .line 304
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fSawSpace:Z

    .line 305
    return-void
.end method

.method public setDTDValidator(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V
    .locals 0
    .param p1, "dtdValidator"    # Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    .prologue
    .line 101
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    .line 102
    return-void
.end method
