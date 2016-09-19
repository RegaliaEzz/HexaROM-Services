.class public Lcom/samsung/appdisabler/ImsiItem;
.super Ljava/lang/Object;
.source "ImsiItem.java"


# static fields
.field private static final HEX_PART:Ljava/lang/String; = "0x"


# instance fields
.field private addShortcutToScreen:Z

.field private final errorStringBuilder:Ljava/lang/StringBuilder;

.field private forceApplicationTurnOff:Z

.field private final gid1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hideAfterTimeout:Z

.field private final imsiNumericBase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/appdisabler/ImsiNumeric;",
            ">;"
        }
    .end annotation
.end field

.field private final networkNumeric:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final packageToHide:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final simNumeric:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final simSpn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->packageToHide:Ljava/util/Set;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->simNumeric:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->imsiNumericBase:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->simSpn:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->networkNumeric:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->gid1:Ljava/util/List;

    .line 24
    iput-boolean v1, p0, Lcom/samsung/appdisabler/ImsiItem;->addShortcutToScreen:Z

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/appdisabler/ImsiItem;->hideAfterTimeout:Z

    .line 26
    iput-boolean v1, p0, Lcom/samsung/appdisabler/ImsiItem;->forceApplicationTurnOff:Z

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private checkStringToBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "booleanValue"    # Ljava/lang/String;
    .param p2, "propertyName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 354
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 355
    .local v0, "valueToCheck":Z
    if-eqz v0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v1

    .line 358
    :cond_1
    const-string/jumbo v2, "false"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 361
    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can be only \"true\" or \"false\" not: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isElementEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "elementValue"    # Ljava/lang/String;
    .param p2, "elementName"    # Ljava/lang/String;

    .prologue
    .line 331
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " can\'t be empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x1

    .line 339
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private normalizeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "simImsi"    # Ljava/lang/String;
    .param p2, "imsiToNormalize"    # Ljava/lang/String;

    .prologue
    .line 304
    const/4 v2, 0x0

    .line 305
    .local v2, "normalizeImsi":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 306
    .local v4, "size":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 307
    .local v5, "sizeItem":I
    sub-int v0, v4, v5

    .line 308
    .local v0, "diff":I
    if-lez v0, :cond_1

    .line 309
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 310
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 311
    const-string v6, "9"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    .end local v1    # "i":I
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    return-object v2
.end method

.method private normalizeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "simImsi"    # Ljava/lang/String;
    .param p2, "imsiToNormalize"    # Ljava/lang/String;

    .prologue
    .line 280
    const/4 v2, 0x0

    .line 281
    .local v2, "normalizeImsi":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 282
    .local v4, "size":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 283
    .local v5, "sizeItem":I
    sub-int v0, v4, v5

    .line 284
    .local v0, "diff":I
    if-lez v0, :cond_1

    .line 285
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 286
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 287
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 292
    .end local v1    # "i":I
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    return-object v2
.end method

.method private stringToInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 262
    const/4 v1, -0x1

    .line 265
    .local v1, "intValue":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 270
    :goto_0
    return v1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException int value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stringToLong(Ljava/lang/String;)J
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 249
    const-wide/16 v2, -0x1

    .line 252
    .local v2, "intValue":J
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 257
    :goto_0
    return-wide v2

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberFormatException value: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public appendErrorMsg(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    return-void
.end method

.method public getGid1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->gid1:Ljava/util/List;

    return-object v0
.end method

.method public getImsiNumericBase()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/appdisabler/ImsiNumeric;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->imsiNumericBase:Ljava/util/List;

    return-object v0
.end method

.method public getNetworkNumeric()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->networkNumeric:Ljava/util/List;

    return-object v0
.end method

.method public getPackageToHide()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->packageToHide:Ljava/util/Set;

    return-object v0
.end method

.method public getSimNumeric()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->simNumeric:Ljava/util/List;

    return-object v0
.end method

.method public getSimSpn()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->simSpn:Ljava/util/List;

    return-object v0
.end method

.method public isAddShortcutToScreen()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/samsung/appdisabler/ImsiItem;->addShortcutToScreen:Z

    return v0
.end method

.method public isForceApplicationTurnOff()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/samsung/appdisabler/ImsiItem;->forceApplicationTurnOff:Z

    return v0
.end method

.method public isHideAfterTimeout()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/samsung/appdisabler/ImsiItem;->hideAfterTimeout:Z

    return v0
.end method

.method public looseCompare(Ljava/lang/String;)Z
    .locals 28
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    const/16 v23, 0x0

    .line 244
    :goto_0
    return v23

    .line 176
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->imsiNumericBase:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->imsiNumericBase:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-nez v23, :cond_2

    .line 177
    :cond_1
    const/16 v23, 0x0

    goto :goto_0

    .line 180
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->imsiNumericBase:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/appdisabler/ImsiNumeric;

    .line 181
    .local v18, "singleImsiNumericBase":Lcom/samsung/appdisabler/ImsiNumeric;
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/appdisabler/ImsiNumeric;->getImsiRangeStart()Ljava/lang/String;

    move-result-object v8

    .line 182
    .local v8, "imsiRangeStart":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/appdisabler/ImsiNumeric;->getImsiRangeEnd()Ljava/lang/String;

    move-result-object v7

    .line 183
    .local v7, "imsiRangeEnd":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/appdisabler/ImsiNumeric;->getImsiNumericBase()Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "imsiNumericBase":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 186
    .local v22, "xmlImsiStart":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 187
    .local v19, "xmlImsiEnd":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/appdisabler/ImsiNumeric;->isUsingMvno()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 188
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/appdisabler/ImsiNumeric;->getImsiNumericBase()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    .line 190
    .local v4, "baseLength":I
    add-int/lit8 v23, v4, 0x3

    add-int/lit8 v26, v4, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 191
    .local v16, "simMvno":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 193
    .local v12, "simBase":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/appdisabler/ImsiItem;->stringToInt(Ljava/lang/String;)I

    move-result v13

    .line 194
    .local v13, "simBaseInt":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/samsung/appdisabler/ImsiItem;->stringToInt(Ljava/lang/String;)I

    move-result v9

    .line 195
    .local v9, "itemBaseInt":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v13, v0, :cond_4

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v9, v0, :cond_5

    .line 196
    :cond_4
    const-string v23, "Parse error in mvno base"

    invoke-static/range {v23 .. v23}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 197
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 200
    :cond_5
    if-ne v13, v9, :cond_3

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/appdisabler/ImsiItem;->stringToInt(Ljava/lang/String;)I

    move-result v17

    .line 206
    .local v17, "simMvnoInt":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/appdisabler/ImsiItem;->stringToInt(Ljava/lang/String;)I

    move-result v11

    .line 207
    .local v11, "mvnoStart":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/appdisabler/ImsiItem;->stringToInt(Ljava/lang/String;)I

    move-result v10

    .line 208
    .local v10, "mvnoEnd":I
    const/16 v23, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v11, v0, :cond_6

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_7

    .line 209
    :cond_6
    const-string v23, "Parse error in mvno range"

    invoke-static/range {v23 .. v23}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 210
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 213
    :cond_7
    move/from16 v0, v17

    if-gt v11, v0, :cond_3

    move/from16 v0, v17

    if-gt v0, v10, :cond_3

    .line 214
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Imsi mvno base: "

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, " equal XML: "

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, ". PASS!"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 215
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 217
    .end local v4    # "baseLength":I
    .end local v9    # "itemBaseInt":I
    .end local v10    # "mvnoEnd":I
    .end local v11    # "mvnoStart":I
    .end local v12    # "simBase":Ljava/lang/String;
    .end local v13    # "simBaseInt":I
    .end local v16    # "simMvno":Ljava/lang/String;
    .end local v17    # "simMvnoInt":I
    :cond_8
    if-nez v7, :cond_9

    .line 219
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 220
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Imsi numeric base: "

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, " equal XML: "

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, ". PASS!"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 221
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 225
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/appdisabler/ImsiItem;->normalizeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 226
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/appdisabler/ImsiItem;->normalizeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 227
    if-eqz v22, :cond_a

    if-nez v19, :cond_b

    .line 228
    :cond_a
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 230
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/samsung/appdisabler/ImsiItem;->stringToLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 231
    .local v14, "simImsi":J
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/appdisabler/ImsiItem;->stringToLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 232
    .local v24, "xmlImsiStartInt":J
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/appdisabler/ImsiItem;->stringToLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 234
    .local v20, "xmlImsiEndInt":J
    const-wide/16 v26, -0x1

    cmp-long v23, v14, v26

    if-eqz v23, :cond_c

    const-wide/16 v26, -0x1

    cmp-long v23, v24, v26

    if-eqz v23, :cond_c

    const-wide/16 v26, -0x1

    cmp-long v23, v20, v26

    if-nez v23, :cond_d

    .line 235
    :cond_c
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 237
    :cond_d
    cmp-long v23, v24, v14

    if-gtz v23, :cond_3

    cmp-long v23, v14, v20

    if-gtz v23, :cond_3

    .line 238
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Imsi numeric base: "

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, " equal XML: "

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, ". PASS!"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 239
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 244
    .end local v6    # "imsiNumericBase":Ljava/lang/String;
    .end local v7    # "imsiRangeEnd":Ljava/lang/String;
    .end local v8    # "imsiRangeStart":Ljava/lang/String;
    .end local v14    # "simImsi":J
    .end local v18    # "singleImsiNumericBase":Lcom/samsung/appdisabler/ImsiNumeric;
    .end local v19    # "xmlImsiEnd":Ljava/lang/String;
    .end local v20    # "xmlImsiEndInt":J
    .end local v22    # "xmlImsiStart":Ljava/lang/String;
    .end local v24    # "xmlImsiStartInt":J
    :cond_e
    const/16 v23, 0x0

    goto/16 :goto_0
.end method

.method public setAddShortcutToScreen(Ljava/lang/String;)V
    .locals 1
    .param p1, "addShortcutToScreen"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v0, "add_shortcut_to_homescreen"

    invoke-direct {p0, p1, v0}, Lcom/samsung/appdisabler/ImsiItem;->isElementEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const-string v0, "add_shortcut_to_homescreen"

    invoke-direct {p0, p1, v0}, Lcom/samsung/appdisabler/ImsiItem;->checkStringToBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/appdisabler/ImsiItem;->addShortcutToScreen:Z

    goto :goto_0
.end method

.method public setForceApplicationTurnOff(Ljava/lang/String;)V
    .locals 1
    .param p1, "forceApplicationTurnOff"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string/jumbo v0, "force_application_turn_off"

    invoke-direct {p0, p1, v0}, Lcom/samsung/appdisabler/ImsiItem;->isElementEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const-string/jumbo v0, "force_application_turn_off"

    invoke-direct {p0, p1, v0}, Lcom/samsung/appdisabler/ImsiItem;->checkStringToBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/appdisabler/ImsiItem;->forceApplicationTurnOff:Z

    goto :goto_0
.end method

.method public setGid1(Ljava/lang/String;)V
    .locals 1
    .param p1, "gid1"    # Ljava/lang/String;

    .prologue
    .line 501
    const-string/jumbo v0, "sim_gid1"

    invoke-direct {p0, p1, v0}, Lcom/samsung/appdisabler/ImsiItem;->isElementEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->gid1:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_0
    return-void
.end method

.method public setHideAfterTimeout(Ljava/lang/String;)V
    .locals 1
    .param p1, "hideAfterTimeout"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string/jumbo v0, "hide_after_timeout"

    invoke-direct {p0, p1, v0}, Lcom/samsung/appdisabler/ImsiItem;->isElementEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const-string/jumbo v0, "hide_after_timeout"

    invoke-direct {p0, p1, v0}, Lcom/samsung/appdisabler/ImsiItem;->checkStringToBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/appdisabler/ImsiItem;->hideAfterTimeout:Z

    goto :goto_0
.end method

.method public setImsiNumericBase(Lcom/samsung/appdisabler/ImsiNumeric;)V
    .locals 2
    .param p1, "imsiNumericBase"    # Lcom/samsung/appdisabler/ImsiNumeric;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->simNumeric:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const-string v0, "can\'t use imsi_numeric_base and sim_numeric in one item"

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "can\'t use imsi_numeric_base and sim_numeric in one item"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->imsiNumericBase:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setNetworkNumeric(Ljava/lang/String;)V
    .locals 1
    .param p1, "networkNumeric"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string/jumbo v0, "network_numeric"

    invoke-direct {p0, p1, v0}, Lcom/samsung/appdisabler/ImsiItem;->isElementEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->networkNumeric:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setPackageToHide(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageToHide"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string/jumbo v0, "package_to_hide"

    invoke-direct {p0, p1, v0}, Lcom/samsung/appdisabler/ImsiItem;->isElementEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->packageToHide:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setSimNumeric(Ljava/lang/String;)V
    .locals 2
    .param p1, "simNumeric"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string/jumbo v0, "sim_numeric"

    invoke-direct {p0, p1, v0}, Lcom/samsung/appdisabler/ImsiItem;->isElementEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->imsiNumericBase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    const-string v0, "can\'t use imsi_numeric_base and sim_numeric in one item"

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "can\'t use imsi_numeric_base and sim_numeric in one item"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->simNumeric:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setSimSpn(Ljava/lang/String;)V
    .locals 1
    .param p1, "simSpn"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string/jumbo v0, "sim_spn"

    invoke-direct {p0, p1, v0}, Lcom/samsung/appdisabler/ImsiItem;->isElementEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->simSpn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsiItem ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->packageToHide:Ljava/util/Set;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packageToHide="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/appdisabler/ImsiItem;->packageToHide:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->simNumeric:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simNumeric="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/appdisabler/ImsiItem;->simNumeric:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->imsiNumericBase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imsiNumericBase="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/appdisabler/ImsiItem;->imsiNumericBase:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->simSpn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simSpn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/appdisabler/ImsiItem;->simSpn:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->gid1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gid1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/appdisabler/ImsiItem;->gid1:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItem;->networkNumeric:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "networkNumeric="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/appdisabler/ImsiItem;->networkNumeric:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "addShortcutToScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/appdisabler/ImsiItem;->addShortcutToScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hideAfterTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/appdisabler/ImsiItem;->hideAfterTimeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceApplicationTurnOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/appdisabler/ImsiItem;->forceApplicationTurnOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto/16 :goto_0

    :cond_1
    const-string v0, ""

    goto/16 :goto_1

    :cond_2
    const-string v0, ""

    goto/16 :goto_2

    :cond_3
    const-string v0, ""

    goto/16 :goto_3

    :cond_4
    const-string v0, ""

    goto :goto_4

    :cond_5
    const-string v0, ""

    goto :goto_5
.end method

.method public validate()Ljava/lang/String;
    .locals 25

    .prologue
    .line 377
    const-string v11, "[0-9]{5,6}"

    .line 378
    .local v11, "numericMatchPattern":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->simNumeric:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 379
    .local v14, "simNumericTemp":Ljava/lang/String;
    if-eqz v14, :cond_0

    invoke-virtual {v14, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " is not valid SIM numeric"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is not valid SIM numeric"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    .end local v14    # "simNumericTemp":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->networkNumeric:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 387
    .local v10, "networkNumericTemp":Ljava/lang/String;
    if-eqz v10, :cond_2

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " is not valid network numeric"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is not valid network numeric"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    goto :goto_1

    .line 394
    .end local v10    # "networkNumericTemp":Ljava/lang/String;
    :cond_3
    const/4 v15, 0x0

    .line 395
    .local v15, "tempImsiBase":Ljava/lang/String;
    const/16 v19, 0x0

    .line 396
    .local v19, "tempImsiRangeStart":Ljava/lang/String;
    const/16 v18, 0x0

    .line 397
    .local v18, "tempImsiRangeEnd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->imsiNumericBase:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/appdisabler/ImsiNumeric;

    .line 398
    .local v20, "tempItem":Lcom/samsung/appdisabler/ImsiNumeric;
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/appdisabler/ImsiNumeric;->getImsiNumericBase()Ljava/lang/String;

    move-result-object v15

    .line 399
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/appdisabler/ImsiNumeric;->getImsiRangeStart()Ljava/lang/String;

    move-result-object v19

    .line 400
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/appdisabler/ImsiNumeric;->getImsiRangeEnd()Ljava/lang/String;

    move-result-object v18

    .line 402
    const-string v9, "[0-9]{3}|[0-9]{5,6}"

    .line 403
    .local v9, "imsiBasePattern":Ljava/lang/String;
    const-string/jumbo v22, "imsi_numeric_base"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v15, v1}, Lcom/samsung/appdisabler/ImsiItem;->isElementEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 413
    :cond_5
    :goto_3
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/appdisabler/ImsiNumeric;->isUsingMvno()Z

    move-result v22

    if-eqz v22, :cond_9

    const-string v12, "[0-9]{3}"

    .line 414
    .local v12, "onlyDigitsPattern":Ljava/lang/String;
    :goto_4
    const-string/jumbo v22, "imsi_range_start"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/appdisabler/ImsiItem;->isElementEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 426
    :cond_6
    :goto_5
    const-string/jumbo v22, "imsi_range_end"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/appdisabler/ImsiItem;->isElementEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 441
    :cond_7
    :goto_6
    :try_start_0
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 442
    .local v16, "start":J
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 443
    .local v4, "end":J
    cmp-long v22, v16, v4

    if-lez v22, :cond_4

    .line 444
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "imsi start grater then end"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " > "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const-string/jumbo v23, "imsi_range_start can\'t be grater than imsi_range_end\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 447
    .end local v4    # "end":J
    .end local v16    # "start":J
    :catch_0
    move-exception v22

    goto/16 :goto_2

    .line 405
    .end local v12    # "onlyDigitsPattern":Ljava/lang/String;
    :cond_8
    invoke-virtual {v15, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " is not valid SIM imsi base, can be only 3 or 5-6 digits"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is not valid SIM imsi base"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 413
    :cond_9
    const-string v12, "[0-9]{2,10}"

    goto/16 :goto_4

    .line 416
    .restart local v12    # "onlyDigitsPattern":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " is not valid "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/appdisabler/ImsiNumeric;->isUsingMvno()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const-string/jumbo v23, "imsi_mvno_range_start, must be 3 digits"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is not valid SIM imsi start"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 421
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const-string/jumbo v23, "imsi_range_start, must be 2 digits and no more then 10"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 428
    :cond_c
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " is not valid "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/appdisabler/ImsiNumeric;->isUsingMvno()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const-string/jumbo v23, "imsi_mvno_range_end, must be 3 digits"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is not valid SIM imsi end"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 433
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const-string/jumbo v23, "imsi_range_end, must be 2 digits and no more then 10"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 456
    .end local v9    # "imsiBasePattern":Ljava/lang/String;
    .end local v12    # "onlyDigitsPattern":Ljava/lang/String;
    .end local v20    # "tempItem":Lcom/samsung/appdisabler/ImsiNumeric;
    :cond_e
    const-string v13, "([a-zA-Z_$][a-zA-Z0-9_$]*\\.)*[a-zA-Z_$][a-zA-Z0-9_$]*"

    .line 457
    .local v13, "packageNamePattern":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->packageToHide:Ljava/util/Set;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_f
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 458
    .local v21, "tempPackageName":Ljava/lang/String;
    if-eqz v21, :cond_f

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_f

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " is not valid package name"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is not valid package name"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    goto :goto_9

    .line 466
    .end local v21    # "tempPackageName":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->packageToHide:Ljava/util/Set;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_11

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const-string/jumbo v23, "there must be at least one package_to_hide inside application tag"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    :cond_11
    const-string v6, "[A-F0-9]{1,}"

    .line 473
    .local v6, "gidPatter":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->gid1:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_12
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 474
    .local v7, "gidTest":Ljava/lang/String;
    const-string v22, "0x"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_13

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const-string/jumbo v23, "sim_gid1"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " must start with "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "0x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 476
    :cond_13
    const-string v22, "0x"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_12

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const-string/jumbo v23, "sim_gid1"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " wrong format, it must be 0x[0-9A-Z]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 481
    .end local v7    # "gidTest":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItem;->errorStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    return-object v22
.end method
