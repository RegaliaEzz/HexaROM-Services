.class final Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;
.super Ljava/lang/Object;
.source "StAXEventResultBuilder.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NamespaceIterator"
.end annotation


# instance fields
.field fEnd:I

.field fIndex:I

.field fNC:Lmf/javax/xml/namespace/NamespaceContext;

.field final synthetic this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;I)V
    .locals 1
    .param p2, "length"    # I

    .prologue
    .line 329
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;
    invoke-static {p1}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fNC:Lmf/javax/xml/namespace/NamespaceContext;

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fIndex:I

    .line 332
    iput p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fEnd:I

    .line 333
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 336
    iget v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fIndex:I

    iget v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fEnd:I

    if-ge v0, v1, :cond_0

    .line 337
    const/4 v0, 0x1

    .line 340
    :goto_0
    return v0

    .line 339
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fNC:Lmf/javax/xml/namespace/NamespaceContext;

    .line 340
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 344
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 345
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 347
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;
    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v2

    iget v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fIndex:I

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "prefix":Ljava/lang/String;
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fNC:Lmf/javax/xml/namespace/NamespaceContext;

    invoke-interface {v2, v0}, Lmf/javax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "uri":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 350
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;
    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$1(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/javax/xml/stream/XMLEventFactory;

    move-result-object v2

    if-eqz v1, :cond_1

    .end local v1    # "uri":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v1}, Lmf/javax/xml/stream/XMLEventFactory;->createNamespace(Ljava/lang/String;)Lmf/javax/xml/stream/events/Namespace;

    move-result-object v2

    .line 353
    :goto_1
    return-object v2

    .line 350
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 353
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;
    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$1(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/javax/xml/stream/XMLEventFactory;

    move-result-object v2

    if-eqz v1, :cond_3

    .end local v1    # "uri":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0, v1}, Lmf/javax/xml/stream/XMLEventFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/Namespace;

    move-result-object v2

    goto :goto_1

    .restart local v1    # "uri":Ljava/lang/String;
    :cond_3
    const-string v1, ""

    goto :goto_2
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 358
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
