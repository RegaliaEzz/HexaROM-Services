.class final Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;
.super Ljava/lang/Object;
.source "XPointerMessageFormatter.java"

# interfaces
.implements Lmf/org/apache/xerces/util/MessageFormatter;


# static fields
.field public static final XPOINTER_DOMAIN:Ljava/lang/String; = "http://www.w3.org/TR/XPTR"


# instance fields
.field private fLocale:Ljava/util/Locale;

.field private fResourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;->fLocale:Ljava/util/Locale;

    .line 41
    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    .line 34
    return-void
.end method


# virtual methods
.method public formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 67
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;->fLocale:Ljava/util/Locale;

    if-eq p1, v2, :cond_1

    .line 69
    const-string v2, "mf.org.apache.xerces.impl.msg.XPointerMessages"

    invoke-static {v2, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    .line 71
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;->fLocale:Ljava/util/Locale;

    .line 74
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {v2, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "msg":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 77
    :try_start_0
    invoke-static {v1, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 84
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 85
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    const-string v3, "BadMessageKey"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    new-instance v2, Ljava/util/MissingResourceException;

    .line 88
    const-string v3, "mf.org.apache.xerces.impl.msg.XPointerMessages"

    .line 87
    invoke-direct {v2, v1, v3, p2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    const-string v3, "FormatFailed"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {v3, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v1
.end method
