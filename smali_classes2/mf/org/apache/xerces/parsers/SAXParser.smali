.class public Lmf/org/apache/xerces/parsers/SAXParser;
.super Lmf/org/apache/xerces/parsers/AbstractSAXParser;
.source "SAXParser.java"


# static fields
.field protected static final NOTIFY_BUILTIN_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-builtin-refs"

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-array v0, v3, [Ljava/lang/String;

    .line 51
    const-string v1, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    aput-object v1, v0, v2

    .line 50
    sput-object v0, Lmf/org/apache/xerces/parsers/SAXParser;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 66
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v1, v0, v2

    .line 67
    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v1, v0, v3

    .line 65
    sput-object v0, Lmf/org/apache/xerces/parsers/SAXParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, v0, v0}, Lmf/org/apache/xerces/parsers/SAXParser;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/parsers/SAXParser;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 3
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .prologue
    .line 101
    .line 102
    const-string v0, "mf.org.apache.xerces.xni.parser.XMLParserConfiguration"

    .line 103
    const-string v1, "mf.org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    invoke-static {v0, v1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 107
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/SAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v1, Lmf/org/apache/xerces/parsers/SAXParser;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/SAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 111
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/SAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v1, Lmf/org/apache/xerces/parsers/SAXParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    .line 112
    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/SAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v0, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    :cond_0
    if-eqz p2, :cond_1

    .line 116
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/SAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    :cond_1
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 0
    .param p1, "config"    # Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/parsers/AbstractSAXParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 79
    return-void
.end method
