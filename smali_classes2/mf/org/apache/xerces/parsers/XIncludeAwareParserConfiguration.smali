.class public Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;
.super Lmf/org/apache/xerces/parsers/XML11Configuration;
.source "XIncludeAwareParserConfiguration.java"


# static fields
.field protected static final ALLOW_UE_AND_NOTATION_EVENTS:Ljava/lang/String; = "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

.field protected static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field protected static final XINCLUDE_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"

.field protected static final XINCLUDE_FIXUP_BASE_URIS:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-base-uris"

.field protected static final XINCLUDE_FIXUP_LANGUAGE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-language"

.field protected static final XINCLUDE_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/xinclude-handler"


# instance fields
.field protected fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field protected fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

.field protected fXIncludeEnabled:Z

.field protected fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

.field protected fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0, v0}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 6
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    .param p3, "parentSettings"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 84
    iput-boolean v4, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    .line 129
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    .line 130
    const-string v2, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    aput-object v2, v0, v4

    .line 131
    const-string v2, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    aput-object v2, v0, v3

    .line 132
    const-string v2, "http://apache.org/xml/features/xinclude/fixup-language"

    aput-object v2, v0, v5

    .line 134
    .local v0, "recognizedFeatures":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 138
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "http://apache.org/xml/properties/internal/xinclude-handler"

    aput-object v2, v1, v4

    const-string v2, "http://apache.org/xml/properties/internal/namespace-context"

    aput-object v2, v1, v3

    .line 139
    .local v1, "recognizedProperties":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    .line 141
    const-string v2, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 142
    const-string v2, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 143
    const-string v2, "http://apache.org/xml/features/xinclude/fixup-language"

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 145
    new-instance v2, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    .line 146
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 147
    const-string v2, "http://apache.org/xml/properties/internal/namespace-context"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    return-void
.end method


# virtual methods
.method protected configurePipeline()V
    .locals 4

    .prologue
    .line 153
    invoke-super {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->configurePipeline()V

    .line 154
    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    if-eqz v2, :cond_6

    .line 156
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    if-nez v2, :cond_0

    .line 157
    new-instance v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    .line 159
    const-string v2, "http://apache.org/xml/properties/internal/xinclude-handler"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 161
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 164
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    if-eq v2, v3, :cond_2

    .line 165
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    if-nez v2, :cond_1

    .line 166
    new-instance v2, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-direct {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    .line 168
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 169
    const-string v2, "http://apache.org/xml/properties/internal/namespace-context"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 173
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 174
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 175
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 176
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 177
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_3

    .line 178
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 183
    :cond_3
    const/4 v1, 0x0

    .line 184
    .local v1, "prev":Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_5

    .line 187
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v1

    .line 195
    :goto_0
    invoke-interface {v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v0

    .line 196
    .local v0, "next":Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 197
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 198
    if-eqz v0, :cond_4

    .line 199
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 200
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 210
    .end local v0    # "next":Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .end local v1    # "prev":Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    :cond_4
    :goto_1
    return-void

    .line 191
    .restart local v1    # "prev":Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 192
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0

    .line 205
    .end local v1    # "prev":Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    :cond_6
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    if-eq v2, v3, :cond_4

    .line 206
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 207
    const-string v2, "http://apache.org/xml/properties/internal/namespace-context"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected configureXML11Pipeline()V
    .locals 4

    .prologue
    .line 213
    invoke-super {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->configureXML11Pipeline()V

    .line 214
    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    if-eqz v2, :cond_6

    .line 216
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    if-nez v2, :cond_0

    .line 217
    new-instance v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    .line 219
    const-string v2, "http://apache.org/xml/properties/internal/xinclude-handler"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 221
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 224
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    if-eq v2, v3, :cond_2

    .line 225
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    if-nez v2, :cond_1

    .line 226
    new-instance v2, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-direct {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    .line 228
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 229
    const-string v2, "http://apache.org/xml/properties/internal/namespace-context"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 233
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 234
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 235
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 236
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 237
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_3

    .line 238
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 243
    :cond_3
    const/4 v1, 0x0

    .line 244
    .local v1, "prev":Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_5

    .line 247
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v1

    .line 255
    :goto_0
    invoke-interface {v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v0

    .line 256
    .local v0, "next":Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 257
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 258
    if-eqz v0, :cond_4

    .line 259
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 260
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 270
    .end local v0    # "next":Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .end local v1    # "prev":Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    :cond_4
    :goto_1
    return-void

    .line 251
    .restart local v1    # "prev":Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 252
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0

    .line 265
    .end local v1    # "prev":Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    :cond_6
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    if-eq v2, v3, :cond_4

    .line 266
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 267
    const-string v2, "http://apache.org/xml/properties/internal/namespace-context"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 274
    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fConfigUpdated:Z

    .line 280
    :goto_0
    return v0

    .line 277
    :cond_0
    const-string v0, "http://apache.org/xml/features/xinclude"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    goto :goto_0

    .line 280
    :cond_1
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->getFeature0(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 286
    const-string v0, "http://apache.org/xml/features/xinclude"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iput-boolean p2, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fConfigUpdated:Z

    .line 292
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0
.end method
