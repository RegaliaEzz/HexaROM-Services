.class public abstract Lmf/org/apache/xml/serialize/SerializerFactory;
.super Ljava/lang/Object;
.source "SerializerFactory.java"


# static fields
.field public static final FactoriesProperty:Ljava/lang/String; = "org.apache.xml.serialize.factories"

.field private static _factories:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 39
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    sput-object v5, Lmf/org/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    .line 51
    new-instance v2, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;

    const-string v5, "xml"

    invoke-direct {v2, v5}, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;-><init>(Ljava/lang/String;)V

    .line 52
    .local v2, "factory":Lmf/org/apache/xml/serialize/SerializerFactory;
    invoke-static {v2}, Lmf/org/apache/xml/serialize/SerializerFactory;->registerSerializerFactory(Lmf/org/apache/xml/serialize/SerializerFactory;)V

    .line 53
    new-instance v2, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;

    .end local v2    # "factory":Lmf/org/apache/xml/serialize/SerializerFactory;
    const-string v5, "html"

    invoke-direct {v2, v5}, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;-><init>(Ljava/lang/String;)V

    .line 54
    .restart local v2    # "factory":Lmf/org/apache/xml/serialize/SerializerFactory;
    invoke-static {v2}, Lmf/org/apache/xml/serialize/SerializerFactory;->registerSerializerFactory(Lmf/org/apache/xml/serialize/SerializerFactory;)V

    .line 55
    new-instance v2, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;

    .end local v2    # "factory":Lmf/org/apache/xml/serialize/SerializerFactory;
    const-string v5, "xhtml"

    invoke-direct {v2, v5}, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;-><init>(Ljava/lang/String;)V

    .line 56
    .restart local v2    # "factory":Lmf/org/apache/xml/serialize/SerializerFactory;
    invoke-static {v2}, Lmf/org/apache/xml/serialize/SerializerFactory;->registerSerializerFactory(Lmf/org/apache/xml/serialize/SerializerFactory;)V

    .line 57
    new-instance v2, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;

    .end local v2    # "factory":Lmf/org/apache/xml/serialize/SerializerFactory;
    const-string v5, "text"

    invoke-direct {v2, v5}, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;-><init>(Ljava/lang/String;)V

    .line 58
    .restart local v2    # "factory":Lmf/org/apache/xml/serialize/SerializerFactory;
    invoke-static {v2}, Lmf/org/apache/xml/serialize/SerializerFactory;->registerSerializerFactory(Lmf/org/apache/xml/serialize/SerializerFactory;)V

    .line 60
    const-string v5, "org.apache.xml.serialize.factories"

    invoke-static {v5}, Lmf/org/apache/xml/serialize/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "list":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 62
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, " ;,:"

    invoke-direct {v4, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .local v4, "token":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_2

    .line 73
    .end local v4    # "token":Ljava/util/StringTokenizer;
    :cond_1
    return-void

    .line 64
    .restart local v4    # "token":Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "className":Ljava/lang/String;
    :try_start_0
    const-class v5, Lmf/org/apache/xml/serialize/SerializerFactory;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x1

    .line 66
    invoke-static {v1, v5, v6}, Lmf/org/apache/xml/serialize/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lmf/org/apache/xml/serialize/SerializerFactory;

    move-object v2, v0

    .line 68
    sget-object v5, Lmf/org/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/SerializerFactory;->getSupportedMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    sget-object v5, Lmf/org/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/SerializerFactory;->getSupportedMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerializerFactory(Ljava/lang/String;)Lmf/org/apache/xml/serialize/SerializerFactory;
    .locals 1
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-object v0, Lmf/org/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/serialize/SerializerFactory;

    return-object v0
.end method

.method public static registerSerializerFactory(Lmf/org/apache/xml/serialize/SerializerFactory;)V
    .locals 3
    .param p0, "factory"    # Lmf/org/apache/xml/serialize/SerializerFactory;

    .prologue
    .line 84
    sget-object v2, Lmf/org/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    monitor-enter v2

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/SerializerFactory;->getSupportedMethod()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "method":Ljava/lang/String;
    sget-object v1, Lmf/org/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    monitor-exit v2

    .line 88
    return-void

    .line 84
    .end local v0    # "method":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected abstract getSupportedMethod()Ljava/lang/String;
.end method

.method public abstract makeSerializer(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public abstract makeSerializer(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;
.end method

.method public abstract makeSerializer(Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;
.end method
