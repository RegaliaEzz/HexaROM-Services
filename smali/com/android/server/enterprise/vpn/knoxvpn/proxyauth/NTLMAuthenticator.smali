.class public Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;
.super Ljava/lang/Object;
.source "NTLMAuthenticator.java"

# interfaces
.implements Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;


# static fields
.field private static final DBG:Z

.field private static final DEFAULT_CLIENT_FLAGS:I = 0x88207

.field private static final PROXY_AUTHENTICATION_HEADER_PREFIX:Ljava/lang/String; = "Proxy-Authorization: NTLM "

.field private static final TAG:Ljava/lang/String; = "NTLMAuthenticator"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 14
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildRequestString([Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4
    .param p1, "requestLine"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "HEAD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    array-length v1, p1

    if-le v1, v2, :cond_0

    aget-object v1, p1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    array-length v1, p1

    if-le v1, v2, :cond_1

    aget-object v1, p1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, "Proxy-Connection: keep-alive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    return-object v0

    .line 116
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    goto :goto_0

    .line 118
    :cond_1
    aget-object v1, p1, v3

    goto :goto_1
.end method

.method private getCredentialKeyValue(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "userCred"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/net/Socket;
    .param p3, "destination"    # Ljava/net/Socket;
    .param p4, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    if-eqz p1, :cond_0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getNTLMType3String(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "NTLMType3String":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 39
    const-string v2, "Proxy-Authorization: NTLM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    .end local v0    # "NTLMType3String":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 22
    .local v1, "byteBuffer":I
    if-gez v1, :cond_0

    .line 23
    const-string v2, ""

    .line 30
    :goto_0
    return-object v2

    .line 25
    :cond_0
    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 26
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 28
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 29
    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    if-gez v1, :cond_0

    .line 30
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getNTLMType3String(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "type2String"    # Ljava/lang/String;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v11, 0x0

    .local v11, "type3ReturnValue":Ljava/lang/String;
    const/4 v5, 0x0

    .line 179
    .local v5, "domainFromType2":Ljava/lang/String;
    const/4 v2, 0x0

    .line 181
    .local v2, "finalFlagsForType3":I
    :try_start_0
    new-instance v10, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;

    invoke-direct {v10, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;-><init>(Ljava/lang/String;)V

    .line 182
    .local v10, "type2Message":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;
    const/high16 v1, 0x10000

    invoke-virtual {v10, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->isFlagSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getTargetName()Ljava/lang/String;

    move-result-object v5

    .line 185
    :cond_0
    const v1, 0x88207

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getFlags()I

    move-result v3

    and-int v2, v1, v3

    .line 186
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getServerChallengeNonce()[B

    move-result-object v1

    const-string/jumbo v6, "localhost"

    const/4 v7, 0x1

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;-><init>([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    .local v0, "type3Message":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createMessageString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 194
    .end local v0    # "type3Message":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;
    .end local v10    # "type2Message":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;
    :goto_0
    return-object v11

    .line 189
    :catch_0
    move-exception v9

    .line 190
    .local v9, "ex":Ljava/io/IOException;
    const-string v1, "NTLMAuthenticator"

    const-string v3, "IOException in getNTLMType3String"

    invoke-static {v1, v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 191
    .end local v9    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 192
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "NTLMAuthenticator"

    const-string v3, "Exception in getNTLMType3String"

    invoke-static {v1, v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getNTLMType3String(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "userCred"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/net/Socket;
    .param p3, "destination"    # Ljava/net/Socket;
    .param p4, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 50
    :cond_0
    const/4 v3, 0x0

    .line 88
    :goto_0
    return-object v3

    .line 51
    :cond_1
    const/4 v13, 0x0

    .line 52
    .local v13, "out":Ljava/io/OutputStream;
    invoke-virtual/range {p3 .. p3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    .line 53
    new-instance v16, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;

    invoke-direct/range {v16 .. v16}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;-><init>()V

    .line 54
    .local v16, "type1Message":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->buildRequestString([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 55
    .local v15, "sb":Ljava/lang/StringBuilder;
    const-string v3, "Proxy-Authorization: NTLM "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->createMessageString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v3, "\r\n"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/io/OutputStream;->write([B)V

    .line 60
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 62
    const/16 v18, 0x0

    .line 63
    .local v18, "type2Response":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v14

    .line 64
    .local v14, "response":Ljava/lang/String;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 65
    const-string v3, " "

    invoke-virtual {v14, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 66
    .local v12, "lineTokens":[Ljava/lang/String;
    if-eqz v12, :cond_2

    array-length v3, v12

    if-lez v3, :cond_2

    .line 67
    const/4 v3, 0x1

    aget-object v3, v12, v3

    const-string v5, "407"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    invoke-virtual/range {p3 .. p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getNTLMTypeMessageFromResponse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v18

    .line 72
    .end local v12    # "lineTokens":[Ljava/lang/String;
    :cond_2
    if-eqz v18, :cond_7

    .line 73
    const/4 v7, 0x0

    .line 74
    .local v7, "domainFromType2":Ljava/lang/String;
    const/4 v4, 0x0

    .line 75
    .local v4, "finalFlagsForType3":I
    new-instance v17, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;

    invoke-direct/range {v17 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;-><init>(Ljava/lang/String;)V

    .line 76
    .local v17, "type2Message":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;
    const/high16 v3, 0x10000

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->isFlagSet(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 77
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getTargetName()Ljava/lang/String;

    move-result-object v7

    .line 79
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->getFlags()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getFlags()I

    move-result v5

    and-int v4, v3, v5

    .line 80
    new-instance v11, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>([B)V

    .line 82
    .local v11, "decodedCredentials":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v11, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 83
    .local v10, "credentials":[Ljava/lang/String;
    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getServerChallengeNonce()[B

    move-result-object v3

    array-length v5, v10

    if-lez v5, :cond_5

    const/4 v5, 0x0

    aget-object v5, v10, v5

    :goto_1
    array-length v6, v10

    if-lez v6, :cond_6

    const/4 v6, 0x1

    aget-object v6, v10, v6

    :goto_2
    const-string/jumbo v8, "localhost"

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;-><init>([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    .local v2, "type3Message":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "NTLMAuthenticator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getNTLMType3String Returning type 3 string = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createMessageString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createMessageString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 83
    .end local v2    # "type3Message":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;
    :cond_5
    const-string v5, ""

    goto :goto_1

    :cond_6
    const-string v6, ""

    goto :goto_2

    .line 88
    .end local v4    # "finalFlagsForType3":I
    .end local v7    # "domainFromType2":Ljava/lang/String;
    .end local v10    # "credentials":[Ljava/lang/String;
    .end local v11    # "decodedCredentials":Ljava/lang/String;
    .end local v17    # "type2Message":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private getNTLMTypeMessageFromResponse(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "type2Response":Ljava/lang/String;
    const/4 v0, 0x0

    .line 95
    .local v0, "line":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "Proxy-Authenticate:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->processResponseFromeServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 102
    return-object v1

    .line 100
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0
.end method

.method private processResponseFromeServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    .line 106
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "array":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "Proxy-Authenticate:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const-string v3, "NTLM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v2, v0

    if-le v2, v4, :cond_0

    aget-object v1, v0, v4

    goto :goto_0
.end method


# virtual methods
.method public getAuthHeaderKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "Proxy-Authorization: NTLM "

    return-object v0
.end method

.method public getCredentialsAppendedHeader(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "userCred"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/net/Socket;
    .param p3, "destination"    # Ljava/net/Socket;
    .param p4, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public verifyProxyAuthCredentials(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)Z
    .locals 9
    .param p1, "credentials"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/net/Socket;
    .param p3, "destination"    # Ljava/net/Socket;
    .param p4, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    const-string v6, "NTLMAuthenticator"

    const-string v7, ": In verifyProxyAuthCredentials in NTLM"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 131
    .local v2, "outputStream":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 132
    .local v0, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 133
    .local v4, "retStatus":Z
    invoke-virtual {p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 141
    invoke-virtual {p3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 142
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getCredentialKeyValue(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "processedHeaderCred":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "NTLMAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": In verifyProxyAuthCredentials: processedHeaderCred = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->buildRequestString([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 145
    if-eqz v3, :cond_1

    .line 146
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_1
    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->DBG:Z

    if-eqz v6, :cond_2

    const-string v6, "NTLMAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": In verifyProxyAuthCredentials. Full header = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 151
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 152
    const/4 v1, 0x0

    .line 154
    .local v1, "line":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 155
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->DBG:Z

    if-eqz v6, :cond_4

    const-string v6, "NTLMAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Line from server = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_6

    .line 162
    :goto_0
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "NTLMAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": In verifyProxyAuthCredentials retStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_5
    return v4

    .line 157
    :cond_6
    const-string v6, "HTTP/1."

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 158
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, "407"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 159
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->DBG:Z

    if-eqz v6, :cond_7

    const-string v6, "NTLMAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In verifyProxyAuthCredentials: retStatus= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_3

    goto :goto_0
.end method
