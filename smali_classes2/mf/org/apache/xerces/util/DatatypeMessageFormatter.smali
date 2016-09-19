.class public Lmf/org/apache/xerces/util/DatatypeMessageFormatter;
.super Ljava/lang/Object;
.source "DatatypeMessageFormatter.java"


# static fields
.field private static final BASE_NAME:Ljava/lang/String; = "mf.org.apache.xerces.impl.msg.DatatypeMessages"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 54
    if-nez p0, :cond_0

    .line 55
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 58
    :cond_0
    const-string v5, "mf.org.apache.xerces.impl.msg.DatatypeMessages"

    invoke-static {v5, p0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3

    .line 63
    .local v3, "resourceBundle":Ljava/util/ResourceBundle;
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 64
    .local v2, "msg":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 66
    :try_start_1
    invoke-static {v2, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 82
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 83
    move-object v2, p1

    .line 84
    array-length v5, p2

    if-lez v5, :cond_2

    .line 85
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 86
    .local v4, "str":Ljava/lang/StringBuffer;
    const/16 v5, 0x3f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 87
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, p2

    if-lt v1, v5, :cond_3

    .line 95
    .end local v1    # "i":I
    .end local v4    # "str":Ljava/lang/StringBuffer;
    :cond_2
    return-object v2

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "FormatFailed"

    invoke-virtual {v3, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 77
    .local v0, "e":Ljava/util/MissingResourceException;
    const-string v5, "BadMessageKey"

    invoke-virtual {v3, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v5, Ljava/util/MissingResourceException;

    invoke-direct {v5, p1, v2, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 88
    .end local v0    # "e":Ljava/util/MissingResourceException;
    .restart local v1    # "i":I
    .restart local v4    # "str":Ljava/lang/StringBuffer;
    :cond_3
    if-lez v1, :cond_4

    .line 89
    const/16 v5, 0x26

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 91
    :cond_4
    aget-object v5, p2, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
