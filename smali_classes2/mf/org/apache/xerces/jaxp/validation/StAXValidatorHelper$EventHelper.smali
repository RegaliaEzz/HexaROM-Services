.class final Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;
.super Ljava/lang/Object;
.source "StAXValidatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EventHelper"
.end annotation


# static fields
.field private static final CHUNK_MASK:I = 0x3ff

.field private static final CHUNK_SIZE:I = 0x400


# instance fields
.field private final fCharBuffer:[C

.field final synthetic this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)V
    .locals 1

    .prologue
    .line 474
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fCharBuffer:[C

    .line 474
    return-void
.end method

.method private fillDeclaredPrefixes(Ljava/util/Iterator;)V
    .locals 3
    .param p1, "namespaces"    # Ljava/util/Iterator;

    .prologue
    .line 612
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v2, v2, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDeclaredPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 613
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 618
    return-void

    .line 614
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Namespace;

    .line 615
    .local v0, "ns":Lmf/javax/xml/stream/events/Namespace;
    invoke-interface {v0}, Lmf/javax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, "prefix":Ljava/lang/String;
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v2, v2, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDeclaredPrefixes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .end local v1    # "prefix":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .restart local v1    # "prefix":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method private fillDeclaredPrefixes(Lmf/javax/xml/stream/events/EndElement;)V
    .locals 1
    .param p1, "event"    # Lmf/javax/xml/stream/events/EndElement;

    .prologue
    .line 607
    invoke-interface {p1}, Lmf/javax/xml/stream/events/EndElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillDeclaredPrefixes(Ljava/util/Iterator;)V

    .line 608
    return-void
.end method

.method private fillDeclaredPrefixes(Lmf/javax/xml/stream/events/StartElement;)V
    .locals 1
    .param p1, "event"    # Lmf/javax/xml/stream/events/StartElement;

    .prologue
    .line 602
    invoke-interface {p1}, Lmf/javax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillDeclaredPrefixes(Ljava/util/Iterator;)V

    .line 603
    return-void
.end method

.method private fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/javax/xml/namespace/QName;)V
    .locals 4
    .param p1, "toFill"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "toCopy"    # Lmf/javax/xml/namespace/QName;

    .prologue
    .line 582
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-virtual {p2}, Lmf/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lmf/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lmf/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method private fillXMLAttributes(Lmf/javax/xml/stream/events/StartElement;)V
    .locals 7
    .param p1, "event"    # Lmf/javax/xml/stream/events/StartElement;

    .prologue
    .line 587
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v4, v4, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 588
    invoke-interface {p1}, Lmf/javax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object v1

    .line 589
    .local v1, "attrs":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 598
    return-void

    .line 590
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Attribute;

    .line 591
    .local v0, "attr":Lmf/javax/xml/stream/events/Attribute;
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v4, v4, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/javax/xml/namespace/QName;)V

    .line 592
    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->getDTDType()Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, "type":Ljava/lang/String;
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v4, v4, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v2

    .line 594
    .local v2, "idx":I
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v4, v4, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v5, v5, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 595
    if-eqz v3, :cond_1

    .end local v3    # "type":Ljava/lang/String;
    :goto_1
    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 594
    invoke-virtual {v4, v5, v3, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v4, v4, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->isSpecified()Z

    move-result v5

    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    goto :goto_0

    .line 595
    .restart local v3    # "type":Ljava/lang/String;
    :cond_1
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    goto :goto_1
.end method

.method private sendCharactersToValidator(Ljava/lang/String;)V
    .locals 9
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 622
    if-eqz p1, :cond_1

    .line 623
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 624
    .local v2, "length":I
    and-int/lit16 v3, v2, 0x3ff

    .line 625
    .local v3, "remainder":I
    if-lez v3, :cond_0

    .line 626
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fCharBuffer:[C

    invoke-virtual {p1, v7, v3, v4, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 627
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v4, v4, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fCharBuffer:[C

    invoke-virtual {v4, v5, v7, v3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 628
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
    invoke-static {v4}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v4

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v5, v5, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v5, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 630
    :cond_0
    move v0, v3

    .local v0, "i":I
    move v1, v0

    .line 631
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_2

    .line 637
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "remainder":I
    :cond_1
    return-void

    .line 632
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    .restart local v3    # "remainder":I
    :cond_2
    add-int/lit16 v0, v1, 0x400

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fCharBuffer:[C

    invoke-virtual {p1, v1, v0, v4, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 633
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v4, v4, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fCharBuffer:[C

    const/16 v6, 0x400

    invoke-virtual {v4, v5, v7, v6}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 634
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
    invoke-static {v4}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v4

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v5, v5, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v5, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method


# virtual methods
.method final validate(Lmf/javax/xml/stream/XMLEventReader;Lmf/javax/xml/transform/stax/StAXResult;)V
    .locals 11
    .param p1, "reader"    # Lmf/javax/xml/stream/XMLEventReader;
    .param p2, "result"    # Lmf/javax/xml/transform/stax/StAXResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 478
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLEventReader;->peek()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v6

    invoke-static {v5, v6}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$8(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;Lmf/javax/xml/stream/events/XMLEvent;)V

    .line 479
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 480
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v5

    invoke-interface {v5}, Lmf/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v3

    .line 481
    .local v3, "eventType":I
    const/4 v5, 0x7

    if-eq v3, v5, :cond_0

    .line 482
    if-eq v3, v10, :cond_0

    .line 483
    new-instance v5, Lorg/xml/sax/SAXException;

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;
    invoke-static {v6}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$0(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-result-object v6

    invoke-virtual {v6}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v6

    .line 484
    const-string v7, "StAXIllegalInitialState"

    .line 483
    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 486
    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-virtual {v5, v8, p2, v9}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->setup(Lmf/javax/xml/stream/Location;Lmf/javax/xml/transform/stax/StAXResult;Z)V

    .line 487
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v5

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;
    invoke-static {v6}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$3(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/util/StAXLocationWrapper;

    move-result-object v6

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;
    invoke-static {v7}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$4(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v7

    invoke-virtual {v5, v6, v8, v7, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 488
    :cond_1
    :goto_0
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 576
    :goto_1
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v5

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 578
    .end local v3    # "eventType":I
    :cond_2
    return-void

    .line 489
    .restart local v3    # "eventType":I
    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLEventReader;->nextEvent()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v6

    invoke-static {v5, v6}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$8(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;Lmf/javax/xml/stream/events/XMLEvent;)V

    .line 490
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v5

    invoke-interface {v5}, Lmf/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v3

    .line 491
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 493
    :pswitch_1
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDepth:I
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$5(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$6(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;I)V

    .line 494
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v5

    invoke-interface {v5}, Lmf/javax/xml/stream/events/XMLEvent;->asStartElement()Lmf/javax/xml/stream/events/StartElement;

    move-result-object v4

    .line 495
    .local v4, "start":Lmf/javax/xml/stream/events/StartElement;
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v5, v5, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v4}, Lmf/javax/xml/stream/events/StartElement;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/javax/xml/namespace/QName;)V

    .line 496
    invoke-direct {p0, v4}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillXMLAttributes(Lmf/javax/xml/stream/events/StartElement;)V

    .line 497
    invoke-direct {p0, v4}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillDeclaredPrefixes(Lmf/javax/xml/stream/events/StartElement;)V

    .line 498
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$4(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v5

    invoke-interface {v4}, Lmf/javax/xml/stream/events/StartElement;->getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Lmf/javax/xml/namespace/NamespaceContext;)V

    .line 499
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$3(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/util/StAXLocationWrapper;

    move-result-object v5

    invoke-interface {v4}, Lmf/javax/xml/stream/events/StartElement;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 500
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v5

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v6, v6, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v7, v7, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v5, v6, v7, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    .line 503
    .end local v4    # "start":Lmf/javax/xml/stream/events/StartElement;
    :pswitch_2
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v5

    invoke-interface {v5}, Lmf/javax/xml/stream/events/XMLEvent;->asEndElement()Lmf/javax/xml/stream/events/EndElement;

    move-result-object v2

    .line 504
    .local v2, "end":Lmf/javax/xml/stream/events/EndElement;
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v5, v5, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v2}, Lmf/javax/xml/stream/events/EndElement;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/javax/xml/namespace/QName;)V

    .line 505
    invoke-direct {p0, v2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillDeclaredPrefixes(Lmf/javax/xml/stream/events/EndElement;)V

    .line 506
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$3(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/util/StAXLocationWrapper;

    move-result-object v5

    invoke-interface {v2}, Lmf/javax/xml/stream/events/EndElement;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 507
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v5

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v6, v6, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v5, v6, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 508
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDepth:I
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$5(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$6(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;I)V

    if-gtz v6, :cond_1

    goto/16 :goto_1

    .line 514
    .end local v2    # "end":Lmf/javax/xml/stream/events/EndElement;
    :pswitch_3
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 515
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v5

    invoke-interface {v5}, Lmf/javax/xml/stream/events/XMLEvent;->asCharacters()Lmf/javax/xml/stream/events/Characters;

    move-result-object v0

    .line 516
    .local v0, "chars":Lmf/javax/xml/stream/events/Characters;
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v5

    invoke-interface {v5, v10}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->setIgnoringCharacters(Z)V

    .line 517
    invoke-interface {v0}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    .line 518
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v5

    invoke-interface {v5, v9}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->setIgnoringCharacters(Z)V

    .line 519
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v5

    invoke-interface {v5, v0}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->characters(Lmf/javax/xml/stream/events/Characters;)V

    goto/16 :goto_0

    .line 522
    .end local v0    # "chars":Lmf/javax/xml/stream/events/Characters;
    :cond_4
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v5

    invoke-interface {v5}, Lmf/javax/xml/stream/events/XMLEvent;->asCharacters()Lmf/javax/xml/stream/events/Characters;

    move-result-object v5

    invoke-interface {v5}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 526
    :pswitch_4
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 527
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v5

    invoke-interface {v5}, Lmf/javax/xml/stream/events/XMLEvent;->asCharacters()Lmf/javax/xml/stream/events/Characters;

    move-result-object v0

    .line 528
    .restart local v0    # "chars":Lmf/javax/xml/stream/events/Characters;
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v5

    invoke-interface {v5, v10}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->setIgnoringCharacters(Z)V

    .line 529
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v5

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 530
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v5

    invoke-interface {v5}, Lmf/javax/xml/stream/events/XMLEvent;->asCharacters()Lmf/javax/xml/stream/events/Characters;

    move-result-object v5

    invoke-interface {v5}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    .line 531
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v5

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 532
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v5

    invoke-interface {v5, v9}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->setIgnoringCharacters(Z)V

    .line 533
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v5

    invoke-interface {v5, v0}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->cdata(Lmf/javax/xml/stream/events/Characters;)V

    goto/16 :goto_0

    .line 536
    .end local v0    # "chars":Lmf/javax/xml/stream/events/Characters;
    :cond_5
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v5

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 537
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v5

    invoke-interface {v5}, Lmf/javax/xml/stream/events/XMLEvent;->asCharacters()Lmf/javax/xml/stream/events/Characters;

    move-result-object v5

    invoke-interface {v5}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    .line 538
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v5

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    .line 542
    :pswitch_5
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDepth:I
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$5(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$6(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;I)V

    .line 543
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 544
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v6

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v5

    check-cast v5, Lmf/javax/xml/stream/events/StartDocument;

    invoke-interface {v6, v5}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->startDocument(Lmf/javax/xml/stream/events/StartDocument;)V

    goto/16 :goto_0

    .line 548
    :pswitch_6
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 549
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v6

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v5

    check-cast v5, Lmf/javax/xml/stream/events/EndDocument;

    invoke-interface {v6, v5}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->endDocument(Lmf/javax/xml/stream/events/EndDocument;)V

    goto/16 :goto_0

    .line 553
    :pswitch_7
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 554
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v6

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v5

    check-cast v5, Lmf/javax/xml/stream/events/ProcessingInstruction;

    invoke-interface {v6, v5}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->processingInstruction(Lmf/javax/xml/stream/events/ProcessingInstruction;)V

    goto/16 :goto_0

    .line 558
    :pswitch_8
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 559
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v6

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v5

    check-cast v5, Lmf/javax/xml/stream/events/Comment;

    invoke-interface {v6, v5}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->comment(Lmf/javax/xml/stream/events/Comment;)V

    goto/16 :goto_0

    .line 563
    :pswitch_9
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 564
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v6

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v5

    check-cast v5, Lmf/javax/xml/stream/events/EntityReference;

    invoke-interface {v6, v5}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->entityReference(Lmf/javax/xml/stream/events/EntityReference;)V

    goto/16 :goto_0

    .line 568
    :pswitch_a
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/stream/events/DTD;

    .line 569
    .local v1, "dtd":Lmf/javax/xml/stream/events/DTD;
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-interface {v1}, Lmf/javax/xml/stream/events/DTD;->getEntities()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->processEntityDeclarations(Ljava/util/List;)V

    .line 570
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 571
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    invoke-static {v5}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v5

    invoke-interface {v5, v1}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->doctypeDecl(Lmf/javax/xml/stream/events/DTD;)V

    goto/16 :goto_0

    .line 491
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_4
    .end packed-switch
.end method
