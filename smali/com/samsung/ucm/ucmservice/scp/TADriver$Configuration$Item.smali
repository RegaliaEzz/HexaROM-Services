.class Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;
.super Ljava/lang/Object;
.source "TADriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Item"
.end annotation


# instance fields
.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;


# direct methods
.method constructor <init>(Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;)V
    .locals 1

    .prologue
    .line 208
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->this$1:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method add(I)V
    .locals 4
    .param p1, "newItem"    # I

    .prologue
    .line 220
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 221
    .local v0, "entry":I
    if-ne v0, p1, :cond_0

    .line 225
    .end local v0    # "entry":I
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->mList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method isSupported(I)Z
    .locals 3
    .param p1, "t"    # I

    .prologue
    .line 212
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 213
    .local v0, "entry":I
    if-ne v0, p1, :cond_0

    .line 214
    const/4 v2, 0x1

    .line 216
    .end local v0    # "entry":I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
