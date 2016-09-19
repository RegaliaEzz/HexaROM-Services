.class public final Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;
.super Ljava/lang/Object;
.source "XSLoaderImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSLoader;
.implements Lmf/org/w3c/dom/DOMConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/XSLoaderImpl$XSGrammarMerger;
    }
.end annotation


# instance fields
.field private final fGrammarPool:Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;

.field private final fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl$XSGrammarMerger;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl$XSGrammarMerger;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fGrammarPool:Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;

    .line 57
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    .line 63
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fGrammarPool:Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    return-void
.end method


# virtual methods
.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 192
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getConfig()Lmf/org/w3c/dom/DOMConfiguration;
    .locals 0

    .prologue
    .line 91
    return-object p0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames()Lmf/org/w3c/dom/DOMStringList;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getParameterNames()Lmf/org/w3c/dom/DOMStringList;

    move-result-object v0

    return-object v0
.end method

.method public load(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 3
    .param p1, "is"    # Lmf/org/w3c/dom/ls/LSInput;

    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fGrammarPool:Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->clear()V

    .line 166
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xni/grammars/XSGrammar;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/grammars/XSGrammar;->toXSModel()Lmf/org/apache/xerces/xs/XSModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 170
    :goto_0
    return-object v1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    .line 170
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadInputList(Lmf/org/apache/xerces/xs/LSInputList;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 6
    .param p1, "is"    # Lmf/org/apache/xerces/xs/LSInputList;

    .prologue
    .line 124
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/LSInputList;->getLength()I

    move-result v2

    .line 126
    .local v2, "length":I
    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fGrammarPool:Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->clear()V

    .line 127
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 130
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fGrammarPool:Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->toXSModel()Lmf/org/apache/xerces/xs/XSModel;

    move-result-object v3

    .line 134
    .end local v1    # "i":I
    :goto_1
    return-object v3

    .line 128
    .restart local v1    # "i":I
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xs/LSInputList;->item(I)Lmf/org/w3c/dom/ls/LSInput;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    .line 134
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public loadURI(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 147
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fGrammarPool:Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->clear()V

    .line 148
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    new-instance v3, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xni/grammars/XSGrammar;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/grammars/XSGrammar;->toXSModel()Lmf/org/apache/xerces/xs/XSModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 152
    :goto_0
    return-object v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    move-object v1, v2

    .line 152
    goto :goto_0
.end method

.method public loadURIList(Lmf/org/apache/xerces/xs/StringList;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 9
    .param p1, "uriList"    # Lmf/org/apache/xerces/xs/StringList;

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/StringList;->getLength()I

    move-result v2

    .line 104
    .local v2, "length":I
    :try_start_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fGrammarPool:Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->clear()V

    .line 105
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 108
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fGrammarPool:Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->toXSModel()Lmf/org/apache/xerces/xs/XSModel;

    move-result-object v3

    .line 112
    .end local v1    # "i":I
    :goto_1
    return-object v3

    .line 106
    .restart local v1    # "i":I
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    new-instance v5, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v6, 0x0

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xs/StringList;->item(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    return-void
.end method
