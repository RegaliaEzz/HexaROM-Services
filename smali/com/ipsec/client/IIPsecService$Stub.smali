.class public abstract Lcom/ipsec/client/IIPsecService$Stub;
.super Landroid/os/Binder;
.source "IIPsecService.java"

# interfaces
.implements Lcom/ipsec/client/IIPsecService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IIPsecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ipsec/client/IIPsecService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ipsec.client.IIPsecService"

.field static final TRANSACTION_checkConnection:I = 0xa

.field static final TRANSACTION_clearLog:I = 0x4

.field static final TRANSACTION_connect:I = 0x5

.field static final TRANSACTION_connectionQuery:I = 0x8

.field static final TRANSACTION_connectionState:I = 0x9

.field static final TRANSACTION_disconnect:I = 0x6

.field static final TRANSACTION_getLog:I = 0x3

.field static final TRANSACTION_isConnected:I = 0x7

.field static final TRANSACTION_registerCallback:I = 0xd

.field static final TRANSACTION_sendKeepalive:I = 0xb

.field static final TRANSACTION_setQueryData:I = 0xc

.field static final TRANSACTION_startService:I = 0x1

.field static final TRANSACTION_stopService:I = 0x2

.field static final TRANSACTION_unregisterCallback:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ipsec.client.IIPsecService"

    invoke-virtual {p0, p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ipsec/client/IIPsecService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.ipsec.client.IIPsecService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ipsec/client/IIPsecService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/ipsec/client/IIPsecService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/ipsec/client/IIPsecService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/ipsec/client/IIPsecService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 316
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 55
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->startService(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 56
    .local v1, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 53
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_1

    .line 62
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_2
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 76
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->stopService(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 77
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v1, :cond_3

    .line 79
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 74
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_2

    .line 83
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_3
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 92
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 97
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->getLog(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 98
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v1, :cond_5

    .line 100
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 95
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_3

    .line 104
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 110
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_4
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 113
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 118
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->clearLog(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 119
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v1, :cond_7

    .line 121
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 116
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_4

    .line 125
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_5
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 134
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 139
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->connect(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 140
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v1, :cond_9

    .line 142
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 137
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_5

    .line 146
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 152
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_6
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 155
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 160
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_6
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->disconnect(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 161
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v1, :cond_b

    .line 163
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 158
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_6

    .line 167
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 173
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_7
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 176
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 181
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->isConnected(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 182
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v1, :cond_d

    .line 184
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 179
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_7

    .line 188
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 194
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_8
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 197
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 202
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_8
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->connectionQuery(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 203
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v1, :cond_f

    .line 205
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 200
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_8

    .line 209
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_f
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 215
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_9
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    .line 218
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 223
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_9
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->connectionState(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 224
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v1, :cond_11

    .line 226
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 221
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_9

    .line 230
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_11
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 236
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_a
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    .line 239
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 244
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_a
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->checkConnection(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 245
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    if-eqz v1, :cond_13

    .line 247
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 242
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_12
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_a

    .line 251
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_13
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 257
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_b
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    .line 260
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 265
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_b
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->sendKeepalive(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 266
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v1, :cond_15

    .line 268
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 263
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_14
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_b

    .line 272
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_15
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 278
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_c
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    .line 281
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 286
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_c
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->setQueryData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 287
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    if-eqz v1, :cond_17

    .line 289
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 284
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_16
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_c

    .line 293
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_17
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 299
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_d
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/ipsec/client/IIPsecServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ipsec/client/IIPsecServiceCallback;

    move-result-object v0

    .line 302
    .local v0, "_arg0":Lcom/ipsec/client/IIPsecServiceCallback;
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->registerCallback(Lcom/ipsec/client/IIPsecServiceCallback;)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 308
    .end local v0    # "_arg0":Lcom/ipsec/client/IIPsecServiceCallback;
    :sswitch_e
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/ipsec/client/IIPsecServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ipsec/client/IIPsecServiceCallback;

    move-result-object v0

    .line 311
    .restart local v0    # "_arg0":Lcom/ipsec/client/IIPsecServiceCallback;
    invoke-virtual {p0, v0}, Lcom/ipsec/client/IIPsecService$Stub;->unregisterCallback(Lcom/ipsec/client/IIPsecServiceCallback;)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
