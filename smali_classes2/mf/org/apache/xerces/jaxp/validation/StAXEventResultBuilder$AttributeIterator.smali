.class final Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;
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
    name = "AttributeIterator"
.end annotation


# instance fields
.field fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

.field fEnd:I

.field fIndex:I

.field final synthetic this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;Lmf/org/apache/xerces/xni/XMLAttributes;I)V
    .locals 1
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "length"    # I

    .prologue
    .line 290
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fIndex:I

    .line 293
    iput p3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fEnd:I

    .line 294
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 297
    iget v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fIndex:I

    iget v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fEnd:I

    if-ge v0, v1, :cond_0

    .line 298
    const/4 v0, 0x1

    .line 301
    :goto_0
    return v0

    .line 300
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    .line 301
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 305
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 308
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    iget v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fIndex:I

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;
    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$0(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    .line 309
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$1(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/javax/xml/stream/XMLEventFactory;

    move-result-object v1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$0(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v0

    iget-object v2, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$0(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$0(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 311
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fAttrName:Lmf/org/apache/xerces/xni/QName;
    invoke-static {v3}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$0(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/org/apache/xerces/xni/QName;

    move-result-object v3

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    iget v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fIndex:I

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 309
    invoke-virtual {v1, v2, v0, v3, v4}, Lmf/javax/xml/stream/XMLEventFactory;->createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/Attribute;

    move-result-object v0

    return-object v0

    .line 310
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 315
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
