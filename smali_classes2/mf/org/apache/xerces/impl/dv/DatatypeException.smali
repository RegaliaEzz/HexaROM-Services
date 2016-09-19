.class public Lmf/org/apache/xerces/impl/dv/DatatypeException;
.super Ljava/lang/Exception;
.source "DatatypeException.java"


# static fields
.field static final serialVersionUID:J = 0x1aef209f3de7d52aL


# instance fields
.field protected final args:[Ljava/lang/Object;

.field protected final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/DatatypeException;->key:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/DatatypeException;->args:[Ljava/lang/Object;

    .line 55
    return-void
.end method


# virtual methods
.method public getArgs()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/DatatypeException;->args:[Ljava/lang/Object;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/DatatypeException;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 7

    .prologue
    .line 83
    const/4 v2, 0x0

    .line 85
    .local v2, "resourceBundle":Ljava/util/ResourceBundle;
    const-string v3, "mf.org.apache.xerces.impl.msg.XMLSchemaMessages"

    invoke-static {v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v2

    .line 87
    if-nez v2, :cond_0

    .line 88
    new-instance v3, Ljava/util/MissingResourceException;

    const-string v4, "Property file not found!"

    const-string v5, "mf.org.apache.xerces.impl.msg.XMLSchemaMessages"

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/DatatypeException;->key:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 90
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/DatatypeException;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "msg":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 92
    const-string v3, "BadMessageKey"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    new-instance v3, Ljava/util/MissingResourceException;

    const-string v4, "mf.org.apache.xerces.impl.msg.XMLSchemaMessages"

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/DatatypeException;->key:Ljava/lang/String;

    invoke-direct {v3, v1, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 97
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/DatatypeException;->args:[Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 99
    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/DatatypeException;->args:[Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 106
    :cond_2
    :goto_0
    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "FormatFailed"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/DatatypeException;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
