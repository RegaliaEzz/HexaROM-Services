.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;
.super Ljava/lang/Object;
.source "AuthenticationData.java"


# instance fields
.field private mAuthenticationCodeMAC:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

.field private mClientID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->mAuthenticationCodeMAC:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    return-object v0
.end method

.method public getClientID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->mClientID:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthenticationCodeMAC(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;)V
    .locals 0
    .param p1, "mAuthenticationCodeMAC"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->mAuthenticationCodeMAC:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    .line 24
    return-void
.end method

.method public setClientID(Ljava/lang/String;)V
    .locals 0
    .param p1, "mClientID"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->mClientID:Ljava/lang/String;

    .line 16
    return-void
.end method
