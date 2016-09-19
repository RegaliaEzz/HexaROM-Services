.class public Lcom/sec/epdg/ipc/EpdgIilSsacInfo;
.super Ljava/lang/Object;
.source "EpdgIilSsacInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "[EPDGIILSSACINFO]"


# instance fields
.field private mVideoFactor:I

.field private mVideoTime:I

.field private mVoiceFactor:I

.field private mVoiceTime:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "voiceFactor"    # I
    .param p2, "voiceTime"    # I
    .param p3, "videoFactor"    # I
    .param p4, "videoTime"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->mVoiceFactor:I

    .line 12
    iput p2, p0, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->mVoiceTime:I

    .line 13
    iput p3, p0, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->mVideoFactor:I

    .line 14
    iput p4, p0, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->mVideoTime:I

    .line 15
    return-void
.end method


# virtual methods
.method public getVideoFactor()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->mVideoFactor:I

    return v0
.end method

.method public getVideoTime()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->mVideoTime:I

    return v0
.end method

.method public getVoiceFactor()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->mVoiceFactor:I

    return v0
.end method

.method public getVoiceTime()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;->mVoiceTime:I

    return v0
.end method
