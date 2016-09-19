.class public final enum Lcom/sec/epdg/EpdgConstants$TriState;
.super Ljava/lang/Enum;
.source "EpdgConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TriState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/EpdgConstants$TriState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/EpdgConstants$TriState;

.field public static final enum TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

.field public static final enum TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

.field public static final enum TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;


# instance fields
.field private mText:Ljava/lang/String;

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/sec/epdg/EpdgConstants$TriState;

    const-string v1, "TRI_UNKNOWN"

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sec/epdg/EpdgConstants$TriState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    .line 9
    new-instance v0, Lcom/sec/epdg/EpdgConstants$TriState;

    const-string v1, "TRI_FALSE"

    const-string v2, "FALSE"

    invoke-direct {v0, v1, v5, v4, v2}, Lcom/sec/epdg/EpdgConstants$TriState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    .line 10
    new-instance v0, Lcom/sec/epdg/EpdgConstants$TriState;

    const-string v1, "TRI_TRUE"

    const-string v2, "TRUE"

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/sec/epdg/EpdgConstants$TriState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/epdg/EpdgConstants$TriState;

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/epdg/EpdgConstants$TriState;->$VALUES:[Lcom/sec/epdg/EpdgConstants$TriState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/sec/epdg/EpdgConstants$TriState;->mValue:I

    .line 17
    iput-object p4, p0, Lcom/sec/epdg/EpdgConstants$TriState;->mText:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static get(I)Lcom/sec/epdg/EpdgConstants$TriState;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 21
    sget-object v0, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    .line 22
    .local v0, "ret":Lcom/sec/epdg/EpdgConstants$TriState;
    packed-switch p0, :pswitch_data_0

    .line 32
    :goto_0
    return-object v0

    .line 24
    :pswitch_0
    sget-object v0, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    .line 25
    goto :goto_0

    .line 27
    :pswitch_1
    sget-object v0, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    .line 28
    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/EpdgConstants$TriState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/EpdgConstants$TriState;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/EpdgConstants$TriState;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/sec/epdg/EpdgConstants$TriState;->$VALUES:[Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-virtual {v0}, [Lcom/sec/epdg/EpdgConstants$TriState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/EpdgConstants$TriState;

    return-object v0
.end method


# virtual methods
.method protected getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/epdg/EpdgConstants$TriState;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/epdg/EpdgConstants$TriState;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/epdg/EpdgConstants$TriState;->mText:Ljava/lang/String;

    return-object v0
.end method
