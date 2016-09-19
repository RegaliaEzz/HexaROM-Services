.class public Lmf/org/apache/xerces/xinclude/XIncludeHandler;
.super Ljava/lang/Object;
.source "XIncludeHandler.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/xni/parser/XMLDocumentFilter;
.implements Lmf/org/apache/xerces/xni/parser/XMLDTDFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;,
        Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;
    }
.end annotation


# static fields
.field protected static final ALLOW_UE_AND_NOTATION_EVENTS:Ljava/lang/String; = "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

.field protected static final BUFFER_SIZE:Ljava/lang/String; = "http://apache.org/xml/properties/input-buffer-size"

.field public static final CURRENT_BASE_URI:Ljava/lang/String; = "currentBaseURI"

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field public static final HTTP_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HTTP_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final INITIAL_SIZE:I = 0x8

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field private static final NEW_NS_ATTR_QNAME:Lmf/org/apache/xerces/xni/QName;

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final STATE_EXPECT_FALLBACK:I = 0x3

.field private static final STATE_IGNORE:I = 0x2

.field private static final STATE_NORMAL_PROCESSING:I = 0x1

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field public static final XINCLUDE_ATTR_ACCEPT:Ljava/lang/String;

.field public static final XINCLUDE_ATTR_ACCEPT_LANGUAGE:Ljava/lang/String;

.field public static final XINCLUDE_ATTR_ENCODING:Ljava/lang/String;

.field public static final XINCLUDE_ATTR_HREF:Ljava/lang/String;

.field public static final XINCLUDE_ATTR_PARSE:Ljava/lang/String;

.field private static final XINCLUDE_BASE:Ljava/lang/String;

.field public static final XINCLUDE_DEFAULT_CONFIGURATION:Ljava/lang/String; = "mf.org.apache.xerces.parsers.XIncludeParserConfiguration"

.field public static final XINCLUDE_FALLBACK:Ljava/lang/String;

.field protected static final XINCLUDE_FIXUP_BASE_URIS:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-base-uris"

.field protected static final XINCLUDE_FIXUP_LANGUAGE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-language"

.field public static final XINCLUDE_INCLUDE:Ljava/lang/String;

.field public static final XINCLUDE_INCLUDED:Ljava/lang/String;

.field private static final XINCLUDE_LANG:Ljava/lang/String;

.field public static final XINCLUDE_NS_URI:Ljava/lang/String;

.field public static final XINCLUDE_PARSE_TEXT:Ljava/lang/String;

.field public static final XINCLUDE_PARSE_XML:Ljava/lang/String;

.field private static final XML_BASE_QNAME:Lmf/org/apache/xerces/xni/QName;

.field private static final XML_LANG_QNAME:Lmf/org/apache/xerces/xni/QName;

.field public static final XPOINTER:Ljava/lang/String; = "xpointer"

.field private static final gAfterEscaping1:[C

.field private static final gAfterEscaping2:[C

.field private static final gHexChs:[C

.field private static final gNeedEscaping:[Z


# instance fields
.field protected final fBaseURI:Ljava/util/Stack;

.field protected final fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

.field protected fBufferSize:I

.field protected fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

.field protected final fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

.field protected fCurrentLanguage:Ljava/lang/String;

.field protected fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

.field protected fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

.field private fDepth:I

.field protected fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected final fExpandedSystemID:Ljava/util/Stack;

.field private fFixupBaseURIs:Z

.field private fFixupLanguage:Z

.field fHasIncludeReportedContent:Z

.field protected fHrefFromParent:Ljava/lang/String;

.field private fInDTD:Z

.field private fIsXML11:Z

.field protected final fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

.field protected final fLanguageStack:Ljava/util/Stack;

.field protected final fLiteralSystemID:Ljava/util/Stack;

.field protected fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

.field private fNeedCopyFeatures:Z

.field private final fNotations:Ljava/util/ArrayList;

.field protected fParentRelativeURI:Ljava/lang/String;

.field protected fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

.field private fResultDepth:I

.field private fSawFallback:[Z

.field private fSawInclude:[Z

.field protected fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

.field private fSeenRootElement:Z

.field private fSendUEAndNotationEvents:Z

.field protected fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

.field private fState:[I

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private final fUnparsedEntities:Ljava/util/ArrayList;

.field protected fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

.field protected fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

.field protected fXIncludeChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

.field protected fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

.field protected fXIncludeMessageFormatter:Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;

.field protected fXPointerChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

.field protected fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v13, 0x80

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 129
    const-string v4, "http://www.w3.org/2001/XInclude"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 128
    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_NS_URI:Ljava/lang/String;

    .line 130
    const-string v4, "include"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_INCLUDE:Ljava/lang/String;

    .line 131
    const-string v4, "fallback"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_FALLBACK:Ljava/lang/String;

    .line 133
    const-string v4, "xml"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_XML:Ljava/lang/String;

    .line 134
    const-string v4, "text"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_TEXT:Ljava/lang/String;

    .line 136
    const-string v4, "href"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_HREF:Ljava/lang/String;

    .line 137
    const-string v4, "parse"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_PARSE:Ljava/lang/String;

    .line 138
    const-string v4, "encoding"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ENCODING:Ljava/lang/String;

    .line 139
    const-string v4, "accept"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ACCEPT:Ljava/lang/String;

    .line 140
    const-string v4, "accept-language"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ACCEPT_LANGUAGE:Ljava/lang/String;

    .line 143
    const-string v4, "[included]"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_INCLUDED:Ljava/lang/String;

    .line 149
    const-string v4, "base"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_BASE:Ljava/lang/String;

    .line 151
    new-instance v4, Lmf/org/apache/xerces/xni/QName;

    .line 152
    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    .line 153
    sget-object v6, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_BASE:Ljava/lang/String;

    .line 154
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_BASE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 155
    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    .line 151
    invoke-direct {v4, v5, v6, v7, v8}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XML_BASE_QNAME:Lmf/org/apache/xerces/xni/QName;

    .line 158
    const-string v4, "lang"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_LANG:Ljava/lang/String;

    .line 160
    new-instance v4, Lmf/org/apache/xerces/xni/QName;

    .line 161
    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    .line 162
    sget-object v6, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_LANG:Ljava/lang/String;

    .line 163
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_LANG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 164
    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    .line 160
    invoke-direct {v4, v5, v6, v7, v8}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XML_LANG_QNAME:Lmf/org/apache/xerces/xni/QName;

    .line 167
    new-instance v4, Lmf/org/apache/xerces/xni/QName;

    .line 168
    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    .line 169
    const-string v6, ""

    .line 170
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 171
    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    .line 167
    invoke-direct {v4, v5, v6, v7, v8}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->NEW_NS_ATTR_QNAME:Lmf/org/apache/xerces/xni/QName;

    .line 238
    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    aput-object v5, v4, v11

    const-string v5, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    aput-object v5, v4, v9

    const-string v5, "http://apache.org/xml/features/xinclude/fixup-language"

    aput-object v5, v4, v12

    .line 237
    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 241
    new-array v4, v10, [Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v11

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v9

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v12

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 245
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v5, v4, v11

    const-string v5, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v5, v4, v9

    const-string v5, "http://apache.org/xml/properties/security-manager"

    aput-object v5, v4, v12

    const-string v5, "http://apache.org/xml/properties/input-buffer-size"

    aput-object v5, v4, v10

    .line 244
    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 248
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    const/16 v6, 0x800

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v10

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    .line 2981
    new-array v4, v13, [Z

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gNeedEscaping:[Z

    .line 2983
    new-array v4, v13, [C

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping1:[C

    .line 2985
    new-array v4, v13, [C

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping2:[C

    .line 2986
    const/16 v4, 0x10

    new-array v4, v4, [C

    fill-array-data v4, :array_0

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gHexChs:[C

    .line 2990
    const/16 v4, 0xa

    new-array v1, v4, [C

    fill-array-data v1, :array_1

    .line 2991
    .local v1, "escChs":[C
    array-length v3, v1

    .line 2993
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 2999
    return-void

    .line 2994
    :cond_0
    aget-char v0, v1, v2

    .line 2995
    .local v0, "ch":C
    sget-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gNeedEscaping:[Z

    aput-boolean v9, v4, v0

    .line 2996
    sget-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping1:[C

    sget-object v5, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gHexChs:[C

    shr-int/lit8 v6, v0, 0x4

    aget-char v5, v5, v6

    aput-char v5, v4, v0

    .line 2997
    sget-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping2:[C

    sget-object v5, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gHexChs:[C

    and-int/lit8 v6, v0, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v0

    .line 2993
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2986
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    .line 2990
    :array_1
    .array-data 2
        0x20s
        0x3cs
        0x3es
        0x22s
        0x7bs
        0x7ds
        0x7cs
        0x5cs
        0x5es
        0x60s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/16 v0, 0x800

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    .line 281
    iput-object v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    .line 284
    new-instance v0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLLocatorWrapper;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    .line 285
    new-instance v0, Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeMessageFormatter:Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;

    .line 327
    new-array v0, v1, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    .line 332
    new-array v0, v1, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    .line 335
    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    .line 342
    iput-boolean v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    .line 343
    iput-boolean v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    .line 362
    iput-boolean v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    .line 367
    iput v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    .line 369
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    aput-boolean v3, v0, v1

    .line 370
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    aput-boolean v3, v0, v1

    .line 371
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    aput v2, v0, v1

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    .line 375
    new-instance v0, Lmf/org/apache/xerces/util/IntStack;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/IntStack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    .line 376
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    .line 377
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    .line 378
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    .line 379
    new-instance v0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    .line 381
    new-instance v0, Lmf/org/apache/xerces/util/IntStack;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/IntStack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    .line 382
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    .line 383
    iput-object v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    .line 384
    return-void
.end method

.method private checkMultipleRootElements()V
    .locals 1

    .prologue
    .line 2614
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getRootElementProcessed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2615
    const-string v0, "MultipleRootElements"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    .line 2617
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setRootElementProcessed(Z)V

    .line 2618
    return-void
.end method

.method private checkWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 4
    .param p1, "value"    # Lmf/org/apache/xerces/xni/XMLString;

    .prologue
    .line 2601
    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int v0, v2, v3

    .line 2602
    .local v0, "end":I
    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 2608
    :goto_1
    return-void

    .line 2603
    :cond_0
    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v2, v2, v1

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2604
    const-string v2, "ContentIllegalAtTopLevel"

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto :goto_1

    .line 2602
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/util/ParserConfigurationSettings;)V
    .locals 3
    .param p1, "features"    # Ljava/util/Enumeration;
    .param p2, "featurePrefix"    # Ljava/lang/String;
    .param p3, "from"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .param p4, "to"    # Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    .prologue
    .line 2663
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2676
    return-void

    .line 2664
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2666
    .local v0, "featureId":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p4, v1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 2669
    :try_start_0
    invoke-interface {p3, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p4, v0, v1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2671
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 4
    .param p1, "features"    # Ljava/util/Enumeration;
    .param p2, "featurePrefix"    # Ljava/lang/String;
    .param p3, "from"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .param p4, "to"    # Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .prologue
    .line 2683
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2695
    return-void

    .line 2684
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2685
    .local v0, "featureId":Ljava/lang/String;
    invoke-interface {p3, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    .line 2688
    .local v1, "value":Z
    :try_start_0
    invoke-interface {p4, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2690
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private createInputSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 2
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .param p3, "baseSystemId"    # Ljava/lang/String;
    .param p4, "accept"    # Ljava/lang/String;
    .param p5, "acceptLanguage"    # Ljava/lang/String;

    .prologue
    .line 2966
    new-instance v0, Lmf/org/apache/xerces/util/HTTPInputSource;

    invoke-direct {v0, p1, p2, p3}, Lmf/org/apache/xerces/util/HTTPInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2967
    .local v0, "httpSource":Lmf/org/apache/xerces/util/HTTPInputSource;
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2968
    const-string v1, "Accept"

    invoke-virtual {v0, v1, p4}, Lmf/org/apache/xerces/util/HTTPInputSource;->setHTTPRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2970
    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 2971
    const-string v1, "Accept-Language"

    invoke-virtual {v0, v1, p5}, Lmf/org/apache/xerces/util/HTTPInputSource;->setHTTPRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2973
    :cond_1
    return-object v0
.end method

.method private escapeHref(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x7e

    const/16 v12, 0x20

    const/16 v11, 0x25

    .line 3014
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 3016
    .local v8, "len":I
    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v9, v8, 0x3

    invoke-direct {v1, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3019
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 3020
    .local v6, "i":I
    :goto_0
    if-lt v6, v8, :cond_3

    .line 3041
    :cond_0
    if-ge v6, v8, :cond_1

    .line 3043
    move v7, v6

    .local v7, "j":I
    :goto_1
    if-lt v7, v8, :cond_5

    .line 3065
    const/4 v2, 0x0

    .line 3068
    .local v2, "bytes":[B
    :try_start_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3073
    array-length v8, v2

    .line 3076
    const/4 v6, 0x0

    :goto_2
    if-lt v6, v8, :cond_b

    .line 3098
    .end local v2    # "bytes":[B
    .end local v7    # "j":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-eq v9, v8, :cond_2

    .line 3099
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3102
    .end local p1    # "href":Ljava/lang/String;
    :cond_2
    :goto_3
    return-object p1

    .line 3021
    .restart local p1    # "href":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3023
    .local v3, "ch":I
    if-gt v3, v13, :cond_0

    .line 3027
    if-lt v3, v12, :cond_2

    .line 3030
    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gNeedEscaping:[Z

    aget-boolean v9, v9, v3

    if-eqz v9, :cond_4

    .line 3031
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3032
    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping1:[C

    aget-char v9, v9, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3033
    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping2:[C

    aget-char v9, v9, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3020
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3036
    :cond_4
    int-to-char v9, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 3044
    .end local v3    # "ch":I
    .restart local v7    # "j":I
    :cond_5
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3045
    .restart local v3    # "ch":I
    if-lt v3, v12, :cond_6

    if-le v3, v13, :cond_9

    .line 3046
    :cond_6
    const/16 v9, 0xa0

    if-lt v3, v9, :cond_7

    const v9, 0xd7ff

    if-le v3, v9, :cond_9

    .line 3047
    :cond_7
    const v9, 0xf900

    if-lt v3, v9, :cond_8

    const v9, 0xfdcf

    if-le v3, v9, :cond_9

    .line 3048
    :cond_8
    const v9, 0xfdf0

    if-lt v3, v9, :cond_a

    const v9, 0xffef

    if-gt v3, v9, :cond_a

    .line 3043
    :cond_9
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3051
    :cond_a
    invoke-static {v3}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v7, v7, 0x1

    if-ge v7, v8, :cond_2

    .line 3052
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 3053
    .local v4, "ch2":I
    invoke-static {v4}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3054
    int-to-char v9, v3

    int-to-char v10, v4

    invoke-static {v9, v10}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v4

    .line 3055
    const/high16 v9, 0xf0000

    if-ge v4, v9, :cond_2

    const v9, 0xffff

    and-int/2addr v9, v4

    const v10, 0xfffd

    if-gt v9, v10, :cond_2

    goto :goto_5

    .line 3069
    .end local v3    # "ch":I
    .end local v4    # "ch2":I
    .restart local v2    # "bytes":[B
    :catch_0
    move-exception v5

    .line 3071
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_3

    .line 3077
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_b
    aget-byte v0, v2, v6

    .line 3079
    .local v0, "b":B
    if-gez v0, :cond_c

    .line 3080
    add-int/lit16 v3, v0, 0x100

    .line 3081
    .restart local v3    # "ch":I
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3082
    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gHexChs:[C

    shr-int/lit8 v10, v3, 0x4

    aget-char v9, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3083
    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gHexChs:[C

    and-int/lit8 v10, v3, 0xf

    aget-char v9, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3076
    .end local v3    # "ch":I
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 3085
    :cond_c
    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gNeedEscaping:[Z

    aget-boolean v9, v9, v0

    if-eqz v9, :cond_d

    .line 3086
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3087
    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping1:[C

    aget-char v9, v9, v0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3088
    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping2:[C

    aget-char v9, v9, v0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 3091
    :cond_d
    int-to-char v9, v0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6
.end method

.method private getIncludeParentBaseURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2208
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentDepth()I

    move-result v0

    .line 2209
    .local v0, "depth":I
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 2210
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentBaseURI()Ljava/lang/String;

    move-result-object v1

    .line 2213
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getBaseURI(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getIncludeParentDepth()I
    .locals 2

    .prologue
    .line 2243
    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 2256
    const/4 v0, 0x0

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 2250
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2243
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private getIncludeParentLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2223
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentDepth()I

    move-result v0

    .line 2224
    .local v0, "depth":I
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 2225
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentLanguage()Ljava/lang/String;

    move-result-object v1

    .line 2228
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getLanguage(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getResultDepth()I
    .locals 1

    .prologue
    .line 2263
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    return v0
.end method

.method private getRootElementProcessed()Z
    .locals 1

    .prologue
    .line 2635
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSeenRootElement:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getRootElementProcessed()Z

    move-result v0

    goto :goto_0
.end method

.method private isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "one"    # Ljava/lang/String;
    .param p2, "two"    # Ljava/lang/String;

    .prologue
    .line 2977
    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isValidInHTTPHeader(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2950
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 2956
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 2951
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2952
    .local v0, "ch":C
    const/16 v2, 0x20

    if-lt v0, v2, :cond_1

    const/16 v2, 0x7e

    if-le v0, v2, :cond_2

    .line 2953
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 2950
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private reportError(Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "severity"    # S
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 2398
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-eqz v0, :cond_0

    .line 2399
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 2400
    const-string v1, "http://www.w3.org/TR/xinclude"

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 2399
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    .line 2408
    :cond_0
    return-void
.end method

.method private scopeOfBaseURI(I)I
    .locals 2
    .param p1, "depth"    # I

    .prologue
    .line 2883
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 2888
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 2884
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/IntStack;->elementAt(I)I

    move-result v1

    if-le v1, p1, :cond_0

    .line 2883
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private scopeOfLanguage(I)I
    .locals 2
    .param p1, "depth"    # I

    .prologue
    .line 2892
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 2897
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 2893
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/IntStack;->elementAt(I)I

    move-result v1

    if-le v1, p1, :cond_0

    .line 2892
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private setErrorReporter(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 3
    .param p1, "reporter"    # Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .prologue
    .line 1422
    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 1423
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-eqz v0, :cond_0

    .line 1424
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 1425
    const-string v1, "http://www.w3.org/TR/xinclude"

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeMessageFormatter:Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;

    .line 1424
    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 1427
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v0, :cond_0

    .line 1428
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    .line 1431
    :cond_0
    return-void
.end method

.method private setRootElementProcessed(Z)V
    .locals 1
    .param p1, "seenRoot"    # Z

    .prologue
    .line 2624
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2625
    iput-boolean p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSeenRootElement:Z

    .line 2629
    :goto_0
    return-void

    .line 2628
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setRootElementProcessed(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected addNotation(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;

    .prologue
    .line 2463
    new-instance v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;-><init>()V

    .line 2464
    .local v0, "not":Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;
    iput-object p1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    .line 2465
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->systemId:Ljava/lang/String;

    .line 2466
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->publicId:Ljava/lang/String;

    .line 2467
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->baseURI:Ljava/lang/String;

    .line 2468
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->expandedSystemId:Ljava/lang/String;

    .line 2469
    iput-object p3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->augmentations:Lmf/org/apache/xerces/xni/Augmentations;

    .line 2470
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2471
    return-void
.end method

.method protected addUnparsedEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "notation"    # Ljava/lang/String;
    .param p4, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;

    .prologue
    .line 2442
    new-instance v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;-><init>()V

    .line 2443
    .local v0, "ent":Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;
    iput-object p1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    .line 2444
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->systemId:Ljava/lang/String;

    .line 2445
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->publicId:Ljava/lang/String;

    .line 2446
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->baseURI:Ljava/lang/String;

    .line 2447
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->expandedSystemId:Ljava/lang/String;

    .line 2448
    iput-object p3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    .line 2449
    iput-object p4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->augmentations:Lmf/org/apache/xerces/xni/Augmentations;

    .line 2450
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2451
    return-void
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 9
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "enumeration"    # [Ljava/lang/String;
    .param p5, "defaultType"    # Ljava/lang/String;
    .param p6, "defaultValue"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p7, "nonNormalizedDefaultValue"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p8, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1181
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1192
    :cond_0
    return-void
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1106
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1107
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v0, :cond_1

    .line 1108
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 1118
    :cond_0
    :goto_0
    return-void

    .line 1110
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 1112
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    .line 1113
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p2

    .line 1114
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1115
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    goto :goto_0
.end method

.method protected checkAndSendNotation(Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;)V
    .locals 7
    .param p1, "not"    # Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;

    .prologue
    .line 2566
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2567
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2568
    .local v1, "index":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 2571
    new-instance v0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    .line 2572
    iget-object v3, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->publicId:Ljava/lang/String;

    .line 2573
    iget-object v4, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->systemId:Ljava/lang/String;

    .line 2574
    iget-object v5, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->baseURI:Ljava/lang/String;

    .line 2575
    iget-object v6, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->expandedSystemId:Ljava/lang/String;

    .line 2571
    invoke-direct {v0, v3, v4, v5, v6}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2576
    .local v0, "id":Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    iget-object v3, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->augmentations:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-virtual {p0, v3, v0, v4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->addNotation(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 2577
    iget-boolean v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_0

    .line 2578
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v4, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    iget-object v5, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->augmentations:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v3, v4, v0, v5}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 2593
    .end local v0    # "id":Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .end local v1    # "index":I
    :cond_0
    :goto_0
    return-void

    .line 2582
    .restart local v1    # "index":I
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;

    .line 2583
    .local v2, "localNotation":Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;
    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->isDuplicate(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2585
    const-string v3, "NonDuplicateNotation"

    .line 2586
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 2584
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2591
    .end local v1    # "index":I
    .end local v2    # "localNotation":Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v3, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkAndSendNotation(Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;)V

    goto :goto_0
.end method

.method protected checkAndSendUnparsedEntity(Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;)V
    .locals 7
    .param p1, "ent"    # Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    .prologue
    .line 2518
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2519
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2520
    .local v1, "index":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 2525
    new-instance v0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    .line 2526
    iget-object v3, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->publicId:Ljava/lang/String;

    .line 2527
    iget-object v4, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->systemId:Ljava/lang/String;

    .line 2528
    iget-object v5, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->baseURI:Ljava/lang/String;

    .line 2529
    iget-object v6, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->expandedSystemId:Ljava/lang/String;

    .line 2525
    invoke-direct {v0, v3, v4, v5, v6}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    .local v0, "id":Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    iget-object v3, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    .line 2533
    iget-object v4, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    .line 2534
    iget-object v5, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->augmentations:Lmf/org/apache/xerces/xni/Augmentations;

    .line 2530
    invoke-virtual {p0, v3, v0, v4, v5}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->addUnparsedEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 2535
    iget-boolean v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_0

    .line 2536
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    .line 2537
    iget-object v4, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    .line 2539
    iget-object v5, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    .line 2540
    iget-object v6, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->augmentations:Lmf/org/apache/xerces/xni/Augmentations;

    .line 2536
    invoke-interface {v3, v4, v0, v5, v6}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 2556
    .end local v0    # "id":Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .end local v1    # "index":I
    :cond_0
    :goto_0
    return-void

    .line 2545
    .restart local v1    # "index":I
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    .line 2546
    .local v2, "localEntity":Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;
    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->isDuplicate(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2548
    const-string v3, "NonDuplicateUnparsedEntity"

    .line 2549
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 2547
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2554
    .end local v1    # "index":I
    .end local v2    # "localEntity":Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v3, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkAndSendUnparsedEntity(Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;)V

    goto :goto_0
.end method

.method protected checkNotation(Ljava/lang/String;)V
    .locals 3
    .param p1, "notName"    # Ljava/lang/String;

    .prologue
    .line 2501
    new-instance v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;

    invoke-direct {v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;-><init>()V

    .line 2502
    .local v1, "not":Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;
    iput-object p1, v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    .line 2503
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2504
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 2505
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "not":Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;
    check-cast v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;

    .line 2506
    .restart local v1    # "not":Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkAndSendNotation(Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;)V

    .line 2508
    :cond_0
    return-void
.end method

.method protected checkUnparsedEntity(Ljava/lang/String;)V
    .locals 3
    .param p1, "entName"    # Ljava/lang/String;

    .prologue
    .line 2482
    new-instance v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;-><init>()V

    .line 2483
    .local v0, "ent":Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;
    iput-object p1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    .line 2484
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2485
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2486
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ent":Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;
    check-cast v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    .line 2488
    .restart local v0    # "ent":Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;
    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkNotation(Ljava/lang/String;)V

    .line 2489
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkAndSendUnparsedEntity(Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;)V

    .line 2491
    :cond_0
    return-void
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 841
    iget-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fInDTD:Z

    if-nez v0, :cond_1

    .line 842
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 844
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    .line 845
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p2

    .line 846
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 847
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method protected copyFeatures(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/util/ParserConfigurationSettings;)V
    .locals 2
    .param p1, "from"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .param p2, "to"    # Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    .prologue
    .line 2643
    invoke-static {}, Lmf/org/apache/xerces/impl/Constants;->getXercesFeatures()Ljava/util/Enumeration;

    move-result-object v0

    .line 2644
    .local v0, "features":Ljava/util/Enumeration;
    const-string v1, "http://apache.org/xml/features/"

    invoke-direct {p0, v0, v1, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/util/ParserConfigurationSettings;)V

    .line 2645
    invoke-static {}, Lmf/org/apache/xerces/impl/Constants;->getSAXFeatures()Ljava/util/Enumeration;

    move-result-object v0

    .line 2646
    const-string v1, "http://xml.org/sax/features/"

    invoke-direct {p0, v0, v1, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/util/ParserConfigurationSettings;)V

    .line 2647
    return-void
.end method

.method protected copyFeatures(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 2
    .param p1, "from"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .param p2, "to"    # Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .prologue
    .line 2652
    invoke-static {}, Lmf/org/apache/xerces/impl/Constants;->getXercesFeatures()Ljava/util/Enumeration;

    move-result-object v0

    .line 2653
    .local v0, "features":Ljava/util/Enumeration;
    const-string v1, "http://apache.org/xml/features/"

    invoke-direct {p0, v0, v1, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 2654
    invoke-static {}, Lmf/org/apache/xerces/impl/Constants;->getSAXFeatures()Ljava/util/Enumeration;

    move-result-object v0

    .line 2655
    const-string v1, "http://xml.org/sax/features/"

    invoke-direct {p0, v0, v1, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 2656
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "rootElement"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 834
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 837
    :cond_0
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contentModel"    # Ljava/lang/String;
    .param p3, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1202
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1205
    :cond_0
    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 950
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    .line 951
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState(I)I

    move-result v0

    .line 955
    .local v0, "lastState":I
    if-ne v0, v4, :cond_3

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState(I)I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 956
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    .line 964
    :goto_0
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processXMLBaseAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    .line 965
    iget-boolean v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    if-eqz v2, :cond_0

    .line 966
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processXMLLangAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    .line 969
    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isIncludeElement(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 970
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->handleIncludeElement(Lmf/org/apache/xerces/xni/XMLAttributes;)Z

    move-result v1

    .line 971
    .local v1, "success":Z
    if-eqz v1, :cond_4

    .line 972
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    .line 1014
    .end local v1    # "success":Z
    :cond_1
    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setSawFallback(IZ)V

    .line 1015
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setSawInclude(IZ)V

    .line 1018
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/IntStack;->peek()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 1020
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->restoreBaseURI()V

    .line 1022
    :cond_2
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    .line 1023
    return-void

    .line 959
    :cond_3
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    goto :goto_0

    .line 975
    .restart local v1    # "success":Z
    :cond_4
    const-string v2, "NoFallback"

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto :goto_1

    .line 978
    .end local v1    # "success":Z
    :cond_5
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isFallbackElement(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 979
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->handleFallbackElement()V

    goto :goto_1

    .line 981
    :cond_6
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->hasXIncludeNamespace(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 982
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 984
    const-string v2, "IncludeChild"

    .line 985
    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 983
    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 987
    :cond_7
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 989
    const-string v2, "FallbackChild"

    .line 990
    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 988
    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 992
    :cond_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 993
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v2, :cond_9

    .line 994
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkMultipleRootElements()V

    .line 996
    :cond_9
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_1

    .line 997
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    .line 998
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xni/XMLAttributes;

    move-result-object p2

    .line 999
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v2, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    .line 1003
    :cond_a
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 1004
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v2, :cond_b

    .line 1005
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkMultipleRootElements()V

    .line 1007
    :cond_b
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_1

    .line 1008
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    .line 1009
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xni/XMLAttributes;

    move-result-object p2

    .line 1010
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v2, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1
.end method

.method public endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1211
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1214
    :cond_0
    return-void
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1138
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 1139
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1140
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1143
    :cond_0
    return-void
.end method

.method public endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1221
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1224
    :cond_0
    return-void
.end method

.method public endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1230
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1233
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fInDTD:Z

    .line 1234
    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1146
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1147
    iget-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSeenRootElement:Z

    if-nez v0, :cond_0

    .line 1148
    const-string v0, "RootElementRequired"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    .line 1150
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    .line 1151
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1154
    :cond_1
    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1028
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isIncludeElement(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1032
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1033
    const-string v0, "NoFallback"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    .line 1036
    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isFallbackElement(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1039
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1040
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    .line 1051
    :cond_1
    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setSawFallback(IZ)V

    .line 1052
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setSawInclude(IZ)V

    .line 1055
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/IntStack;->peek()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1057
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->restoreBaseURI()V

    .line 1061
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/IntStack;->peek()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1063
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->restoreLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    .line 1066
    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    .line 1067
    return-void

    .line 1043
    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1044
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    .line 1045
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    .line 1046
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1241
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1244
    :cond_0
    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1097
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 1098
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1099
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1102
    :cond_0
    return-void
.end method

.method public endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1251
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1254
    :cond_0
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1264
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1267
    :cond_0
    return-void
.end method

.method public getBaseURI(I)Ljava/lang/String;
    .locals 2
    .param p1, "depth"    # I

    .prologue
    .line 2841
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->scopeOfBaseURI(I)I

    move-result v0

    .line 2842
    .local v0, "scope":I
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getDTDHandler()Lmf/org/apache/xerces/xni/XMLDTDHandler;
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    return-object v0
.end method

.method public getDTDSource()Lmf/org/apache/xerces/xni/parser/XMLDTDSource;
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

    return-object v0
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "featureId"    # Ljava/lang/String;

    .prologue
    .line 714
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 719
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 715
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    goto :goto_1

    .line 714
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLanguage(I)Ljava/lang/String;
    .locals 2
    .param p1, "depth"    # I

    .prologue
    .line 2851
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->scopeOfLanguage(I)I

    move-result v0

    .line 2852
    .local v0, "scope":I
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propertyId"    # Ljava/lang/String;

    .prologue
    .line 732
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 737
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 733
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_1

    .line 732
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    sget-object v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    sget-object v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getRelativeBaseURI()Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 2136
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentDepth()I

    move-result v4

    .line 2137
    .local v4, "includeParentDepth":I
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getRelativeURI(I)Ljava/lang/String;

    move-result-object v10

    .line 2138
    .local v10, "relativeURI":Ljava/lang/String;
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v7, v10

    .line 2198
    :cond_0
    :goto_0
    return-object v7

    .line 2142
    :cond_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_2

    .line 2143
    iget-object v12, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v12}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v10

    .line 2146
    :cond_2
    if-nez v4, :cond_b

    .line 2147
    iget-object v12, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    if-nez v12, :cond_3

    .line 2149
    iget-object v12, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v12}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getRelativeBaseURI()Ljava/lang/String;

    move-result-object v12

    .line 2148
    iput-object v12, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    .line 2151
    :cond_3
    iget-object v12, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_4

    move-object v7, v10

    .line 2152
    goto :goto_0

    .line 2155
    :cond_4
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    iget-object v12, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-direct {v0, v12, v13}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    .line 2156
    .local v0, "base":Lmf/org/apache/xerces/util/URI;
    new-instance v11, Lmf/org/apache/xerces/util/URI;

    invoke-direct {v11, v0, v10}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V

    .line 2159
    .local v11, "uri":Lmf/org/apache/xerces/util/URI;
    invoke-virtual {v0}, Lmf/org/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 2160
    .local v2, "baseScheme":Ljava/lang/String;
    invoke-virtual {v11}, Lmf/org/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 2161
    .local v9, "literalScheme":Ljava/lang/String;
    invoke-direct {p0, v2, v9}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    move-object v7, v10

    .line 2162
    goto :goto_0

    .line 2166
    :cond_5
    invoke-virtual {v0}, Lmf/org/apache/xerces/util/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 2167
    .local v1, "baseAuthority":Ljava/lang/String;
    invoke-virtual {v11}, Lmf/org/apache/xerces/util/URI;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 2168
    .local v5, "literalAuthority":Ljava/lang/String;
    invoke-direct {p0, v1, v5}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 2169
    invoke-virtual {v11}, Lmf/org/apache/xerces/util/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 2177
    :cond_6
    invoke-virtual {v11}, Lmf/org/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 2178
    .local v7, "literalPath":Ljava/lang/String;
    invoke-virtual {v11}, Lmf/org/apache/xerces/util/URI;->getQueryString()Ljava/lang/String;

    move-result-object v8

    .line 2179
    .local v8, "literalQuery":Ljava/lang/String;
    invoke-virtual {v11}, Lmf/org/apache/xerces/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v6

    .line 2180
    .local v6, "literalFragment":Ljava/lang/String;
    if-nez v8, :cond_7

    if-eqz v6, :cond_0

    .line 2181
    :cond_7
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 2182
    .local v3, "buffer":Ljava/lang/StringBuffer;
    if-eqz v7, :cond_8

    .line 2183
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2185
    :cond_8
    if-eqz v8, :cond_9

    .line 2186
    const/16 v12, 0x3f

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2187
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2189
    :cond_9
    if-eqz v6, :cond_a

    .line 2190
    const/16 v12, 0x23

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2191
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2193
    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .end local v0    # "base":Lmf/org/apache/xerces/util/URI;
    .end local v1    # "baseAuthority":Ljava/lang/String;
    .end local v2    # "baseScheme":Ljava/lang/String;
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .end local v5    # "literalAuthority":Ljava/lang/String;
    .end local v6    # "literalFragment":Ljava/lang/String;
    .end local v7    # "literalPath":Ljava/lang/String;
    .end local v8    # "literalQuery":Ljava/lang/String;
    .end local v9    # "literalScheme":Ljava/lang/String;
    .end local v11    # "uri":Lmf/org/apache/xerces/util/URI;
    :cond_b
    move-object v7, v10

    .line 2198
    goto/16 :goto_0
.end method

.method public getRelativeURI(I)Ljava/lang/String;
    .locals 6
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 2867
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->scopeOfBaseURI(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 2868
    .local v1, "start":I
    iget-object v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 2870
    const-string v4, ""

    .line 2876
    :goto_0
    return-object v4

    .line 2872
    :cond_0
    new-instance v2, Lmf/org/apache/xerces/util/URI;

    const-string v5, "file"

    iget-object v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v5, v4}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2873
    .local v2, "uri":Lmf/org/apache/xerces/util/URI;
    add-int/lit8 v0, v1, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 2876
    invoke-virtual {v2}, Lmf/org/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2874
    :cond_1
    new-instance v3, Lmf/org/apache/xerces/util/URI;

    iget-object v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V

    .line 2873
    .end local v2    # "uri":Lmf/org/apache/xerces/util/URI;
    .local v3, "uri":Lmf/org/apache/xerces/util/URI;
    add-int/lit8 v0, v0, 0x1

    move-object v2, v3

    .end local v3    # "uri":Lmf/org/apache/xerces/util/URI;
    .restart local v2    # "uri":Lmf/org/apache/xerces/util/URI;
    goto :goto_1
.end method

.method protected getSawFallback(I)Z
    .locals 1
    .param p1, "depth"    # I

    .prologue
    .line 2337
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 2338
    const/4 v0, 0x0

    .line 2340
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    aget-boolean v0, v0, p1

    goto :goto_0
.end method

.method protected getSawInclude(I)Z
    .locals 1
    .param p1, "depth"    # I

    .prologue
    .line 2367
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 2368
    const/4 v0, 0x0

    .line 2370
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    aget-boolean v0, v0, p1

    goto :goto_0
.end method

.method protected getState()I
    .locals 2

    .prologue
    .line 2300
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    aget v0, v0, v1

    return v0
.end method

.method protected getState(I)I
    .locals 1
    .param p1, "depth"    # I

    .prologue
    .line 2296
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    aget v0, v0, p1

    return v0
.end method

.method protected handleFallbackElement()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1434
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1435
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 1438
    :cond_1
    const-string v0, "FallbackParent"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    .line 1441
    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setSawInclude(IZ)V

    .line 1442
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    .line 1444
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1445
    const-string v0, "MultipleFallbacks"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    .line 1454
    :goto_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1455
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    goto :goto_0

    .line 1448
    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setSawFallback(IZ)V

    goto :goto_1
.end method

.method protected handleIncludeElement(Lmf/org/apache/xerces/xni/XMLAttributes;)Z
    .locals 36
    .param p1, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1461
    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1462
    const-string v2, "IncludeChild"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_INCLUDE:Ljava/lang/String;

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1464
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1465
    const/4 v2, 0x1

    .line 1824
    :goto_0
    return v2

    .line 1467
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setSawInclude(IZ)V

    .line 1468
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    .line 1476
    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_HREF:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1477
    .local v23, "href":Ljava/lang/String;
    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_PARSE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1478
    .local v30, "parse":Ljava/lang/String;
    const-string v2, "xpointer"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1479
    .local v35, "xpointer":Ljava/lang/String;
    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ACCEPT:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1480
    .local v6, "accept":Ljava/lang/String;
    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ACCEPT_LANGUAGE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1482
    .local v7, "acceptLanguage":Ljava/lang/String;
    if-nez v30, :cond_2

    .line 1483
    sget-object v30, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_XML:Ljava/lang/String;

    .line 1485
    :cond_2
    if-nez v23, :cond_3

    .line 1486
    sget-object v23, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 1488
    :cond_3
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_XML:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1489
    if-nez v35, :cond_16

    .line 1490
    const-string v2, "XpointerMissing"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    .line 1502
    :cond_4
    const/16 v24, 0x0

    .line 1508
    .local v24, "hrefURI":Lmf/org/apache/xerces/util/URI;
    :try_start_0
    new-instance v25, Lmf/org/apache/xerces/util/URI;

    const/4 v2, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1509
    .end local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .local v25, "hrefURI":Lmf/org/apache/xerces/util/URI;
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Lmf/org/apache/xerces/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 1510
    const-string v2, "HrefFragmentIdentifierIllegal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_1 .. :try_end_1} :catch_f

    move-object/from16 v24, v25

    .line 1534
    .end local v25    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .restart local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    :cond_5
    :goto_1
    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isValidInHTTPHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1535
    const-string v2, "AcceptMalformed"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1536
    const/4 v6, 0x0

    .line 1538
    :cond_6
    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isValidInHTTPHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1539
    const-string v2, "AcceptLanguageMalformed"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1540
    const/4 v7, 0x0

    .line 1543
    :cond_7
    const/16 v26, 0x0

    .line 1544
    .local v26, "includedSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-eqz v2, :cond_9

    .line 1547
    :try_start_2
    new-instance v33, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    .line 1548
    const/4 v2, 0x0

    .line 1550
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    .line 1553
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    .line 1554
    const/4 v5, 0x0

    .line 1551
    move-object/from16 v0, v23

    invoke-static {v0, v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1547
    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1, v3, v4}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    .local v33, "resourceIdentifier":Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    move-object/from16 v0, v33

    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;->resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v26

    .line 1559
    if-eqz v26, :cond_9

    .line 1560
    move-object/from16 v0, v26

    instance-of v2, v0, Lmf/org/apache/xerces/util/HTTPInputSource;

    if-nez v2, :cond_9

    .line 1561
    if-nez v6, :cond_8

    if-eqz v7, :cond_9

    .line 1562
    :cond_8
    invoke-virtual/range {v26 .. v26}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v2

    if-nez v2, :cond_9

    .line 1563
    invoke-virtual/range {v26 .. v26}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_9

    .line 1565
    invoke-virtual/range {v26 .. v26}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    .line 1566
    invoke-virtual/range {v26 .. v26}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p0

    .line 1565
    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->createInputSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v26

    .line 1577
    .end local v33    # "resourceIdentifier":Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    :cond_9
    if-nez v26, :cond_b

    .line 1579
    if-nez v6, :cond_a

    if-eqz v7, :cond_1a

    .line 1580
    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v4, v23

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->createInputSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v26

    .line 1587
    :cond_b
    :goto_2
    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_XML:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1589
    if-eqz v35, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPointerChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v2, :cond_d

    .line 1590
    :cond_c
    if-nez v35, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-nez v2, :cond_13

    .line 1592
    :cond_d
    const-string v31, "mf.org.apache.xerces.parsers.XIncludeParserConfiguration"

    .line 1594
    .local v31, "parserName":Ljava/lang/String;
    if-eqz v35, :cond_e

    .line 1595
    const-string v31, "mf.org.apache.xerces.parsers.XPointerParserConfiguration"

    .line 1600
    :cond_e
    invoke-static {}, Lmf/org/apache/xerces/xinclude/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1601
    const/4 v3, 0x1

    .line 1598
    move-object/from16 v0, v31

    invoke-static {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 1597
    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 1604
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1605
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1606
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/properties/internal/entity-resolver"

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1607
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/properties/security-manager"

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/properties/input-buffer-size"

    new-instance v4, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1611
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    .line 1614
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 1615
    const-string v3, "http://apache.org/xml/properties/internal/namespace-context"

    .line 1617
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    .line 1614
    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1619
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 1620
    const-string v3, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    .line 1621
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    .line 1619
    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 1623
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 1624
    const-string v3, "http://apache.org/xml/features/xinclude/fixup-language"

    .line 1625
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    .line 1623
    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 1629
    if-eqz v35, :cond_1d

    .line 1632
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 1633
    const-string v3, "http://apache.org/xml/properties/internal/xpointer-handler"

    .line 1632
    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lmf/org/apache/xerces/xpointer/XPointerHandler;

    .line 1636
    .local v28, "newHandler":Lmf/org/apache/xerces/xpointer/XPointerHandler;
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    .line 1639
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    check-cast v2, Lmf/org/apache/xerces/xpointer/XPointerHandler;

    .line 1640
    const-string v3, "http://apache.org/xml/properties/internal/namespace-context"

    .line 1642
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    .line 1639
    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1644
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    check-cast v2, Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string v4, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    .line 1645
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    if-eqz v3, :cond_1b

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1644
    :goto_3
    invoke-virtual {v2, v4, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1647
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    check-cast v2, Lmf/org/apache/xerces/xpointer/XPointerHandler;

    .line 1648
    const-string v4, "http://apache.org/xml/features/xinclude/fixup-language"

    .line 1649
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    if-eqz v3, :cond_1c

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1647
    :goto_4
    invoke-virtual {v2, v4, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1651
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-eqz v2, :cond_12

    .line 1652
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    check-cast v2, Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1655
    :cond_12
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setParent(Lmf/org/apache/xerces/xinclude/XIncludeHandler;)V

    .line 1656
    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setHref(Ljava/lang/String;)V

    .line 1657
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setXIncludeLocator(Lmf/org/apache/xerces/util/XMLLocatorWrapper;)V

    .line 1658
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1659
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPointerChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 1675
    .end local v28    # "newHandler":Lmf/org/apache/xerces/xpointer/XPointerHandler;
    .end local v31    # "parserName":Ljava/lang/String;
    :cond_13
    :goto_5
    if-eqz v35, :cond_1e

    .line 1676
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPointerChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 1680
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    move-object/from16 v0, v35

    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xpointer/XPointerProcessor;->parseXPointer(Ljava/lang/String;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1694
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    if-eqz v2, :cond_14

    .line 1695
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->copyFeatures(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 1697
    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    .line 1700
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    .line 1701
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->pushScope()V

    .line 1703
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, v26

    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    .line 1705
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->setLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    .line 1706
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-eqz v2, :cond_15

    .line 1707
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    .line 1711
    :cond_15
    if-eqz v35, :cond_24

    .line 1713
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    invoke-interface {v2}, Lmf/org/apache/xerces/xpointer/XPointerProcessor;->isXPointerResolved()Z

    move-result v2

    if-nez v2, :cond_24

    .line 1714
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v27

    .line 1715
    .local v27, "locale":Ljava/util/Locale;
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeMessageFormatter:Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;

    const-string v3, "XPointerResolutionUnsuccessful"

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v3, v4}, Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    .line 1716
    .local v32, "reason":Ljava/lang/String;
    const-string v2, "XMLResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    aput-object v32, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1752
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->popScope()V

    .line 1718
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1495
    .end local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .end local v26    # "includedSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .end local v27    # "locale":Ljava/util/Locale;
    .end local v32    # "reason":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v27

    .line 1496
    .restart local v27    # "locale":Ljava/util/Locale;
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeMessageFormatter:Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;

    const-string v3, "XPointerStreamability"

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v3, v4}, Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    .line 1497
    .restart local v32    # "reason":Ljava/lang/String;
    const-string v2, "XMLResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    aput-object v32, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1498
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1495
    .end local v27    # "locale":Ljava/util/Locale;
    .end local v32    # "reason":Ljava/lang/String;
    :cond_17
    const/16 v27, 0x0

    goto :goto_8

    .line 1513
    .restart local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    :catch_0
    move-exception v21

    move-object/from16 v25, v24

    .line 1514
    .end local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .local v21, "exc":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    .restart local v25    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->escapeHref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1515
    .local v29, "newHref":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_18

    .line 1516
    move-object/from16 v23, v29

    .line 1518
    :try_start_5
    new-instance v24, Lmf/org/apache/xerces/util/URI;

    const/4 v2, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V
    :try_end_5
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_5 .. :try_end_5} :catch_e

    .line 1519
    .end local v25    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .restart local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    :try_start_6
    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1520
    const-string v2, "HrefFragmentIdentifierIllegal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 1523
    :catch_1
    move-exception v22

    .line 1524
    .local v22, "exc2":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    :goto_a
    const-string v2, "HrefSyntacticallyInvalid"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1528
    .end local v22    # "exc2":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    .end local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .restart local v25    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    :cond_18
    const-string v2, "HrefSyntacticallyInvalid"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v21    # "exc":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    .end local v29    # "newHref":Ljava/lang/String;
    :cond_19
    move-object/from16 v24, v25

    .end local v25    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .restart local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    goto/16 :goto_1

    .line 1569
    .restart local v26    # "includedSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :catch_2
    move-exception v19

    .line 1571
    .local v19, "e":Ljava/io/IOException;
    const-string v2, "XMLResourceError"

    .line 1572
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1570
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 1573
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1583
    .end local v19    # "e":Ljava/io/IOException;
    :cond_1a
    new-instance v26, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .end local v26    # "includedSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v26    # "includedSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    goto/16 :goto_2

    .line 1645
    .restart local v28    # "newHandler":Lmf/org/apache/xerces/xpointer/XPointerHandler;
    .restart local v31    # "parserName":Ljava/lang/String;
    :cond_1b
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_3

    .line 1649
    :cond_1c
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_4

    .line 1662
    .end local v28    # "newHandler":Lmf/org/apache/xerces/xpointer/XPointerHandler;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 1663
    const-string v3, "http://apache.org/xml/properties/internal/xinclude-handler"

    .line 1662
    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    .line 1666
    .local v28, "newHandler":Lmf/org/apache/xerces/xinclude/XIncludeHandler;
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setParent(Lmf/org/apache/xerces/xinclude/XIncludeHandler;)V

    .line 1667
    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setHref(Ljava/lang/String;)V

    .line 1668
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setXIncludeLocator(Lmf/org/apache/xerces/util/XMLLocatorWrapper;)V

    .line 1669
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1670
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    goto/16 :goto_5

    .line 1682
    .end local v28    # "newHandler":Lmf/org/apache/xerces/xinclude/XIncludeHandler;
    .end local v31    # "parserName":Ljava/lang/String;
    :catch_3
    move-exception v13

    .line 1685
    .local v13, "ex":Lmf/org/apache/xerces/xni/XNIException;
    const-string v2, "XMLResourceError"

    .line 1686
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v13}, Lmf/org/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1684
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1687
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1690
    .end local v13    # "ex":Lmf/org/apache/xerces/xni/XNIException;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    goto/16 :goto_6

    .line 1714
    :cond_1f
    const/16 v27, 0x0

    goto/16 :goto_7

    .line 1722
    :catch_4
    move-exception v19

    .line 1724
    .local v19, "e":Lmf/org/apache/xerces/xni/XNIException;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->setLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-eqz v2, :cond_20

    .line 1726
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    .line 1728
    :cond_20
    const-string v2, "XMLParseError"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1752
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->popScope()V

    .line 1824
    .end local v19    # "e":Lmf/org/apache/xerces/xni/XNIException;
    :cond_21
    :goto_b
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1730
    :catch_5
    move-exception v19

    .line 1732
    .local v19, "e":Ljava/io/IOException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->setLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    .line 1733
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-eqz v2, :cond_22

    .line 1734
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    .line 1740
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    if-eqz v2, :cond_23

    .line 1741
    new-instance v2, Lmf/org/apache/xerces/xni/XNIException;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1751
    .end local v19    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 1752
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v3}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->popScope()V

    .line 1753
    throw v2

    .line 1747
    .restart local v19    # "e":Ljava/io/IOException;
    :cond_23
    :try_start_9
    const-string v2, "XMLResourceError"

    .line 1748
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1746
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1752
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->popScope()V

    .line 1749
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1752
    .end local v19    # "e":Ljava/io/IOException;
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->popScope()V

    goto :goto_b

    .line 1755
    :cond_25
    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_TEXT:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1757
    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ENCODING:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1758
    .local v20, "encoding":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    .line 1759
    const/16 v34, 0x0

    .line 1762
    .local v34, "textReader":Lmf/org/apache/xerces/xinclude/XIncludeTextReader;
    const/4 v2, 0x0

    :try_start_a
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    .line 1765
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fIsXML11:Z

    if-nez v2, :cond_27

    .line 1766
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    if-nez v2, :cond_26

    .line 1767
    new-instance v2, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1, v3}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;-><init>(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/xinclude/XIncludeHandler;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    .line 1772
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v34, v0

    .line 1783
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->setErrorReporter(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 1784
    invoke-virtual/range {v34 .. v34}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->parse()V
    :try_end_a
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/CharConversionException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1808
    if-eqz v34, :cond_21

    .line 1810
    :try_start_b
    invoke-virtual/range {v34 .. v34}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_b

    .line 1812
    :catch_6
    move-exception v19

    .line 1814
    .restart local v19    # "e":Ljava/io/IOException;
    const-string v2, "TextResourceError"

    .line 1815
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1813
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 1816
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1770
    .end local v19    # "e":Ljava/io/IOException;
    :cond_26
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_c
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/io/CharConversionException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_c

    .line 1787
    :catch_7
    move-exception v13

    .line 1788
    .local v13, "ex":Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
    :try_start_d
    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 1789
    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x2

    .line 1788
    invoke-virtual/range {v8 .. v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1808
    if-eqz v34, :cond_21

    .line 1810
    :try_start_e
    invoke-virtual/range {v34 .. v34}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_b

    .line 1812
    :catch_8
    move-exception v19

    .line 1814
    .restart local v19    # "e":Ljava/io/IOException;
    const-string v2, "TextResourceError"

    .line 1815
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1813
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 1816
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1775
    .end local v13    # "ex":Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
    .end local v19    # "e":Ljava/io/IOException;
    :cond_27
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    if-nez v2, :cond_28

    .line 1776
    new-instance v2, Lmf/org/apache/xerces/xinclude/XInclude11TextReader;

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1, v3}, Lmf/org/apache/xerces/xinclude/XInclude11TextReader;-><init>(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/xinclude/XIncludeHandler;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    .line 1781
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v34, v0

    goto/16 :goto_d

    .line 1779
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_f
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/io/CharConversionException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_e

    .line 1791
    :catch_9
    move-exception v19

    .line 1792
    .local v19, "e":Ljava/io/CharConversionException;
    :try_start_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v15, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1793
    const-string v16, "CharConversionFailure"

    const/16 v17, 0x0

    const/16 v18, 0x2

    .line 1792
    invoke-virtual/range {v14 .. v19}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1808
    if-eqz v34, :cond_21

    .line 1810
    :try_start_11
    invoke-virtual/range {v34 .. v34}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    goto/16 :goto_b

    .line 1812
    :catch_a
    move-exception v19

    .line 1814
    .local v19, "e":Ljava/io/IOException;
    const-string v2, "TextResourceError"

    .line 1815
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1813
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 1816
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1795
    .end local v19    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v19

    .line 1799
    .restart local v19    # "e":Ljava/io/IOException;
    :try_start_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    if-eqz v2, :cond_2a

    .line 1800
    new-instance v2, Lmf/org/apache/xerces/xni/XNIException;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 1807
    .end local v19    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    .line 1808
    if-eqz v34, :cond_29

    .line 1810
    :try_start_13
    invoke-virtual/range {v34 .. v34}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d

    .line 1819
    :cond_29
    throw v2

    .line 1803
    .restart local v19    # "e":Ljava/io/IOException;
    :cond_2a
    :try_start_14
    const-string v2, "TextResourceError"

    .line 1804
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1802
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 1808
    if-eqz v34, :cond_2b

    .line 1810
    :try_start_15
    invoke-virtual/range {v34 .. v34}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c

    .line 1805
    :cond_2b
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1812
    :catch_c
    move-exception v19

    .line 1814
    const-string v2, "TextResourceError"

    .line 1815
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1813
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 1816
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1812
    .end local v19    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v19

    .line 1814
    .restart local v19    # "e":Ljava/io/IOException;
    const-string v2, "TextResourceError"

    .line 1815
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1813
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 1816
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1822
    .end local v19    # "e":Ljava/io/IOException;
    .end local v20    # "encoding":Ljava/lang/String;
    .end local v34    # "textReader":Lmf/org/apache/xerces/xinclude/XIncludeTextReader;
    :cond_2c
    const-string v2, "InvalidParseValue"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v30, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 1523
    .end local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .end local v26    # "includedSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .restart local v21    # "exc":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    .restart local v25    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .restart local v29    # "newHref":Ljava/lang/String;
    :catch_e
    move-exception v22

    move-object/from16 v24, v25

    .end local v25    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .restart local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    goto/16 :goto_a

    .line 1513
    .end local v21    # "exc":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    .end local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .end local v29    # "newHref":Ljava/lang/String;
    .restart local v25    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    :catch_f
    move-exception v21

    goto/16 :goto_9
.end method

.method protected hasXIncludeNamespace(Lmf/org/apache/xerces/xni/QName;)Z
    .locals 2
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    .line 1836
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_NS_URI:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 1837
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_NS_URI:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 1836
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1122
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1124
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1127
    :cond_0
    return-void
.end method

.method public ignoredCharacters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1281
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->ignoredCharacters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1284
    :cond_0
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "nonNormalizedText"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p4, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1295
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1302
    :cond_0
    return-void
.end method

.method protected isFallbackElement(Lmf/org/apache/xerces/xni/QName;)Z
    .locals 2
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    .line 1862
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_FALLBACK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1863
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->hasXIncludeNamespace(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1862
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isIncludeElement(Lmf/org/apache/xerces/xni/QName;)Z
    .locals 2
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    .line 1849
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_INCLUDE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1850
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->hasXIncludeNamespace(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1849
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRootDocument()Z
    .locals 1

    .prologue
    .line 2428
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTopLevelIncludedItem()Z
    .locals 1

    .prologue
    .line 1961
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isTopLevelIncludedItemViaInclude()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1962
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isTopLevelIncludedItemViaFallback()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1961
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isTopLevelIncludedItemViaFallback()Z
    .locals 1

    .prologue
    .line 1974
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v0

    return v0
.end method

.method protected isTopLevelIncludedItemViaInclude()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1966
    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;

    .prologue
    .line 2273
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;Z)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    return-object v0
.end method

.method protected modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;Z)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 2
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .param p2, "force"    # Z

    .prologue
    .line 2286
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isTopLevelIncludedItem()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2287
    :cond_0
    if-nez p1, :cond_1

    .line 2288
    new-instance p1, Lmf/org/apache/xerces/util/AugmentationsImpl;

    .end local p1    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    invoke-direct {p1}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    .line 2290
    .restart local p1    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    :cond_1
    sget-object v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_INCLUDED:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2292
    :cond_2
    return-object p1
.end method

.method public notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1312
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->addNotation(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1313
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 1314
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1316
    :cond_0
    return-void
.end method

.method protected processAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xni/XMLAttributes;
    .locals 20
    .param p1, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;

    .prologue
    .line 1992
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isTopLevelIncludedItem()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1996
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->sameBaseURIAsIncludeParent()Z

    move-result v17

    if-nez v17, :cond_1

    .line 1997
    if-nez p1, :cond_0

    .line 1998
    new-instance p1, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    .end local p1    # "attributes":Lmf/org/apache/xerces/xni/XMLAttributes;
    invoke-direct/range {p1 .. p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    .line 2003
    .restart local p1    # "attributes":Lmf/org/apache/xerces/xni/XMLAttributes;
    :cond_0
    const/4 v15, 0x0

    .line 2005
    .local v15, "uri":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getRelativeBaseURI()Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 2014
    :goto_0
    sget-object v17, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XML_BASE_QNAME:Lmf/org/apache/xerces/xni/QName;

    .line 2015
    sget-object v18, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    .line 2013
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v15}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2017
    .local v7, "index":I
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v7, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setSpecified(IZ)V

    .line 2023
    .end local v7    # "index":I
    .end local v15    # "uri":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->sameLanguageAsIncludeParent()Z

    move-result v17

    if-nez v17, :cond_3

    .line 2024
    if-nez p1, :cond_2

    .line 2025
    new-instance p1, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    .end local p1    # "attributes":Lmf/org/apache/xerces/xni/XMLAttributes;
    invoke-direct/range {p1 .. p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    .line 2029
    .restart local p1    # "attributes":Lmf/org/apache/xerces/xni/XMLAttributes;
    :cond_2
    sget-object v17, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XML_LANG_QNAME:Lmf/org/apache/xerces/xni/QName;

    .line 2030
    sget-object v18, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    .line 2031
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 2028
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2032
    .restart local v7    # "index":I
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v7, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setSpecified(IZ)V

    .line 2036
    .end local v7    # "index":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->getAllPrefixes()Ljava/util/Enumeration;

    move-result-object v8

    .line 2037
    .local v8, "inscopeNS":Ljava/util/Enumeration;
    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-nez v17, :cond_7

    .line 2097
    .end local v8    # "inscopeNS":Ljava/util/Enumeration;
    :cond_5
    if-eqz p1, :cond_6

    .line 2098
    invoke-interface/range {p1 .. p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v9

    .line 2099
    .local v9, "length":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-lt v6, v9, :cond_e

    .line 2126
    .end local v6    # "i":I
    .end local v9    # "length":I
    :cond_6
    return-object p1

    .line 2007
    .restart local v15    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 2010
    .local v4, "e":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 2038
    .end local v4    # "e":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    .end local v15    # "uri":Ljava/lang/String;
    .restart local v8    # "inscopeNS":Ljava/util/Enumeration;
    :cond_7
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2040
    .local v12, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->getURIFromIncludeParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2041
    .local v11, "parentURI":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2042
    .restart local v15    # "uri":Ljava/lang/String;
    if-eq v11, v15, :cond_4

    if-eqz p1, :cond_4

    .line 2043
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v12, v0, :cond_a

    .line 2046
    sget-object v17, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    .line 2047
    sget-object v18, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    .line 2045
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2044
    if-nez v17, :cond_4

    .line 2049
    if-nez p1, :cond_8

    .line 2050
    new-instance p1, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    .end local p1    # "attributes":Lmf/org/apache/xerces/xni/XMLAttributes;
    invoke-direct/range {p1 .. p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    .line 2053
    .restart local p1    # "attributes":Lmf/org/apache/xerces/xni/XMLAttributes;
    :cond_8
    sget-object v17, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->NEW_NS_ATTR_QNAME:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/xni/QName;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/xni/QName;

    .line 2054
    .local v10, "ns":Lmf/org/apache/xerces/xni/QName;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v10, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 2055
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v10, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 2056
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v10, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 2060
    sget-object v18, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    .line 2061
    if-eqz v15, :cond_9

    move-object/from16 v17, v15

    .line 2058
    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v10, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2062
    .restart local v7    # "index":I
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v7, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setSpecified(IZ)V

    .line 2066
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v15}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 2061
    .end local v7    # "index":I
    :cond_9
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_3

    .line 2070
    .end local v10    # "ns":Lmf/org/apache/xerces/xni/QName;
    :cond_a
    sget-object v17, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v12}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_4

    .line 2072
    if-nez p1, :cond_b

    .line 2073
    new-instance p1, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    .end local p1    # "attributes":Lmf/org/apache/xerces/xni/XMLAttributes;
    invoke-direct/range {p1 .. p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    .line 2076
    .restart local p1    # "attributes":Lmf/org/apache/xerces/xni/XMLAttributes;
    :cond_b
    sget-object v17, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->NEW_NS_ATTR_QNAME:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/xni/QName;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/xni/QName;

    .line 2077
    .restart local v10    # "ns":Lmf/org/apache/xerces/xni/QName;
    iput-object v12, v10, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 2078
    iget-object v0, v10, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 2079
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 2080
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v17, v0

    iget-object v0, v10, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2079
    :goto_4
    move-object/from16 v0, v17

    iput-object v0, v10, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 2085
    sget-object v18, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    .line 2086
    if-eqz v15, :cond_d

    move-object/from16 v17, v15

    .line 2083
    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v10, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2087
    .restart local v7    # "index":I
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v7, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setSpecified(IZ)V

    .line 2091
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v15}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 2081
    .end local v7    # "index":I
    :cond_c
    iget-object v0, v10, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v17

    goto :goto_4

    .line 2086
    :cond_d
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_5

    .line 2100
    .end local v8    # "inscopeNS":Ljava/util/Enumeration;
    .end local v10    # "ns":Lmf/org/apache/xerces/xni/QName;
    .end local v11    # "parentURI":Ljava/lang/String;
    .end local v12    # "prefix":Ljava/lang/String;
    .end local v15    # "uri":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v9    # "length":I
    :cond_e
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v14

    .line 2101
    .local v14, "type":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v16

    .line 2102
    .local v16, "value":Ljava/lang/String;
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v14, v0, :cond_f

    .line 2103
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkUnparsedEntity(Ljava/lang/String;)V

    .line 2105
    :cond_f
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v14, v0, :cond_12

    .line 2107
    new-instance v13, Ljava/util/StringTokenizer;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 2108
    .local v13, "st":Ljava/util/StringTokenizer;
    :goto_6
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v17

    if-nez v17, :cond_11

    .line 2099
    .end local v13    # "st":Ljava/util/StringTokenizer;
    :cond_10
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 2109
    .restart local v13    # "st":Ljava/util/StringTokenizer;
    :cond_11
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 2110
    .local v5, "entName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkUnparsedEntity(Ljava/lang/String;)V

    goto :goto_6

    .line 2113
    .end local v5    # "entName":Ljava/lang/String;
    .end local v13    # "st":Ljava/util/StringTokenizer;
    :cond_12
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v14, v0, :cond_10

    .line 2115
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkNotation(Ljava/lang/String;)V

    goto :goto_7
.end method

.method protected processXMLBaseAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 4
    .param p1, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;

    .prologue
    .line 2906
    sget-object v2, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    const-string v3, "base"

    invoke-interface {p1, v2, v3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2907
    .local v0, "baseURIValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2912
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    .line 2913
    const/4 v3, 0x0

    .line 2910
    invoke-static {v0, v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2914
    .local v1, "expandedValue":Ljava/lang/String;
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setLiteralSystemId(Ljava/lang/String;)V

    .line 2915
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    .line 2916
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    .line 2915
    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setBaseSystemId(Ljava/lang/String;)V

    .line 2917
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setExpandedSystemId(Ljava/lang/String;)V

    .line 2920
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->saveBaseURI()V
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2926
    .end local v1    # "expandedValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2922
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected processXMLLangAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 3
    .param p1, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;

    .prologue
    .line 2933
    sget-object v1, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    const-string v2, "lang"

    invoke-interface {p1, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2934
    .local v0, "language":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2935
    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    .line 2936
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->saveLanguage(Ljava/lang/String;)V

    .line 2938
    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 860
    iget-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fInDTD:Z

    if-nez v0, :cond_1

    .line 861
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 864
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    .line 865
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    .line 866
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 867
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method protected reportFatalError(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2386
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2387
    return-void
.end method

.method protected reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 2390
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 2391
    return-void
.end method

.method protected reportFatalError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 2394
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)V

    .line 2395
    return-void
.end method

.method protected reportResourceError(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2374
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2375
    return-void
.end method

.method protected reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 2378
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 2379
    return-void
.end method

.method protected reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 2382
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)V

    .line 2383
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 8
    .param p1, "componentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 390
    iput-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    .line 391
    iput v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    .line 392
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    iput v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    .line 393
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 394
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 395
    iput-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    .line 396
    iput-boolean v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fIsXML11:Z

    .line 397
    iput-boolean v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fInDTD:Z

    .line 398
    iput-boolean v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSeenRootElement:Z

    .line 400
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/IntStack;->clear()V

    .line 401
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->clear()V

    .line 402
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->clear()V

    .line 403
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->clear()V

    .line 404
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/IntStack;->clear()V

    .line 405
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->clear()V

    .line 413
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    array-length v3, v3

    if-lt v1, v3, :cond_2

    .line 416
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    array-length v3, v3

    if-lt v1, v3, :cond_3

    .line 419
    const/4 v1, 0x0

    :goto_3
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    array-length v3, v3

    if-lt v1, v3, :cond_4

    .line 424
    :try_start_0
    const-string v3, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_5

    .line 592
    :cond_0
    :goto_4
    return-void

    .line 392
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getResultDepth()I

    move-result v3

    goto :goto_0

    .line 414
    .restart local v1    # "i":I
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    aput v7, v3, v1

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 417
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    aput-boolean v4, v3, v1

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 420
    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    aput-boolean v4, v3, v1

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 429
    :catch_0
    move-exception v3

    .line 432
    :cond_5
    iput-boolean v7, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    .line 436
    :try_start_1
    const-string v3, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    .line 435
    iput-boolean v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    .line 437
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v3, :cond_6

    .line 438
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 439
    const-string v4, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    .line 440
    iget-boolean v5, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    .line 438
    invoke-interface {v3, v4, v5}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_9

    .line 448
    :cond_6
    :goto_5
    :try_start_2
    const-string v3, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    .line 447
    iput-boolean v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    .line 449
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v3, :cond_7

    .line 450
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 451
    const-string v4, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    .line 452
    iget-boolean v5, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    .line 450
    invoke-interface {v3, v4, v5}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 461
    :cond_7
    :goto_6
    :try_start_3
    const-string v3, "http://apache.org/xml/features/xinclude/fixup-language"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    .line 460
    iput-boolean v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    .line 462
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v3, :cond_8

    .line 463
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 464
    const-string v4, "http://apache.org/xml/features/xinclude/fixup-language"

    .line 465
    iget-boolean v5, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    .line 463
    invoke-interface {v3, v4, v5}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 475
    :cond_8
    :goto_7
    :try_start_4
    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/util/SymbolTable;

    .line 476
    .local v2, "value":Lmf/org/apache/xerces/util/SymbolTable;
    if-eqz v2, :cond_9

    .line 477
    iput-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 478
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v3, :cond_9

    .line 479
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v3, v4, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    .line 490
    .end local v2    # "value":Lmf/org/apache/xerces/util/SymbolTable;
    :cond_9
    :goto_8
    :try_start_5
    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 491
    .local v2, "value":Lmf/org/apache/xerces/impl/XMLErrorReporter;
    if-eqz v2, :cond_a

    .line 492
    invoke-direct {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setErrorReporter(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 493
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v3, :cond_a

    .line 494
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {v3, v4, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    .line 506
    .end local v2    # "value":Lmf/org/apache/xerces/impl/XMLErrorReporter;
    :cond_a
    :goto_9
    :try_start_6
    const-string v3, "http://apache.org/xml/properties/internal/entity-resolver"

    .line 505
    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .line 508
    .local v2, "value":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    if-eqz v2, :cond_b

    .line 509
    iput-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .line 510
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v3, :cond_b

    .line 511
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v3, v4, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    .line 523
    .end local v2    # "value":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    :cond_b
    :goto_a
    :try_start_7
    const-string v3, "http://apache.org/xml/properties/security-manager"

    .line 522
    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/util/SecurityManager;

    .line 525
    .local v2, "value":Lmf/org/apache/xerces/util/SecurityManager;
    if-eqz v2, :cond_c

    .line 526
    iput-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    .line 527
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v3, :cond_c

    .line 528
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/properties/security-manager"

    invoke-interface {v3, v4, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    .line 540
    .end local v2    # "value":Lmf/org/apache/xerces/util/SecurityManager;
    :cond_c
    :goto_b
    :try_start_8
    const-string v3, "http://apache.org/xml/properties/input-buffer-size"

    .line 539
    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 542
    .local v2, "value":Ljava/lang/Integer;
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_10

    .line 543
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    .line 544
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v3, :cond_d

    .line 545
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/properties/input-buffer-size"

    invoke-interface {v3, v4, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    .line 557
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_d
    :goto_c
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    if-eqz v3, :cond_e

    .line 558
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    iget v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->setBufferSize(I)V

    .line 561
    :cond_e
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    if-eqz v3, :cond_f

    .line 562
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    iget v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->setBufferSize(I)V

    .line 565
    :cond_f
    new-instance v3, Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-direct {v3}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    .line 566
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {p0, p1, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->copyFeatures(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/util/ParserConfigurationSettings;)V

    .line 571
    :try_start_9
    const-string v3, "http://apache.org/xml/features/validation/schema"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 572
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string v4, "http://apache.org/xml/features/validation/schema"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    .line 576
    sget-object v3, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    const-string v4, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-interface {p1, v4}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 577
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string v4, "http://xml.org/sax/features/validation"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V
    :try_end_9
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_4

    .line 588
    :catch_1
    move-exception v3

    goto/16 :goto_4

    .line 455
    :catch_2
    move-exception v0

    .line 456
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v7, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    goto/16 :goto_6

    .line 468
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_3
    move-exception v0

    .line 469
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v7, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    goto/16 :goto_7

    .line 483
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_4
    move-exception v0

    .line 484
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    goto/16 :goto_8

    .line 498
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_5
    move-exception v0

    .line 499
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    goto/16 :goto_9

    .line 515
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_6
    move-exception v0

    .line 516
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    goto/16 :goto_a

    .line 532
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_7
    move-exception v0

    .line 533
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    goto/16 :goto_b

    .line 549
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    .restart local v2    # "value":Ljava/lang/Integer;
    :cond_10
    :try_start_a
    const-string v3, "http://apache.org/xml/properties/input-buffer-size"

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I
    :try_end_a
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_c

    .line 552
    .end local v2    # "value":Ljava/lang/Integer;
    :catch_8
    move-exception v0

    .line 553
    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    const-string v3, "http://apache.org/xml/properties/input-buffer-size"

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    goto/16 :goto_c

    .line 583
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :cond_11
    :try_start_b
    const-string v3, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 584
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string v4, "http://apache.org/xml/features/validation/dynamic"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V
    :try_end_b
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_4

    .line 443
    :catch_9
    move-exception v3

    goto/16 :goto_5
.end method

.method protected restoreBaseURI()V
    .locals 2

    .prologue
    .line 2805
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2806
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2807
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2808
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    .line 2809
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setBaseSystemId(Ljava/lang/String;)V

    .line 2810
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setLiteralSystemId(Ljava/lang/String;)V

    .line 2811
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setExpandedSystemId(Ljava/lang/String;)V

    .line 2812
    return-void
.end method

.method public restoreLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2830
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2831
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    .line 2832
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected sameBaseURIAsIncludeParent()Z
    .locals 3

    .prologue
    .line 1876
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentBaseURI()Ljava/lang/String;

    move-result-object v1

    .line 1877
    .local v1, "parentBaseURI":Ljava/lang/String;
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    .line 1886
    .local v0, "baseURI":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected sameLanguageAsIncludeParent()Z
    .locals 2

    .prologue
    .line 1902
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1903
    .local v0, "parentLanguage":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected saveBaseURI()V
    .locals 2

    .prologue
    .line 2795
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 2796
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2797
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2798
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2799
    return-void
.end method

.method protected saveLanguage(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 2822
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 2823
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2824
    return-void
.end method

.method protected searchForRecursiveIncludes(Ljava/lang/String;)Z
    .locals 1
    .param p1, "includedSysId"    # Ljava/lang/String;

    .prologue
    .line 1943
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1944
    const/4 v0, 0x1

    .line 1950
    :goto_0
    return v0

    .line 1946
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    if-nez v0, :cond_1

    .line 1947
    const/4 v0, 0x0

    goto :goto_0

    .line 1950
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->searchForRecursiveIncludes(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V
    .locals 0
    .param p1, "handler"    # Lmf/org/apache/xerces/xni/XMLDTDHandler;

    .prologue
    .line 1416
    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    .line 1417
    return-void
.end method

.method public setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V
    .locals 0
    .param p1, "source"    # Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

    .prologue
    .line 1322
    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

    .line 1323
    return-void
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 1
    .param p1, "handler"    # Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .prologue
    .line 741
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eq v0, p1, :cond_1

    .line 742
    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .line 743
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 746
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPointerChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPointerChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 750
    :cond_1
    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0
    .param p1, "source"    # Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .prologue
    .line 1157
    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 1158
    return-void
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
    .line 620
    const-string v0, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iput-boolean p2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    .line 623
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    if-eqz v0, :cond_1

    .line 624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    .line 625
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    .line 627
    :cond_1
    return-void
.end method

.method protected setHref(Ljava/lang/String;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 2419
    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHrefFromParent:Ljava/lang/String;

    .line 2420
    return-void
.end method

.method protected setParent(Lmf/org/apache/xerces/xinclude/XIncludeHandler;)V
    .locals 0
    .param p1, "parent"    # Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    .prologue
    .line 2415
    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    .line 2416
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 655
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p2

    .line 656
    check-cast v1, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 657
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v1, :cond_0

    .line 658
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p2

    .line 663
    check-cast v1, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setErrorReporter(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 664
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v1, :cond_0

    .line 665
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 669
    :cond_2
    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p2

    .line 670
    check-cast v1, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .line 671
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v1, :cond_0

    .line 672
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 676
    :cond_3
    const-string v1, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p2

    .line 677
    check-cast v1, Lmf/org/apache/xerces/util/SecurityManager;

    iput-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    .line 678
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v1, :cond_0

    .line 679
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 683
    :cond_4
    const-string v1, "http://apache.org/xml/properties/input-buffer-size"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 684
    check-cast v0, Ljava/lang/Integer;

    .line 685
    .local v0, "bufferSize":Ljava/lang/Integer;
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v1, :cond_5

    .line 686
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 688
    :cond_5
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 689
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    .line 691
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    if-eqz v1, :cond_6

    .line 692
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->setBufferSize(I)V

    .line 695
    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->setBufferSize(I)V

    goto :goto_0
.end method

.method protected setSawFallback(IZ)V
    .locals 4
    .param p1, "depth"    # I
    .param p2, "val"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2321
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 2322
    mul-int/lit8 v1, p1, 0x2

    new-array v0, v1, [Z

    .line 2323
    .local v0, "newarray":[Z
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2324
    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    .line 2326
    .end local v0    # "newarray":[Z
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    aput-boolean p2, v1, p1

    .line 2327
    return-void
.end method

.method protected setSawInclude(IZ)V
    .locals 4
    .param p1, "depth"    # I
    .param p2, "val"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2351
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 2352
    mul-int/lit8 v1, p1, 0x2

    new-array v0, v1, [Z

    .line 2353
    .local v0, "newarray":[Z
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2354
    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    .line 2356
    .end local v0    # "newarray":[Z
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    aput-boolean p2, v1, p1

    .line 2357
    return-void
.end method

.method protected setState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    .line 2304
    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 2305
    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 2306
    .local v0, "newarray":[I
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2307
    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    .line 2309
    .end local v0    # "newarray":[I
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    aput p1, v1, v2

    .line 2310
    return-void
.end method

.method protected setXIncludeLocator(Lmf/org/apache/xerces/util/XMLLocatorWrapper;)V
    .locals 0
    .param p1, "locator"    # Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    .prologue
    .line 2423
    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    .line 2424
    return-void
.end method

.method protected setupCurrentBaseURI(Lmf/org/apache/xerces/xni/XMLLocator;)V
    .locals 5
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;

    .prologue
    .line 1907
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setBaseSystemId(Ljava/lang/String;)V

    .line 1909
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1910
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setLiteralSystemId(Ljava/lang/String;)V

    .line 1916
    :goto_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    .line 1917
    .local v1, "expandedSystemId":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1922
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    .line 1923
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    .line 1924
    const/4 v4, 0x0

    .line 1921
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1925
    if-nez v1, :cond_0

    .line 1926
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1933
    :cond_0
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setExpandedSystemId(Ljava/lang/String;)V

    .line 1934
    return-void

    .line 1913
    .end local v1    # "expandedSystemId":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHrefFromParent:Ljava/lang/String;

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setLiteralSystemId(Ljava/lang/String;)V

    goto :goto_0

    .line 1929
    .restart local v1    # "expandedSystemId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1930
    .local v0, "e":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    const-string v2, "ExpandedSystemId"

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public startAttlist(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1330
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startAttlist(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1333
    :cond_0
    return-void
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1130
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 1131
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1132
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1135
    :cond_0
    return-void
.end method

.method public startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "type"    # S
    .param p2, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1340
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V

    .line 1343
    :cond_0
    return-void
.end method

.method public startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;
    .param p2, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fInDTD:Z

    .line 1351
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1354
    :cond_0
    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "namespaceContext"    # Lmf/org/apache/xerces/xni/NamespaceContext;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 775
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    .line 777
    instance-of v0, p3, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    if-nez v0, :cond_0

    .line 778
    const-string v0, "IncompatibleNamespaceContext"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :cond_0
    move-object v0, p3

    .line 780
    check-cast v0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    .line 781
    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    .line 782
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->setLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    .line 785
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setupCurrentBaseURI(Lmf/org/apache/xerces/xni/XMLLocator;)V

    .line 786
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->saveBaseURI()V

    .line 787
    if-nez p4, :cond_1

    .line 788
    new-instance p4, Lmf/org/apache/xerces/util/AugmentationsImpl;

    .end local p4    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    invoke-direct {p4}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    .line 790
    .restart local p4    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    :cond_1
    const-string v0, "currentBaseURI"

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {p4, v0, v1}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-nez v0, :cond_2

    .line 794
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iput-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    .line 795
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    .line 796
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    .line 795
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->searchForRecursiveIncludes(Ljava/lang/String;)Z

    move-result v0

    .line 796
    if-eqz v0, :cond_2

    .line 798
    const-string v0, "RecursiveInclude"

    .line 799
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 797
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 804
    :cond_2
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    .line 805
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->saveLanguage(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_3

    .line 808
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .line 809
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    .line 808
    invoke-interface {v0, v1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 814
    :cond_3
    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x3

    const/4 v5, 0x1

    .line 880
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    .line 881
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState(I)I

    move-result v0

    .line 885
    .local v0, "lastState":I
    if-ne v0, v3, :cond_2

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState(I)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 886
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    .line 894
    :goto_0
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processXMLBaseAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    .line 895
    iget-boolean v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    if-eqz v2, :cond_0

    .line 896
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processXMLLangAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    .line 899
    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isIncludeElement(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 900
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->handleIncludeElement(Lmf/org/apache/xerces/xni/XMLAttributes;)Z

    move-result v1

    .line 901
    .local v1, "success":Z
    if-eqz v1, :cond_3

    .line 902
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    .line 943
    .end local v1    # "success":Z
    :cond_1
    :goto_1
    return-void

    .line 889
    :cond_2
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    goto :goto_0

    .line 905
    .restart local v1    # "success":Z
    :cond_3
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    goto :goto_1

    .line 908
    .end local v1    # "success":Z
    :cond_4
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isFallbackElement(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 909
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->handleFallbackElement()V

    goto :goto_1

    .line 911
    :cond_5
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->hasXIncludeNamespace(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 912
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 914
    const-string v2, "IncludeChild"

    .line 915
    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 913
    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 917
    :cond_6
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 919
    const-string v2, "FallbackChild"

    .line 920
    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 918
    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 922
    :cond_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 923
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v2, :cond_8

    .line 924
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkMultipleRootElements()V

    .line 926
    :cond_8
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_1

    .line 927
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    .line 928
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xni/XMLAttributes;

    move-result-object p2

    .line 929
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v2, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    .line 933
    :cond_9
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 934
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v2, :cond_a

    .line 935
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkMultipleRootElements()V

    .line 937
    :cond_a
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_1

    .line 938
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    .line 939
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xni/XMLAttributes;

    move-result-object p2

    .line 940
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v2, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1
.end method

.method public startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p2, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1363
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1366
    :cond_0
    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resId"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1075
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1076
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v0, :cond_1

    .line 1077
    if-eqz p4, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "ENTITY_SKIPPED"

    invoke-interface {p4, v1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    const-string v0, "UnexpandedEntityReferenceIllegal"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1377
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1384
    :cond_0
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1089
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 1090
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1091
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1093
    :cond_0
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "notation"    # Ljava/lang/String;
    .param p4, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1395
    invoke-virtual {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->addUnparsedEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1396
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1403
    :cond_0
    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "standalone"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 822
    const-string v0, "1.1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fIsXML11:Z

    .line 823
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 826
    :cond_0
    return-void
.end method
