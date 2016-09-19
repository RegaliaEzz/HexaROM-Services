.class public Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;
.super Lmf/org/apache/xerces/parsers/XML11Configuration;
.source "XPointerParserConfiguration.java"


# static fields
.field protected static final ALLOW_UE_AND_NOTATION_EVENTS:Ljava/lang/String; = "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

.field protected static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field protected static final XINCLUDE_FIXUP_BASE_URIS:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-base-uris"

.field protected static final XINCLUDE_FIXUP_LANGUAGE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-language"

.field protected static final XINCLUDE_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/xinclude-handler"

.field protected static final XPOINTER_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/xpointer-handler"


# instance fields
.field private fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

.field private fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0, v0}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 7
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    .param p3, "parentSettings"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 113
    new-instance v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    .line 114
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 116
    new-instance v2, Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-direct {v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    .line 117
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->addCommonComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 119
    new-array v0, v6, [Ljava/lang/String;

    .line 120
    const-string v2, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    aput-object v2, v0, v4

    .line 121
    const-string v2, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    aput-object v2, v0, v3

    .line 122
    const-string v2, "http://apache.org/xml/features/xinclude/fixup-language"

    aput-object v2, v0, v5

    .line 124
    .local v0, "recognizedFeatures":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 128
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "http://apache.org/xml/properties/internal/xinclude-handler"

    aput-object v2, v1, v4

    const-string v2, "http://apache.org/xml/properties/internal/xpointer-handler"

    aput-object v2, v1, v3

    const-string v2, "http://apache.org/xml/properties/internal/namespace-context"

    aput-object v2, v1, v5

    .line 129
    .local v1, "recognizedProperties":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    .line 131
    const-string v2, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 132
    const-string v2, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 133
    const-string v2, "http://apache.org/xml/features/xinclude/fixup-language"

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 135
    const-string v2, "http://apache.org/xml/properties/internal/xinclude-handler"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    const-string v2, "http://apache.org/xml/properties/internal/xpointer-handler"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    const-string v2, "http://apache.org/xml/properties/internal/namespace-context"

    new-instance v3, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-direct {v3}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;-><init>()V

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    return-void
.end method


# virtual methods
.method protected configurePipeline()V
    .locals 4

    .prologue
    .line 145
    invoke-super {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->configurePipeline()V

    .line 148
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 149
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 151
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 152
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 153
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 154
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 155
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 156
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 162
    :cond_0
    const/4 v1, 0x0

    .line 163
    .local v1, "prev":Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_2

    .line 166
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v1

    .line 174
    :goto_0
    invoke-interface {v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v0

    .line 175
    .local v0, "next":Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 176
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 178
    if-eqz v0, :cond_1

    .line 179
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 180
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 183
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 184
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 185
    return-void

    .line 170
    .end local v0    # "next":Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 171
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0
.end method

.method protected configureXML11Pipeline()V
    .locals 4

    .prologue
    .line 188
    invoke-super {p0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->configureXML11Pipeline()V

    .line 191
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 192
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 194
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 195
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXML11DTDProcessor:Lmf/org/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 196
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 197
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 198
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 199
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 206
    :cond_0
    const/4 v1, 0x0

    .line 207
    .local v1, "prev":Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_2

    .line 210
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v1

    .line 218
    :goto_0
    invoke-interface {v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v0

    .line 219
    .local v0, "next":Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 220
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 222
    if-eqz v0, :cond_1

    .line 223
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 224
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 227
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 228
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 231
    return-void

    .line 214
    .end local v0    # "next":Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 215
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fXPointerHandler:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/XPointerParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    return-void
.end method
