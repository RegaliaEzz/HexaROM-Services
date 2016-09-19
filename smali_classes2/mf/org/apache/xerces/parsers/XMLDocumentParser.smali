.class public Lmf/org/apache/xerces/parsers/XMLDocumentParser;
.super Lmf/org/apache/xerces/parsers/AbstractXMLDocumentParser;
.source "XMLDocumentParser.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    .line 50
    const-string v0, "mf.org.apache.xerces.xni.parser.XMLParserConfiguration"

    .line 51
    const-string v1, "mf.org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    invoke-static {v0, v1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/AbstractXMLDocumentParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 2
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    .line 67
    .line 68
    const-string v0, "mf.org.apache.xerces.xni.parser.XMLParserConfiguration"

    .line 69
    const-string v1, "mf.org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    invoke-static {v0, v1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/AbstractXMLDocumentParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 71
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLDocumentParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v0, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 2
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .prologue
    .line 81
    .line 82
    const-string v0, "mf.org.apache.xerces.xni.parser.XMLParserConfiguration"

    .line 83
    const-string v1, "mf.org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    invoke-static {v0, v1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/AbstractXMLDocumentParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 85
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLDocumentParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v0, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/XMLDocumentParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 0
    .param p1, "config"    # Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/parsers/AbstractXMLDocumentParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 60
    return-void
.end method
