.class public Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;
.super Ljava/lang/Object;
.source "EpdgRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IilSsacUpdate"
.end annotation


# instance fields
.field private final mVideoFactor:I

.field private final mVideoTime:I

.field private final mVoiceFactor:I

.field private final mVoiceTime:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "voiceFactor"    # I
    .param p2, "voiceTime"    # I
    .param p3, "videoFactor"    # I
    .param p4, "videoTime"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;->mVoiceFactor:I

    .line 92
    iput p2, p0, Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;->mVoiceTime:I

    .line 93
    iput p3, p0, Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;->mVideoFactor:I

    .line 94
    iput p4, p0, Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;->mVideoTime:I

    .line 95
    return-void
.end method


# virtual methods
.method public getVideoFactor()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;->mVoiceFactor:I

    return v0
.end method

.method public getVideoTime()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;->mVoiceFactor:I

    return v0
.end method

.method public getVoiceFactor()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;->mVoiceFactor:I

    return v0
.end method

.method public getVoiceTime()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;->mVoiceFactor:I

    return v0
.end method
