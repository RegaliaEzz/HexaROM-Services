.class public Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;
.super Ljava/lang/Object;
.source "XPath.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/XPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeTest"
.end annotation


# static fields
.field public static final NAMESPACE:S = 0x4s

.field public static final NODE:S = 0x3s

.field public static final QNAME:S = 0x1s

.field public static final WILDCARD:S = 0x2s


# instance fields
.field public final name:Lmf/org/apache/xerces/xni/QName;

.field public final type:S


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    .line 615
    const/4 v0, 0x4

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->type:S

    .line 616
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p1, v1, v1, p2}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;)V
    .locals 2
    .param p1, "nodeTest"    # Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    .prologue
    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    .line 621
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->type:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->type:S

    .line 622
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 623
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/QName;)V
    .locals 1
    .param p1, "name"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    .line 610
    const/4 v0, 0x1

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->type:S

    .line 611
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 612
    return-void
.end method

.method public constructor <init>(S)V
    .locals 1
    .param p1, "type"    # S

    .prologue
    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    .line 605
    iput-short p1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->type:S

    .line 606
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 664
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x7d

    const/16 v2, 0x3a

    .line 632
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->type:S

    packed-switch v0, :pswitch_data_0

    .line 658
    const-string v0, "???"

    :goto_0
    return-object v0

    .line 634
    :pswitch_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 638
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 640
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    goto :goto_0

    .line 643
    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 644
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 647
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 649
    :cond_3
    const-string v0, "???:*"

    goto/16 :goto_0

    .line 652
    :pswitch_2
    const-string v0, "*"

    goto/16 :goto_0

    .line 655
    :pswitch_3
    const-string v0, "node()"

    goto/16 :goto_0

    .line 632
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
