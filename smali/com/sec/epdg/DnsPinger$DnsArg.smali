.class Lcom/sec/epdg/DnsPinger$DnsArg;
.super Ljava/lang/Object;
.source "DnsPinger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DnsPinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DnsArg"
.end annotation


# instance fields
.field dns:Ljava/net/InetAddress;

.field network:Landroid/net/Network;

.field seq:I

.field final synthetic this$0:Lcom/sec/epdg/DnsPinger;


# direct methods
.method constructor <init>(Lcom/sec/epdg/DnsPinger;Ljava/net/InetAddress;Landroid/net/Network;I)V
    .locals 0
    .param p2, "d"    # Ljava/net/InetAddress;
    .param p3, "n"    # Landroid/net/Network;
    .param p4, "s"    # I

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/epdg/DnsPinger$DnsArg;->this$0:Lcom/sec/epdg/DnsPinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/sec/epdg/DnsPinger$DnsArg;->dns:Ljava/net/InetAddress;

    .line 116
    iput p4, p0, Lcom/sec/epdg/DnsPinger$DnsArg;->seq:I

    .line 117
    iput-object p3, p0, Lcom/sec/epdg/DnsPinger$DnsArg;->network:Landroid/net/Network;

    .line 118
    return-void
.end method
