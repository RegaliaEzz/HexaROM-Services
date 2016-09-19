.class public Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;
.super Ljava/lang/Object;
.source "DSKPPProvision.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

.field private mXMLHandler:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mContext:Landroid/content/Context;

    .line 35
    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mXMLHandler:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    .line 36
    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    .line 39
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    .line 41
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mXMLHandler:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    .line 42
    return-void
.end method

.method private convertStringToAlgoType(Ljava/lang/String;)I
    .locals 2
    .param p1, "oathProtocol"    # Ljava/lang/String;

    .prologue
    .line 334
    if-nez p1, :cond_0

    .line 335
    const/16 v0, 0x401

    .line 343
    :goto_0
    return v0

    .line 337
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hotp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    const/16 v0, 0x100

    goto :goto_0

    .line 339
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "totp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    const/16 v0, 0x101

    goto :goto_0

    .line 341
    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ocra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    const/16 v0, 0x102

    goto :goto_0

    .line 343
    :cond_3
    const/16 v0, 0x404

    goto :goto_0
.end method

.method private prepareDataForDbStorage(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p1, "kp"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .param p2, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 225
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 227
    const-string v2, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v2, "DISPLAY_NAME"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->convertStringToAlgoType(Ljava/lang/String;)I

    move-result v0

    .line 230
    .local v0, "algoType":I
    const-string v2, "OTP_OATH_PROTOCOL"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    const/16 v2, 0x102

    if-ne v0, v2, :cond_1

    .line 232
    const-string v2, "OCRA_SUITE"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getSuite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_0
    :goto_0
    const-string v2, "DSKPPProvision::prepareDataForDbStorage KeyPackage Key is extracted"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 243
    .end local v0    # "algoType":I
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_1
    return-object v1

    .line 234
    .restart local v0    # "algoType":I
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    const/16 v2, 0x101

    if-ne v0, v2, :cond_0

    .line 235
    const-string v2, "OTP_PARAM"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getTimeInterval()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 238
    .end local v0    # "algoType":I
    :cond_2
    const-string v2, "DSKPPProvision::prepareDataForDbStorage - KeyPage does not contain any Key"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 239
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private prepareDataForSecureStorage(Ljava/lang/String;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvServerFinish;)Landroid/os/Bundle;
    .locals 10
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "kpsf"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    .param p3, "data"    # Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvServerFinish;

    .prologue
    .line 251
    const-string v7, "DSKPPProvision::prepareDataForSecureStorage Enter"

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 252
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 253
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    .line 255
    .local v2, "kp":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    if-eqz p1, :cond_0

    if-nez v2, :cond_2

    .line 256
    :cond_0
    const/4 v1, 0x0

    .line 330
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-object v1

    .line 258
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "oathProtocol":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->convertStringToAlgoType(Ljava/lang/String;)I

    move-result v0

    .line 262
    .local v0, "algoType":I
    const-string v7, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {v1, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getSuite()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 269
    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getSuite()Ljava/lang/String;

    move-result-object v5

    .line 270
    .local v5, "suite":Ljava/lang/String;
    const-string v7, "SHA1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 271
    const-string v7, "OTP_HASH_ALGO"

    const/16 v8, 0x170

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    .end local v5    # "suite":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getResponseFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 283
    const/16 v7, 0x102

    if-eq v0, v7, :cond_3

    .line 284
    const-string v7, "OTP_LENGTH"

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getResponseFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->getLength()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    :cond_3
    const-string v7, "OTP_ENCODING"

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getResponseFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->getEncoding()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    :cond_4
    const/16 v7, 0x100

    if-ne v0, v7, :cond_8

    .line 292
    const-string v7, "DSKPPProvision::prepareDataForSecureStorage creating hotp"

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 293
    const-string v7, "OTP_OATH_PROTOCOL"

    const/16 v8, 0x100

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 294
    const-string v7, "OTP_PARAM"

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getCounter()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 319
    :goto_2
    const-string v7, "SECRET_ENCRYPTION_ALGO"

    const/16 v8, 0x187

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    const-string v7, "DSKPP_CLIENT_MAC"

    invoke-virtual {p3}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvServerFinish;->getMsgHash()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 322
    const-string v7, "DSKPP_SERVER_ID"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->getServerId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->getCipherData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->getCipherValue()Ljava/lang/String;

    move-result-object v6

    .line 324
    .local v6, "temp":Ljava/lang/String;
    const-string v7, "DSKPP_KEY_PROV"

    const/4 v8, 0x0

    invoke-static {v6, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 325
    const-string v7, "DSKPP_KEY_CONFIRMATION_MAC"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getMACType()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;->getMac()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 327
    invoke-virtual {p3}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvServerFinish;->getPrevKeyMAC()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 328
    const-string v7, "DSKPP_PREV_KEY_MAC"

    invoke-virtual {p3}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvServerFinish;->getPrevKeyMAC()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 272
    .end local v6    # "temp":Ljava/lang/String;
    .restart local v5    # "suite":Ljava/lang/String;
    :cond_5
    const-string v7, "SHA256"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 273
    const-string v7, "OTP_HASH_ALGO"

    const/16 v8, 0x171

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 275
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DSKPPProvision::prepareDataForSecureStorage - Unknown/Unsupported Hash Algo ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 277
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 280
    .end local v5    # "suite":Ljava/lang/String;
    :cond_7
    const-string v7, "OTP_HASH_ALGO"

    const/16 v8, 0x170

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 296
    :cond_8
    const/16 v7, 0x101

    if-ne v0, v7, :cond_9

    .line 297
    const-string v7, "DSKPPProvision::prepareDataForSecureStorage creating totp"

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 298
    const-string v7, "OTP_OATH_PROTOCOL"

    const/16 v8, 0x101

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 299
    const-string v7, "OTP_PARAM"

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getTimeInterval()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_2

    .line 301
    :cond_9
    const/16 v7, 0x102

    if-ne v0, v7, :cond_c

    .line 302
    const-string v7, "DSKPPProvision::prepareDataForSecureStorage creating ocra"

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 303
    const-string v7, "OTP_OATH_PROTOCOL"

    const/16 v8, 0x102

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getSuite()Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "ocraSuite":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/enterprise/otp/OCRACheck;->isOcraSuiteValid(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v4}, Lcom/android/server/enterprise/otp/OCRACheck;->isOtpServiceSupportPresent(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_b

    .line 307
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 308
    :cond_b
    const-string v7, "OCRA_SUITE"

    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v7, "OTP_PARAM"

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getCounter()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_2

    .line 311
    .end local v4    # "ocraSuite":Ljava/lang/String;
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DSKPPProvision::prepareDataForSecureStorage - Unknown Oath Protocol ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 313
    const/4 v1, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public keyProvClientHello(Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;)Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;
    .locals 3
    .param p1, "trigger"    # Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;

    .prologue
    .line 45
    const-string v1, "DSKPPProvision::keyProvisionClientHello ENTER"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "callerPackage":Ljava/lang/String;
    const/16 v1, 0x50a

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;->getDskppVariant()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 50
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;->createSession(Ljava/lang/String;Z)Ljava/lang/String;

    .line 56
    :goto_0
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->keyProvClientHello(Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;)Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;

    move-result-object v1

    return-object v1

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;->createSession(Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_0
.end method

.method public keyProvisionClientNonce()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public keyProvisionServerFinish(Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvServerFinish;)Ljava/lang/String;
    .locals 17
    .param p1, "data"    # Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvServerFinish;

    .prologue
    .line 68
    const-string v15, "DSKPPProvision::keyProvisionServerFinish ENTER"

    invoke-static {v15}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 69
    const/4 v11, 0x0

    .line 70
    .local v11, "ret":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "callerPackage":Ljava/lang/String;
    new-instance v15, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    invoke-direct/range {v15 .. v16}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v4, v15, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 72
    .local v4, "containerId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;

    move-result-object v13

    .line 75
    .local v13, "sessionHandler":Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;
    const/16 v15, 0x353

    invoke-virtual {v13, v3, v15}, Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;->validateSession(Ljava/lang/String;I)Z

    move-result v15

    if-nez v15, :cond_0

    .line 76
    const-string v15, "DSKPPProvision::keyProvisionServerFinish - Invalid DSKPP Step"

    invoke-static {v15}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 77
    const/4 v14, 0x0

    .line 221
    :goto_0
    return-object v14

    .line 80
    :cond_0
    const/4 v8, 0x0

    .line 81
    .local v8, "internalTokenId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvServerFinish;->getDskppxml()Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "dskppBuffer":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v7, :cond_1

    .line 86
    const-string v15, "DSKPPProvision::keyProvisionServerFinish - Invalid DSKPP XML data provided"

    invoke-static {v15}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 87
    const/16 v11, 0x401

    .line 91
    :cond_1
    if-nez v11, :cond_2

    .line 94
    const-string v15, "WHITELISTED_PACKAGES"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 95
    const-string v15, "WHITELISTED_PKG_SIGNER_INFO"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mContext:Landroid/content/Context;

    invoke-static {v15, v3, v4, v2}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->setWhitelistAndSignerInfo(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v11

    .line 101
    :cond_2
    if-nez v11, :cond_3

    .line 103
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->generateTokenId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 106
    const-string v15, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {v2, v15, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v15, "TOKEN_STATE"

    const/16 v16, 0x300

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    const-string v15, "CONTAINER_ID"

    invoke-virtual {v2, v15, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    :cond_3
    const/4 v12, 0x0

    .line 113
    .local v12, "serverFinishData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    const/4 v9, 0x0

    .line 114
    .local v9, "kp":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    const/4 v6, 0x0

    .line 115
    .local v6, "dkp":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
    if-nez v11, :cond_4

    .line 116
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mXMLHandler:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v7}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->parseKeyProvServerFinishedXMLBuffer(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-result-object v12

    .line 119
    if-nez v12, :cond_e

    .line 120
    const/16 v11, 0x401

    .line 137
    :cond_4
    :goto_1
    if-nez v11, :cond_5

    .line 138
    invoke-virtual {v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getId()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_12

    .line 140
    const-string v15, "OTP_TOKEN_ID"

    invoke-virtual {v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-virtual {v15, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->storeProvisioningData(Landroid/os/Bundle;)I

    move-result v11

    .line 146
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DSKPPProvision::keyProvisionServerFinish - DBHandler.storeProvisioningData() ret = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 151
    :cond_5
    const/4 v5, 0x0

    .line 152
    .local v5, "dbBundle":Landroid/os/Bundle;
    if-nez v11, :cond_6

    .line 153
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->prepareDataForDbStorage(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 154
    if-nez v5, :cond_6

    .line 155
    const/16 v11, 0x4ff

    .line 156
    const-string v15, "DSKPPProvision::keyProvisionServerFinish - prepareDataForDbStorage bundle creation failed"

    invoke-static {v15}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 161
    :cond_6
    if-nez v11, :cond_7

    .line 162
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-virtual {v15, v5}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->storeOtpTokenData(Landroid/os/Bundle;)I

    move-result v11

    .line 163
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DSKPPProvision::keyProvisionServerFinish - DBHandler.storeOtpTokenData() ret ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 168
    :cond_7
    if-nez v11, :cond_9

    .line 169
    invoke-virtual {v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v15

    if-eqz v15, :cond_8

    invoke-virtual {v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 170
    const-string v15, "NUM_TRANSACTIONS"

    invoke-virtual {v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getNoOfTransactions()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    const-string v15, "TOKEN_EXPIRY"

    invoke-virtual {v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getExpiryDate()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-virtual {v15, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->setOtpTokenPolicies(Landroid/os/Bundle;)I

    move-result v11

    .line 175
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DSKPPProvision::keyProvisionServerFinish - DBHandler.setOtpTokenPolicies() ret ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 180
    :cond_9
    const/4 v5, 0x0

    .line 181
    if-nez v11, :cond_a

    .line 182
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v12, v1}, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->prepareDataForSecureStorage(Ljava/lang/String;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvServerFinish;)Landroid/os/Bundle;

    move-result-object v5

    .line 183
    :cond_a
    if-nez v5, :cond_b

    .line 184
    const/16 v11, 0x4ff

    .line 185
    const-string v15, "DSKPPProvision::keyProvisionServerFinish - prepareDataForSecureStorage bundle creation failed"

    invoke-static {v15}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 194
    :cond_b
    if-nez v11, :cond_c

    .line 195
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->keyProvServerFinish(Landroid/os/Bundle;)I

    move-result v11

    .line 196
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DSKPPProvision::keyProvisionServerFinish  - TlcHandler.createToken() ret = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 201
    :cond_c
    if-nez v11, :cond_d

    .line 202
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    const/16 v16, 0x301

    move/from16 v0, v16

    invoke-virtual {v15, v8, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->setTokenState(Ljava/lang/String;I)I

    move-result v11

    .line 203
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DSKPPProvision::keyProvisionServerFinish - Token Activated. [ret = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 208
    :cond_d
    invoke-virtual {v13, v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;->deleteSession(Ljava/lang/String;)Z

    .line 211
    const/4 v14, 0x0

    .line 212
    .local v14, "vendorTokenId":Ljava/lang/String;
    if-nez v11, :cond_13

    .line 213
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mContext:Landroid/content/Context;

    const-string v16, "OTP Token created successfully"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/otp/engine/common/Print;->showUserToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-virtual {v15, v8}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getVendorTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 123
    .end local v5    # "dbBundle":Landroid/os/Bundle;
    .end local v14    # "vendorTokenId":Ljava/lang/String;
    :cond_e
    invoke-virtual {v12}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v6

    .line 124
    if-nez v6, :cond_f

    .line 125
    const/16 v11, 0x401

    goto/16 :goto_1

    .line 127
    :cond_f
    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v10

    .line 128
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;>;"
    if-eqz v10, :cond_10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ge v15, v0, :cond_11

    .line 129
    :cond_10
    const/16 v11, 0x401

    goto/16 :goto_1

    .line 131
    :cond_11
    const/4 v15, 0x0

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "kp":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    check-cast v9, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    .restart local v9    # "kp":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto/16 :goto_1

    .line 143
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;>;"
    :cond_12
    const-string v15, "OTP_TOKEN_ID"

    invoke-virtual {v2, v15, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 217
    .restart local v5    # "dbBundle":Landroid/os/Bundle;
    .restart local v14    # "vendorTokenId":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mContext:Landroid/content/Context;

    const-string v16, "OTP Token creation failed"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/otp/engine/common/Print;->showUserToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v15

    invoke-virtual {v15, v8}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->deleteToken(Ljava/lang/String;)I

    .line 219
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-virtual {v15, v8}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->removeOtpToken(Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public keyProvisionServerHello()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
