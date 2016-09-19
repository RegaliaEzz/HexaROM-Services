.class final Lcom/android/server/am/MARsPolicyManager$Policy;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Policy"
.end annotation


# instance fields
.field final action:I

.field public enabled:Z

.field final name:Ljava/lang/String;

.field final num:I

.field final restriction:I

.field final targetCategory:I

.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V
    .locals 0
    .param p2, "_targetCategory"    # I
    .param p3, "_action"    # I
    .param p4, "_restriction"    # I
    .param p5, "_enabled"    # Z
    .param p6, "_name"    # Ljava/lang/String;
    .param p7, "_num"    # I

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p2, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->targetCategory:I

    .line 136
    iput p3, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    .line 137
    iput p4, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->restriction:I

    .line 138
    iput-boolean p5, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 139
    iput-object p6, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    .line 140
    iput p7, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    .line 141
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
