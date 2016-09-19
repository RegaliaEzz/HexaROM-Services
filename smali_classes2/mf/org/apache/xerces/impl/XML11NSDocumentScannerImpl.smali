.class public Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;
.super Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;
.source "XML11NSDocumentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;
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
    .line 68
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    return-object v0
.end method


# virtual methods
.method protected createContentDispatcher()Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;
    .locals 1

    .prologue
    .line 773
    new-instance v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;-><init>(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)V

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

    .line 766
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 767
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fPerformValidation:Z

    .line 768
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    .line 769
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
    .line 555
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    .line 558
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 559
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    const-string v0, "EqRequiredInAttribute"

    .line 562
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 563
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 564
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 560
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 571
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v0, :cond_8

    .line 572
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v6

    .line 574
    .local v6, "attrIndex":I
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 575
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    .line 576
    const/4 v2, 0x0

    .line 573
    invoke-virtual {p1, v0, v1, v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_1
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fTempString2:Lmf/org/apache/xerces/xni/XMLString;

    .line 597
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fIsEntityDeclaredVC:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v0, p0

    .line 596
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->scanAttributeValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v7

    .line 599
    .local v7, "isSameNormalizedAttr":Z
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 600
    .local v12, "value":Ljava/lang/String;
    invoke-virtual {p1, v6, v12}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setValue(ILjava/lang/String;)V

    .line 602
    if-nez v7, :cond_2

    .line 603
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fTempString2:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setNonNormalizedValue(ILjava/lang/String;)V

    .line 605
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v6, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    .line 608
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v0, :cond_7

    .line 610
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 612
    .local v8, "localpart":Ljava/lang/String;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 613
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 617
    .local v10, "prefix":Ljava/lang/String;
    :goto_1
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v10, v0, :cond_3

    .line 618
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v10, v0, :cond_d

    .line 619
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v8, v0, :cond_d

    .line 622
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 625
    .local v11, "uri":Ljava/lang/String;
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v10, v0, :cond_4

    .line 626
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v8, v0, :cond_4

    .line 627
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 628
    const-string v1, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 629
    const-string v2, "CantBindXMLNS"

    .line 630
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v5, v3, v4

    .line 631
    const/4 v4, 0x2

    .line 627
    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 635
    :cond_4
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v11, v0, :cond_5

    .line 636
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 637
    const-string v1, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 638
    const-string v2, "CantBindXMLNS"

    .line 639
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v5, v3, v4

    .line 640
    const/4 v4, 0x2

    .line 636
    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 644
    :cond_5
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-ne v8, v0, :cond_a

    .line 645
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v11, v0, :cond_6

    .line 646
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 647
    const-string v1, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 648
    const-string v2, "CantBindXML"

    .line 649
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v5, v3, v4

    .line 650
    const/4 v4, 0x2

    .line 646
    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 665
    :cond_6
    :goto_2
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v8, v0, :cond_b

    move-object v10, v8

    .line 672
    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 674
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_c

    .line 672
    .end local v11    # "uri":Ljava/lang/String;
    :goto_4
    invoke-interface {v0, v10, v11}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 678
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-virtual {p1, v6, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    .line 692
    .end local v8    # "localpart":Ljava/lang/String;
    .end local v10    # "prefix":Ljava/lang/String;
    :cond_7
    :goto_5
    return-void

    .line 578
    .end local v6    # "attrIndex":I
    .end local v7    # "isSameNormalizedAttr":Z
    .end local v12    # "value":Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v9

    .line 581
    .local v9, "oldLen":I
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 582
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    .line 583
    const/4 v2, 0x0

    .line 580
    invoke-virtual {p1, v0, v1, v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 586
    .restart local v6    # "attrIndex":I
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v0

    if-ne v9, v0, :cond_1

    .line 588
    const-string v0, "AttributeNotUnique"

    .line 589
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 590
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 591
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 587
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 614
    .end local v9    # "oldLen":I
    .restart local v7    # "isSameNormalizedAttr":Z
    .restart local v8    # "localpart":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    :cond_9
    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_1

    .line 655
    .restart local v10    # "prefix":Ljava/lang/String;
    .restart local v11    # "uri":Ljava/lang/String;
    :cond_a
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-ne v11, v0, :cond_6

    .line 656
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 657
    const-string v1, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 658
    const-string v2, "CantBindXML"

    .line 659
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    aput-object v5, v3, v4

    .line 660
    const/4 v4, 0x2

    .line 656
    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_2

    .line 667
    :cond_b
    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_3

    .line 674
    :cond_c
    const/4 v11, 0x0

    goto :goto_4

    .line 682
    .end local v11    # "uri":Ljava/lang/String;
    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 685
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 683
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

    .line 713
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    .line 724
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    const-string v0, "ETagRequired"

    .line 727
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 725
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 731
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 732
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 734
    const-string v0, "ETagUnterminated"

    .line 735
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 733
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    .line 740
    iget v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    .line 743
    iget v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityDepth:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-ge v0, v1, :cond_2

    .line 745
    const-string v0, "ElementEntityMismatch"

    .line 746
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 744
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_3

    .line 752
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 753
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v0, :cond_3

    .line 754
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    .line 759
    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

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
    .line 133
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    .line 135
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v11, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 136
    .local v8, "rawname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v11, :cond_1

    .line 137
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v11}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    .line 138
    move-object/from16 v0, p0

    iget v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fScannerState:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_1

    .line 139
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fPerformValidation:Z

    if-eqz v11, :cond_1

    .line 140
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 141
    const-string v12, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 142
    const-string v13, "MSG_GRAMMAR_NOT_FOUND"

    .line 143
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    .line 144
    const/4 v15, 0x1

    .line 140
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 146
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 147
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 148
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 149
    const-string v12, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 150
    const-string v13, "RootElementTypeMustMatchDoctypedecl"

    .line 151
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    .line 152
    const/4 v15, 0x1

    .line 148
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 159
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    .line 162
    const/4 v3, 0x0

    .line 163
    .local v3, "empty":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 166
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v9

    .line 169
    .local v9, "sawSpace":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    .line 170
    .local v2, "c":I
    const/16 v11, 0x3e

    if-ne v2, v11, :cond_9

    .line 171
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 197
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v11, :cond_5

    .line 199
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v11, v12, :cond_2

    .line 200
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 201
    const-string v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 202
    const-string v13, "ElementXMLNSPrefix"

    .line 203
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 204
    const/4 v15, 0x2

    .line 200
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 209
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v11, :cond_f

    .line 210
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 213
    .local v7, "prefix":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v12, v7}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 215
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v12, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 217
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 218
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v12, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 220
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v12, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 222
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v11, :cond_4

    .line 223
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 224
    const-string v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 225
    const-string v13, "ElementPrefixUnbound"

    .line 226
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 229
    const/4 v15, 0x2

    .line 223
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 233
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v5

    .line 234
    .local v5, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-lt v4, v5, :cond_10

    .line 264
    const/4 v11, 0x1

    if-le v5, v11, :cond_5

    .line 265
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->checkDuplicatesNS()Lmf/org/apache/xerces/xni/QName;

    move-result-object v6

    .line 266
    .local v6, "name":Lmf/org/apache/xerces/xni/QName;
    if-eqz v6, :cond_5

    .line 267
    iget-object v11, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v11, :cond_15

    .line 268
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 269
    const-string v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 270
    const-string v13, "AttributeNSNotUnique"

    .line 271
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 273
    iget-object v0, v6, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 274
    iget-object v0, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 275
    const/4 v15, 0x2

    .line 268
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 290
    .end local v4    # "i":I
    .end local v5    # "length":I
    .end local v6    # "name":Lmf/org/apache/xerces/xni/QName;
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v11, :cond_8

    .line 291
    if-eqz v3, :cond_16

    .line 294
    move-object/from16 v0, p0

    iget v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    .line 297
    move-object/from16 v0, p0

    iget v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityStack:[I

    move-object/from16 v0, p0

    iget v13, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityDepth:I

    add-int/lit8 v13, v13, -0x1

    aget v12, v12, v13

    if-ge v11, v12, :cond_6

    .line 299
    const-string v11, "ElementEntityMismatch"

    .line 300
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 298
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    const/4 v14, 0x0

    invoke-interface {v11, v12, v13, v14}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 305
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v11, :cond_7

    .line 306
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v11}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    .line 309
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    .line 317
    :cond_8
    :goto_5
    return v3

    .line 173
    :cond_9
    const/16 v11, 0x2f

    if-ne v2, v11, :cond_b

    .line 174
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 175
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v12, 0x3e

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v11

    if-nez v11, :cond_a

    .line 177
    const-string v11, "ElementUnterminated"

    .line 178
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    .line 176
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :cond_a
    const/4 v3, 0x1

    .line 181
    goto/16 :goto_1

    .line 182
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v11

    if-eqz v11, :cond_c

    if-nez v9, :cond_e

    .line 185
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v11

    if-eqz v11, :cond_d

    if-nez v9, :cond_e

    .line 187
    :cond_d
    const-string v11, "ElementUnterminated"

    .line 188
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    .line 186
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->scanAttribute(Lmf/org/apache/xerces/util/XMLAttributesImpl;)V

    goto/16 :goto_0

    .line 211
    :cond_f
    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_2

    .line 235
    .restart local v4    # "i":I
    .restart local v5    # "length":I
    .restart local v7    # "prefix":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v11, v4, v12}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getName(ILmf/org/apache/xerces/xni/QName;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v11, :cond_12

    .line 239
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v11, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 241
    .local v1, "aprefix":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v11, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 244
    .local v10, "uri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v11, :cond_13

    .line 245
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v11, v10, :cond_13

    .line 234
    :cond_11
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 240
    .end local v1    # "aprefix":Ljava/lang/String;
    .end local v10    # "uri":Ljava/lang/String;
    :cond_12
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_6

    .line 248
    .restart local v1    # "aprefix":Ljava/lang/String;
    .restart local v10    # "uri":Ljava/lang/String;
    :cond_13
    sget-object v11, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v1, v11, :cond_11

    .line 249
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iput-object v10, v11, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 250
    if-nez v10, :cond_14

    .line 251
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 252
    const-string v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 253
    const-string v13, "AttributePrefixUnbound"

    .line 254
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 257
    aput-object v1, v14, v15

    .line 258
    const/4 v15, 0x2

    .line 251
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 260
    :cond_14
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v11, v4, v10}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto :goto_7

    .line 277
    .end local v1    # "aprefix":Ljava/lang/String;
    .end local v10    # "uri":Ljava/lang/String;
    .restart local v6    # "name":Lmf/org/apache/xerces/xni/QName;
    :cond_15
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 278
    const-string v12, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 279
    const-string v13, "AttributeNotUnique"

    .line 280
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 282
    iget-object v0, v6, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 283
    const/4 v15, 0x2

    .line 277
    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_4

    .line 311
    .end local v4    # "i":I
    .end local v5    # "length":I
    .end local v6    # "name":Lmf/org/apache/xerces/xni/QName;
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

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
    .line 345
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v9, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 346
    .local v7, "rawname":Ljava/lang/String;
    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v9, :cond_1

    .line 347
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v9}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    .line 348
    iget v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fScannerState:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_1

    .line 349
    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fPerformValidation:Z

    if-eqz v9, :cond_1

    .line 350
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 351
    const-string v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 352
    const-string v11, "MSG_GRAMMAR_NOT_FOUND"

    .line 353
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    .line 354
    const/4 v13, 0x1

    .line 350
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 356
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 357
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 358
    :cond_0
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 359
    const-string v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 360
    const-string v11, "RootElementTypeMustMatchDoctypedecl"

    .line 361
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v7, v12, v13

    .line 362
    const/4 v13, 0x1

    .line 358
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 369
    :cond_1
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v9

    iput-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    .line 372
    const/4 v2, 0x0

    .line 373
    .local v2, "empty":Z
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 377
    :goto_0
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    .line 378
    .local v1, "c":I
    const/16 v9, 0x3e

    if-ne v1, v9, :cond_9

    .line 379
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 408
    :goto_1
    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v9, :cond_5

    .line 410
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v9, v10, :cond_2

    .line 411
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 412
    const-string v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 413
    const-string v11, "ElementXMLNSPrefix"

    .line 414
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 415
    const/4 v13, 0x2

    .line 411
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 420
    :cond_2
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v9, :cond_f

    .line 421
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 424
    .local v6, "prefix":Ljava/lang/String;
    :goto_2
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v10, v6}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 426
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, v10, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v10, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 428
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v9, :cond_3

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 429
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v10, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 431
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v10, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 433
    :cond_3
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v9, :cond_4

    .line 434
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 435
    const-string v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 436
    const-string v11, "ElementPrefixUnbound"

    .line 437
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 438
    iget-object v14, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 439
    iget-object v14, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 440
    const/4 v13, 0x2

    .line 434
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 444
    :cond_4
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v4

    .line 445
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-lt v3, v4, :cond_10

    .line 475
    const/4 v9, 0x1

    if-le v4, v9, :cond_5

    .line 476
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->checkDuplicatesNS()Lmf/org/apache/xerces/xni/QName;

    move-result-object v5

    .line 477
    .local v5, "name":Lmf/org/apache/xerces/xni/QName;
    if-eqz v5, :cond_5

    .line 478
    iget-object v9, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_15

    .line 479
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 480
    const-string v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 481
    const-string v11, "AttributeNSNotUnique"

    .line 482
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 483
    iget-object v14, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 484
    iget-object v14, v5, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 485
    iget-object v14, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 486
    const/4 v13, 0x2

    .line 479
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 501
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "name":Lmf/org/apache/xerces/xni/QName;
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_5
    :goto_4
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v9, :cond_8

    .line 502
    if-eqz v2, :cond_16

    .line 505
    iget v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    .line 508
    iget v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fMarkupDepth:I

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityStack:[I

    iget v11, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityDepth:I

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    if-ge v9, v10, :cond_6

    .line 510
    const-string v9, "ElementEntityMismatch"

    .line 511
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    .line 509
    invoke-virtual {p0, v9, v10}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    :cond_6
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 516
    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v9, :cond_7

    .line 517
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v9}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    .line 520
    :cond_7
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementStack:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lmf/org/apache/xerces/xni/QName;)V

    .line 528
    :cond_8
    :goto_5
    return v2

    .line 381
    :cond_9
    const/16 v9, 0x2f

    if-ne v1, v9, :cond_b

    .line 382
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 383
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v10, 0x3e

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v9

    if-nez v9, :cond_a

    .line 385
    const-string v9, "ElementUnterminated"

    .line 386
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    .line 384
    invoke-virtual {p0, v9, v10}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    :cond_a
    const/4 v2, 0x1

    .line 389
    goto/16 :goto_1

    .line 390
    :cond_b
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fSawSpace:Z

    if-nez v9, :cond_e

    .line 393
    :cond_c
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fSawSpace:Z

    if-nez v9, :cond_e

    .line 395
    :cond_d
    const-string v9, "ElementUnterminated"

    .line 396
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    .line 394
    invoke-virtual {p0, v9, v10}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    :cond_e
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p0, v9}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->scanAttribute(Lmf/org/apache/xerces/util/XMLAttributesImpl;)V

    .line 404
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v9

    iput-boolean v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fSawSpace:Z

    goto/16 :goto_0

    .line 422
    :cond_f
    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_2

    .line 446
    .restart local v3    # "i":I
    .restart local v4    # "length":I
    .restart local v6    # "prefix":Ljava/lang/String;
    :cond_10
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v9, v3, v10}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getName(ILmf/org/apache/xerces/xni/QName;)V

    .line 449
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v9, :cond_12

    .line 450
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 452
    .local v0, "aprefix":Ljava/lang/String;
    :goto_6
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v9, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 455
    .local v8, "uri":Ljava/lang/String;
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_13

    .line 456
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v9, v8, :cond_13

    .line 445
    :cond_11
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 451
    .end local v0    # "aprefix":Ljava/lang/String;
    .end local v8    # "uri":Ljava/lang/String;
    :cond_12
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_6

    .line 459
    .restart local v0    # "aprefix":Ljava/lang/String;
    .restart local v8    # "uri":Ljava/lang/String;
    :cond_13
    sget-object v9, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v0, v9, :cond_11

    .line 460
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iput-object v8, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 461
    if-nez v8, :cond_14

    .line 462
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 463
    const-string v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 464
    const-string v11, "AttributePrefixUnbound"

    .line 465
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 466
    iget-object v14, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 467
    iget-object v14, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 468
    aput-object v0, v12, v13

    .line 469
    const/4 v13, 0x2

    .line 462
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 471
    :cond_14
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v9, v3, v8}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto :goto_7

    .line 488
    .end local v0    # "aprefix":Ljava/lang/String;
    .end local v8    # "uri":Ljava/lang/String;
    .restart local v5    # "name":Lmf/org/apache/xerces/xni/QName;
    :cond_15
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 489
    const-string v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    .line 490
    const-string v11, "AttributeNotUnique"

    .line 491
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 492
    iget-object v14, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v14, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 493
    iget-object v14, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 494
    const/4 v13, 0x2

    .line 488
    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_4

    .line 522
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "name":Lmf/org/apache/xerces/xni/QName;
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_16
    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

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
    .line 329
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanQName(Lmf/org/apache/xerces/xni/QName;)Z

    .line 332
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fSawSpace:Z

    .line 333
    return-void
.end method

.method public setDTDValidator(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V
    .locals 0
    .param p1, "validator"    # Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    .prologue
    .line 104
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    .line 105
    return-void
.end method
