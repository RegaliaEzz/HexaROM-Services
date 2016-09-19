.class final Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "JAXPValidatorComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SAX2XNI"
.end annotation


# instance fields
.field private final fAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

.field private final fQName:Lmf/org/apache/xerces/xni/QName;

.field final synthetic this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;


# direct methods
.method private constructor <init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)V
    .locals 1

    .prologue
    .line 232
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 238
    new-instance v0, Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->fAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    .line 244
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->fQName:Lmf/org/apache/xerces/xni/QName;

    return-void
.end method

.method synthetic constructor <init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;)V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;-><init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)V

    return-void
.end method

.method private aug()Lmf/org/apache/xerces/xni/Augmentations;
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    # getter for: Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;
    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$2(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    # getter for: Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lmf/org/apache/xerces/xni/Augmentations;
    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$2(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    .line 293
    .local v0, "r":Lmf/org/apache/xerces/xni/Augmentations;
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$3(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 297
    .end local v0    # "r":Lmf/org/apache/xerces/xni/Augmentations;
    :goto_0
    return-object v0

    .line 296
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->fAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    .line 297
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->fAugmentations:Lmf/org/apache/xerces/xni/Augmentations;

    goto :goto_0
.end method

.method private elementAug()Lmf/org/apache/xerces/xni/Augmentations;
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->aug()Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    .line 282
    .local v0, "aug":Lmf/org/apache/xerces/xni/Augmentations;
    return-object v0
.end method

.method private handler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v0

    return-object v0
.end method

.method private toQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/QName;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;

    .prologue
    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, "prefix":Ljava/lang/String;
    const/16 v2, 0x3a

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 326
    .local v0, "idx":I
    if-lez v0, :cond_0

    .line 327
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    const/4 v3, 0x0

    invoke-virtual {p3, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    # invokes: Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$4(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    # invokes: Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p2}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$4(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 330
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    # invokes: Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$4(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 331
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    # invokes: Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p1}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$4(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 334
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v2, v1, p2, p3, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->fQName:Lmf/org/apache/xerces/xni/QName;

    return-object v2
.end method

.method private toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;
    .locals 2
    .param p1, "xe"    # Lmf/org/apache/xerces/xni/XNIException;

    .prologue
    .line 312
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    if-nez v0, :cond_0

    move-object v0, p1

    .line 314
    :cond_0
    instance-of v1, v0, Lorg/xml/sax/SAXException;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/xml/sax/SAXException;

    .line 315
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 248
    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->handler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v1

    new-instance v2, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v2, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLString;-><init>([CII)V

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->aug()Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v1

    throw v1
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 273
    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->handler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->toQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v2

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->aug()Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v1

    throw v1
.end method

.method public ignorableWhitespace([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 256
    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->handler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v1

    new-instance v2, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v2, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLString;-><init>([CII)V

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->aug()Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v1

    throw v1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 264
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    # invokes: Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->updateAttributes(Lorg/xml/sax/Attributes;)V
    invoke-static {v1, p4}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$0(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;Lorg/xml/sax/Attributes;)V

    .line 265
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->handler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->toQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    # getter for: Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;
    invoke-static {v3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$1(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/xni/XMLAttributes;

    move-result-object v3

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->elementAug()Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v1

    throw v1
.end method
