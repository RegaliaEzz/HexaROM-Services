.class final Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;
.super Ljava/lang/Object;
.source "StreamValidatorHelper.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/validation/ValidatorHelper;


# static fields
.field private static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field private static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"


# instance fields
.field private final fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fConfiguration:Ljava/lang/ref/SoftReference;

.field private fParser:Ljava/lang/ref/SoftReference;

.field private final fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

.field private fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V
    .locals 2
    .param p1, "componentManager"    # Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fConfiguration:Ljava/lang/ref/SoftReference;

    .line 107
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fParser:Ljava/lang/ref/SoftReference;

    .line 113
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    .line 114
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    .line 115
    return-void
.end method

.method private initialize()Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 208
    new-instance v0, Lmf/org/apache/xerces/parsers/XML11Configuration;

    invoke-direct {v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>()V

    .line 209
    .local v0, "config":Lmf/org/apache/xerces/parsers/XML11Configuration;
    const-string v3, "http://apache.org/xml/properties/internal/entity-resolver"

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v5, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    const-string v3, "http://apache.org/xml/properties/internal/error-handler"

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v5, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 212
    .local v1, "errorReporter":Lmf/org/apache/xerces/impl/XMLErrorReporter;
    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v0, v3, v1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v3

    if-nez v3, :cond_0

    .line 215
    new-instance v2, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    .line 216
    .local v2, "xmft":Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;
    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v3, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 217
    const-string v3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v1, v3, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 219
    .end local v2    # "xmft":Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;
    :cond_0
    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v5, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    const-string v3, "http://apache.org/xml/properties/internal/validation-manager"

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v5, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    const-string v3, "http://apache.org/xml/properties/security-manager"

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v5, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 223
    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 224
    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 225
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fConfiguration:Ljava/lang/ref/SoftReference;

    .line 226
    return-object v0
.end method


# virtual methods
.method public validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V
    .locals 17
    .param p1, "source"    # Lmf/javax/xml/transform/Source;
    .param p2, "result"    # Lmf/javax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    move-object/from16 v0, p2

    instance-of v11, v0, Lmf/javax/xml/transform/stream/StreamResult;

    if-nez v11, :cond_0

    if-nez p2, :cond_a

    :cond_0
    move-object/from16 v9, p1

    .line 120
    check-cast v9, Lmf/javax/xml/transform/stream/StreamSource;

    .local v9, "streamSource":Lmf/javax/xml/transform/stream/StreamSource;
    move-object/from16 v8, p2

    .line 121
    check-cast v8, Lmf/javax/xml/transform/stream/StreamResult;

    .line 122
    .local v8, "streamResult":Lmf/javax/xml/transform/stream/StreamResult;
    new-instance v3, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {v9}, Lmf/javax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lmf/javax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v3, v11, v12, v13}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .local v3, "input":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-virtual {v9}, Lmf/javax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v3, v11}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 124
    invoke-virtual {v9}, Lmf/javax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v11

    invoke-virtual {v3, v11}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 128
    const/4 v4, 0x0

    .line 129
    .local v4, "newConfig":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fConfiguration:Ljava/lang/ref/SoftReference;

    invoke-virtual {v11}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .line 130
    .local v1, "config":Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    if-nez v1, :cond_4

    .line 131
    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->initialize()Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-result-object v1

    .line 132
    const/4 v4, 0x1

    .line 142
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v11}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->reset()V

    .line 144
    if-eqz v8, :cond_9

    .line 145
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;

    if-nez v11, :cond_2

    .line 146
    const-string v11, "xml"

    invoke-static {v11}, Lmf/org/apache/xml/serialize/SerializerFactory;->getSerializerFactory(Ljava/lang/String;)Lmf/org/apache/xml/serialize/SerializerFactory;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;

    .line 152
    :cond_2
    invoke-virtual {v8}, Lmf/javax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 153
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;

    invoke-virtual {v8}, Lmf/javax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v12

    new-instance v13, Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-direct {v13}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>()V

    invoke-virtual {v11, v12, v13}, Lmf/org/apache/xml/serialize/SerializerFactory;->makeSerializer(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;

    move-result-object v7

    .line 170
    .local v7, "ser":Lmf/org/apache/xml/serialize/Serializer;
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fParser:Ljava/lang/ref/SoftReference;

    invoke-virtual {v11}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/parsers/SAXParser;

    .line 171
    .local v6, "parser":Lmf/org/apache/xerces/parsers/SAXParser;
    if-nez v4, :cond_3

    if-nez v6, :cond_8

    .line 172
    :cond_3
    new-instance v6, Lmf/org/apache/xerces/parsers/SAXParser;

    .end local v6    # "parser":Lmf/org/apache/xerces/parsers/SAXParser;
    invoke-direct {v6, v1}, Lmf/org/apache/xerces/parsers/SAXParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 173
    .restart local v6    # "parser":Lmf/org/apache/xerces/parsers/SAXParser;
    new-instance v11, Ljava/lang/ref/SoftReference;

    invoke-direct {v11, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fParser:Ljava/lang/ref/SoftReference;

    .line 178
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {v1, v11}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v11, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 180
    invoke-interface {v7}, Lmf/org/apache/xml/serialize/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v11

    invoke-virtual {v6, v11}, Lmf/org/apache/xerces/parsers/SAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 187
    .end local v6    # "parser":Lmf/org/apache/xerces/parsers/SAXParser;
    .end local v7    # "ser":Lmf/org/apache/xml/serialize/Serializer;
    :goto_3
    :try_start_0
    invoke-interface {v1, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 200
    return-void

    .line 135
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v12, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 136
    const-string v11, "http://apache.org/xml/properties/internal/entity-resolver"

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v13, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v12, v13}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v1, v11, v12}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    const-string v11, "http://apache.org/xml/properties/internal/error-handler"

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v13, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v12, v13}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v1, v11, v12}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    const-string v11, "http://apache.org/xml/properties/security-manager"

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v13, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v12, v13}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v1, v11, v12}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 155
    :cond_5
    invoke-virtual {v8}, Lmf/javax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 156
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;

    invoke-virtual {v8}, Lmf/javax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    new-instance v13, Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-direct {v13}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>()V

    invoke-virtual {v11, v12, v13}, Lmf/org/apache/xml/serialize/SerializerFactory;->makeSerializer(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;

    move-result-object v7

    .line 157
    .restart local v7    # "ser":Lmf/org/apache/xml/serialize/Serializer;
    goto/16 :goto_1

    .line 158
    .end local v7    # "ser":Lmf/org/apache/xml/serialize/Serializer;
    :cond_6
    invoke-virtual {v8}, Lmf/javax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 159
    invoke-virtual {v8}, Lmf/javax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v10

    .line 160
    .local v10, "uri":Ljava/lang/String;
    invoke-static {v10}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v5

    .line 161
    .local v5, "out":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;

    new-instance v12, Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-direct {v12}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>()V

    invoke-virtual {v11, v5, v12}, Lmf/org/apache/xml/serialize/SerializerFactory;->makeSerializer(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;

    move-result-object v7

    .line 162
    .restart local v7    # "ser":Lmf/org/apache/xml/serialize/Serializer;
    goto/16 :goto_1

    .line 164
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ser":Lmf/org/apache/xml/serialize/Serializer;
    .end local v10    # "uri":Ljava/lang/String;
    :cond_7
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v12}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v12

    .line 165
    const-string v13, "StreamResultNotInitialized"

    const/4 v14, 0x0

    .line 164
    invoke-static {v12, v13, v14}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 176
    .restart local v6    # "parser":Lmf/org/apache/xerces/parsers/SAXParser;
    .restart local v7    # "ser":Lmf/org/apache/xml/serialize/Serializer;
    :cond_8
    invoke-virtual {v6}, Lmf/org/apache/xerces/parsers/SAXParser;->reset()V

    goto/16 :goto_2

    .line 183
    .end local v6    # "parser":Lmf/org/apache/xerces/parsers/SAXParser;
    .end local v7    # "ser":Lmf/org/apache/xml/serialize/Serializer;
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    goto/16 :goto_3

    .line 189
    :catch_0
    move-exception v2

    .line 190
    .local v2, "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :try_start_1
    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v11

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    .end local v2    # "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :catchall_0
    move-exception v11

    .line 197
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 198
    throw v11

    .line 192
    :catch_1
    move-exception v2

    .line 193
    .local v2, "e":Lmf/org/apache/xerces/xni/XNIException;
    :try_start_2
    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v11

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    .end local v1    # "config":Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    .end local v2    # "e":Lmf/org/apache/xerces/xni/XNIException;
    .end local v3    # "input":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .end local v4    # "newConfig":Z
    .end local v8    # "streamResult":Lmf/javax/xml/transform/stream/StreamResult;
    .end local v9    # "streamSource":Lmf/javax/xml/transform/stream/StreamSource;
    :cond_a
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v12}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v12

    .line 203
    const-string v13, "SourceResultMismatch"

    .line 204
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 202
    invoke-static {v12, v13, v14}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
.end method
