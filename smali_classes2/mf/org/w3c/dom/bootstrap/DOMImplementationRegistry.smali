.class public final Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;
.super Ljava/lang/Object;
.source "DOMImplementationRegistry.java"


# static fields
.field private static final DEFAULT_DOM_IMPLEMENTATION_SOURCE:Ljava/lang/String; = "mf.org.apache.xerces.dom.DOMXSImplementationSourceImpl"

.field private static final DEFAULT_LINE_LENGTH:I = 0x50

.field public static final PROPERTY:Ljava/lang/String; = "org.w3c.dom.DOMImplementationSourceList"


# instance fields
.field private sources:Ljava/util/Vector;


# direct methods
.method private constructor <init>(Ljava/util/Vector;)V
    .locals 0
    .param p1, "srcs"    # Ljava/util/Vector;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->sources:Ljava/util/Vector;

    .line 89
    return-void
.end method

.method private static getClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    .prologue
    .line 253
    :try_start_0
    invoke-static {}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 255
    .local v0, "contextClassLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 263
    .end local v0    # "contextClassLoader":Ljava/lang/ClassLoader;
    :goto_0
    return-object v0

    .line 258
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/Exception;
    const-class v2, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 263
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "contextClassLoader":Ljava/lang/ClassLoader;
    :cond_0
    const-class v2, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 333
    invoke-static {}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->isJRE11()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x0

    .line 333
    :goto_0
    return-object v0

    .line 336
    :cond_0
    new-instance v0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$2;

    invoke-direct {v0}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method private static getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 378
    invoke-static {}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->isJRE11()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    if-nez p0, :cond_0

    .line 381
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 387
    :goto_0
    return-object v0

    .line 383
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .local v0, "ris":Ljava/io/InputStream;
    goto :goto_0

    .line 388
    .end local v0    # "ris":Ljava/io/InputStream;
    :cond_1
    new-instance v1, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$4;

    invoke-direct {v1, p0, p1}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$4;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    move-object v0, v1

    .line 387
    goto :goto_0
.end method

.method private static getServiceValue(Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 9
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v6, 0x0

    .line 275
    const-string v4, "META-INF/services/org.w3c.dom.DOMImplementationSourceList"

    .line 278
    .local v4, "serviceId":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, v4}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 280
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 284
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, v2, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 285
    const/16 v8, 0x50

    .line 284
    invoke-direct {v3, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 291
    .local v3, "rd":Ljava/io/BufferedReader;
    :goto_0
    const/4 v5, 0x0

    .line 293
    .local v5, "serviceValue":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 296
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 298
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 305
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "rd":Ljava/io/BufferedReader;
    .end local v5    # "serviceValue":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 286
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 289
    const/16 v8, 0x50

    .line 288
    invoke-direct {v3, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 287
    .restart local v3    # "rd":Ljava/io/BufferedReader;
    goto :goto_0

    .line 295
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v5    # "serviceValue":Ljava/lang/String;
    :catchall_0
    move-exception v7

    .line 296
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 297
    throw v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 302
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "rd":Ljava/io/BufferedReader;
    .end local v5    # "serviceValue":Ljava/lang/String;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    move-object v5, v6

    .line 303
    goto :goto_1

    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_0
    move-object v5, v6

    .line 305
    goto :goto_1
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-static {}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->isJRE11()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    :goto_0
    return-object v0

    .line 360
    :cond_0
    new-instance v0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$3;

    invoke-direct {v0, p0}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private static isJRE11()Z
    .locals 2

    .prologue
    .line 315
    :try_start_0
    const-string v1, "java.security.AccessController"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 319
    .local v0, "c":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 323
    .end local v0    # "c":Ljava/lang/Class;
    :goto_0
    return v1

    .line 320
    :catch_0
    move-exception v1

    .line 323
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static newInstance()Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 126
    .local v5, "sources":Ljava/util/Vector;
    invoke-static {}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 128
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const-string v7, "org.w3c.dom.DOMImplementationSourceList"

    invoke-static {v7}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "p":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 134
    :cond_0
    invoke-static {v0}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->getServiceValue(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v1

    .line 136
    :cond_1
    if-nez v1, :cond_2

    .line 140
    const-string v1, "mf.org.apache.xerces.dom.DOMXSImplementationSourceImpl"

    .line 142
    :cond_2
    if-eqz v1, :cond_3

    .line 143
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 144
    .local v6, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_4

    .line 159
    .end local v6    # "st":Ljava/util/StringTokenizer;
    :cond_3
    new-instance v7, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;

    invoke-direct {v7, v5}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;-><init>(Ljava/util/Vector;)V

    return-object v7

    .line 145
    .restart local v6    # "st":Ljava/util/StringTokenizer;
    :cond_4
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "sourceName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 149
    .local v3, "sourceClass":Ljava/lang/Class;
    if-eqz v0, :cond_5

    .line 150
    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 155
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/w3c/dom/DOMImplementationSource;

    .line 156
    .local v2, "source":Lmf/org/w3c/dom/DOMImplementationSource;
    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    .end local v2    # "source":Lmf/org/w3c/dom/DOMImplementationSource;
    :cond_5
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public addSource(Lmf/org/w3c/dom/DOMImplementationSource;)V
    .locals 1
    .param p1, "s"    # Lmf/org/w3c/dom/DOMImplementationSource;

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 238
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 240
    :cond_0
    iget-object v0, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->sources:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->sources:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 243
    :cond_1
    return-void
.end method

.method public getDOMImplementation(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementation;
    .locals 6
    .param p1, "features"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v5, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->sources:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    .line 176
    .local v3, "size":I
    const/4 v2, 0x0

    .line 177
    .local v2, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_1

    .line 185
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 179
    :cond_1
    iget-object v5, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->sources:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/w3c/dom/DOMImplementationSource;

    .line 180
    .local v4, "source":Lmf/org/w3c/dom/DOMImplementationSource;
    invoke-interface {v4, p1}, Lmf/org/w3c/dom/DOMImplementationSource;->getDOMImplementation(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v1

    .line 181
    .local v1, "impl":Lmf/org/w3c/dom/DOMImplementation;
    if-nez v1, :cond_0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDOMImplementationList(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementationList;
    .locals 8
    .param p1, "features"    # Ljava/lang/String;

    .prologue
    .line 200
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 201
    .local v2, "implementations":Ljava/util/Vector;
    iget-object v7, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->sources:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v5

    .line 202
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 212
    new-instance v7, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$1;

    invoke-direct {v7, p0, v2}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$1;-><init>(Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;Ljava/util/Vector;)V

    return-object v7

    .line 204
    :cond_0
    iget-object v7, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->sources:Ljava/util/Vector;

    invoke-virtual {v7, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/w3c/dom/DOMImplementationSource;

    .line 206
    .local v6, "source":Lmf/org/w3c/dom/DOMImplementationSource;
    invoke-interface {v6, p1}, Lmf/org/w3c/dom/DOMImplementationSource;->getDOMImplementationList(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementationList;

    move-result-object v3

    .line 207
    .local v3, "impls":Lmf/org/w3c/dom/DOMImplementationList;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-interface {v3}, Lmf/org/w3c/dom/DOMImplementationList;->getLength()I

    move-result v7

    if-lt v4, v7, :cond_1

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_1
    invoke-interface {v3, v4}, Lmf/org/w3c/dom/DOMImplementationList;->item(I)Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v1

    .line 209
    .local v1, "impl":Lmf/org/w3c/dom/DOMImplementation;
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 207
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
