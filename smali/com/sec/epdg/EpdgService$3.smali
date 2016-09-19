.class Lcom/sec/epdg/EpdgService$3;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Lcom/samsung/commonimsinterface/imscommon/IIMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$3;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "action"    # I
    .param p3, "param"    # Lcom/samsung/commonimsinterface/imscommon/IMSParameter;

    .prologue
    .line 1190
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    sparse-switch p2, :sswitch_data_0

    .line 1201
    :goto_0
    :sswitch_0
    return-void

    .line 1193
    :sswitch_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$3;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->handleImsStateChange(I)V
    invoke-static {v0, p2}, Lcom/sec/epdg/EpdgService;->access$1000(Lcom/sec/epdg/EpdgService;I)V

    goto :goto_0

    .line 1191
    nop

    :sswitch_data_0
    .sparse-switch
        0x3fd -> :sswitch_1
        0x401 -> :sswitch_0
    .end sparse-switch
.end method
