.class public Lmf/org/apache/xerces/impl/dv/xs/BaseDVFactory;
.super Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
.source "BaseDVFactory.java"


# static fields
.field static final URI_SCHEMAFORSCHEMA:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field static fBaseTypes:Lmf/org/apache/xerces/util/SymbolHash;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    const/16 v1, 0x35

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/BaseDVFactory;->fBaseTypes:Lmf/org/apache/xerces/util/SymbolHash;

    .line 45
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/BaseDVFactory;->fBaseTypes:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/xs/BaseDVFactory;->createBuiltInTypes(Lmf/org/apache/xerces/util/SymbolHash;)V

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;-><init>()V

    return-void
.end method

.method static createBuiltInTypes(Lmf/org/apache/xerces/util/SymbolHash;)V
    .locals 55
    .param p0, "types"    # Lmf/org/apache/xerces/util/SymbolHash;

    .prologue
    .line 130
    const-string v27, "anySimpleType"

    .line 131
    .local v27, "ANYSIMPLETYPE":Ljava/lang/String;
    const-string v28, "anyURI"

    .line 132
    .local v28, "ANYURI":Ljava/lang/String;
    const-string v29, "base64Binary"

    .line 133
    .local v29, "BASE64BINARY":Ljava/lang/String;
    const-string v30, "boolean"

    .line 134
    .local v30, "BOOLEAN":Ljava/lang/String;
    const-string v31, "byte"

    .line 135
    .local v31, "BYTE":Ljava/lang/String;
    const-string v32, "date"

    .line 136
    .local v32, "DATE":Ljava/lang/String;
    const-string v33, "dateTime"

    .line 137
    .local v33, "DATETIME":Ljava/lang/String;
    const-string v34, "gDay"

    .line 138
    .local v34, "DAY":Ljava/lang/String;
    const-string v35, "decimal"

    .line 139
    .local v35, "DECIMAL":Ljava/lang/String;
    const-string v36, "int"

    .line 140
    .local v36, "INT":Ljava/lang/String;
    const-string v37, "integer"

    .line 141
    .local v37, "INTEGER":Ljava/lang/String;
    const-string v38, "long"

    .line 142
    .local v38, "LONG":Ljava/lang/String;
    const-string v41, "negativeInteger"

    .line 143
    .local v41, "NEGATIVEINTEGER":Ljava/lang/String;
    const-string v39, "gMonth"

    .line 144
    .local v39, "MONTH":Ljava/lang/String;
    const-string v40, "gMonthDay"

    .line 145
    .local v40, "MONTHDAY":Ljava/lang/String;
    const-string v42, "nonNegativeInteger"

    .line 146
    .local v42, "NONNEGATIVEINTEGER":Ljava/lang/String;
    const-string v43, "nonPositiveInteger"

    .line 147
    .local v43, "NONPOSITIVEINTEGER":Ljava/lang/String;
    const-string v44, "positiveInteger"

    .line 148
    .local v44, "POSITIVEINTEGER":Ljava/lang/String;
    const-string v45, "short"

    .line 149
    .local v45, "SHORT":Ljava/lang/String;
    const-string v46, "string"

    .line 150
    .local v46, "STRING":Ljava/lang/String;
    const-string v47, "time"

    .line 151
    .local v47, "TIME":Ljava/lang/String;
    const-string v48, "unsignedByte"

    .line 152
    .local v48, "UNSIGNEDBYTE":Ljava/lang/String;
    const-string v49, "unsignedInt"

    .line 153
    .local v49, "UNSIGNEDINT":Ljava/lang/String;
    const-string v50, "unsignedLong"

    .line 154
    .local v50, "UNSIGNEDLONG":Ljava/lang/String;
    const-string v51, "unsignedShort"

    .line 155
    .local v51, "UNSIGNEDSHORT":Ljava/lang/String;
    const-string v52, "gYear"

    .line 156
    .local v52, "YEAR":Ljava/lang/String;
    const-string v53, "gYearMonth"

    .line 158
    .local v53, "YEARMONTH":Ljava/lang/String;
    new-instance v54, Lmf/org/apache/xerces/impl/dv/XSFacets;

    invoke-direct/range {v54 .. v54}, Lmf/org/apache/xerces/impl/dv/XSFacets;-><init>()V

    .line 160
    .local v54, "facets":Lmf/org/apache/xerces/impl/dv/XSFacets;
    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 161
    .local v5, "anySimpleType":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const-string v20, "anySimpleType"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    new-instance v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v6, "string"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x2

    invoke-direct/range {v4 .. v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    .line 163
    .local v4, "stringDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const-string v20, "string"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    const-string v20, "boolean"

    new-instance v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v8, "boolean"

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x3

    move-object v7, v5

    invoke-direct/range {v6 .. v15}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    new-instance v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v8, "decimal"

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x4

    move-object v7, v5

    invoke-direct/range {v6 .. v15}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    .line 166
    .local v6, "decimalDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const-string v20, "decimal"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    const-string v20, "anyURI"

    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v9, "anyURI"

    const/16 v10, 0x11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x12

    move-object v8, v5

    invoke-direct/range {v7 .. v16}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    const-string v20, "base64Binary"

    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v9, "base64Binary"

    const/16 v10, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x11

    move-object v8, v5

    invoke-direct/range {v7 .. v16}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    const-string v20, "dateTime"

    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v9, "dateTime"

    const/4 v10, 0x7

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x8

    move-object v8, v5

    invoke-direct/range {v7 .. v16}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    const-string v20, "time"

    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v9, "time"

    const/16 v10, 0x8

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x9

    move-object v8, v5

    invoke-direct/range {v7 .. v16}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    const-string v20, "date"

    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v9, "date"

    const/16 v10, 0x9

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0xa

    move-object v8, v5

    invoke-direct/range {v7 .. v16}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    const-string v20, "gYearMonth"

    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v9, "gYearMonth"

    const/16 v10, 0xa

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0xb

    move-object v8, v5

    invoke-direct/range {v7 .. v16}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    const-string v20, "gYear"

    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v9, "gYear"

    const/16 v10, 0xb

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0xc

    move-object v8, v5

    invoke-direct/range {v7 .. v16}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    const-string v20, "gMonthDay"

    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v9, "gMonthDay"

    const/16 v10, 0xc

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0xd

    move-object v8, v5

    invoke-direct/range {v7 .. v16}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    const-string v20, "gDay"

    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v9, "gDay"

    const/16 v10, 0xd

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0xe

    move-object v8, v5

    invoke-direct/range {v7 .. v16}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    const-string v20, "gMonth"

    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v9, "gMonth"

    const/16 v10, 0xe

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0xf

    move-object v8, v5

    invoke-direct/range {v7 .. v16}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v9, "integer"

    const/16 v10, 0x18

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1e

    move-object v8, v6

    invoke-direct/range {v7 .. v16}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    .line 180
    .local v7, "integerDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const-string v20, "integer"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    const-string v20, "0"

    move-object/from16 v0, v20

    move-object/from16 v1, v54

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    .line 183
    new-instance v8, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v10, "nonPositiveInteger"

    const-string v11, "http://www.w3.org/2001/XMLSchema"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1f

    move-object v9, v7

    invoke-direct/range {v8 .. v15}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .line 184
    .local v8, "nonPositiveDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v20, 0x20

    const/16 v21, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v8, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    .line 185
    const-string v20, "nonPositiveInteger"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    const-string v20, "-1"

    move-object/from16 v0, v20

    move-object/from16 v1, v54

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    .line 188
    new-instance v9, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v11, "negativeInteger"

    const-string v12, "http://www.w3.org/2001/XMLSchema"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x20

    move-object v10, v8

    invoke-direct/range {v9 .. v16}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .line 189
    .local v9, "negativeDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v20, 0x20

    const/16 v21, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v9, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    .line 190
    const-string v20, "negativeInteger"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    const-string v20, "9223372036854775807"

    move-object/from16 v0, v20

    move-object/from16 v1, v54

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    .line 193
    const-string v20, "-9223372036854775808"

    move-object/from16 v0, v20

    move-object/from16 v1, v54

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    .line 194
    new-instance v10, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v12, "long"

    const-string v13, "http://www.w3.org/2001/XMLSchema"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x21

    move-object v11, v7

    invoke-direct/range {v10 .. v17}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .line 195
    .local v10, "longDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v20, 0x120

    const/16 v21, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    .line 196
    const-string v20, "long"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    const-string v20, "2147483647"

    move-object/from16 v0, v20

    move-object/from16 v1, v54

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    .line 200
    const-string v20, "-2147483648"

    move-object/from16 v0, v20

    move-object/from16 v1, v54

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    .line 201
    new-instance v11, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v13, "int"

    const-string v14, "http://www.w3.org/2001/XMLSchema"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x22

    move-object v12, v10

    invoke-direct/range {v11 .. v18}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .line 202
    .local v11, "intDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v20, 0x120

    const/16 v21, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    .line 203
    const-string v20, "int"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    const-string v20, "32767"

    move-object/from16 v0, v20

    move-object/from16 v1, v54

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    .line 206
    const-string v20, "-32768"

    move-object/from16 v0, v20

    move-object/from16 v1, v54

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    .line 207
    new-instance v12, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v14, "short"

    const-string v15, "http://www.w3.org/2001/XMLSchema"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x23

    move-object v13, v11

    invoke-direct/range {v12 .. v19}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .line 208
    .local v12, "shortDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v20, 0x120

    const/16 v21, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v12, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    .line 209
    const-string v20, "short"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    const-string v20, "127"

    move-object/from16 v0, v20

    move-object/from16 v1, v54

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    .line 212
    const-string v20, "-128"

    move-object/from16 v0, v20

    move-object/from16 v1, v54

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    .line 213
    new-instance v13, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v15, "byte"

    const-string v16, "http://www.w3.org/2001/XMLSchema"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x24

    move-object v14, v12

    invoke-direct/range {v13 .. v20}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .line 214
    .local v13, "byteDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v20, 0x120

    const/16 v21, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v13, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    .line 215
    const-string v20, "byte"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 217
    const-string v20, "0"

    move-object/from16 v0, v20

    move-object/from16 v1, v54

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    .line 218
    new-instance v14, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v16, "nonNegativeInteger"

    const-string v17, "http://www.w3.org/2001/XMLSchema"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x25

    move-object v15, v7

    invoke-direct/range {v14 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .line 219
    .local v14, "nonNegativeDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v20, 0x100

    const/16 v21, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    .line 220
    const-string v20, "nonNegativeInteger"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    const-string v20, "18446744073709551615"

    move-object/from16 v0, v20

    move-object/from16 v1, v54

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    .line 223
    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v17, "unsignedLong"

    const-string v18, "http://www.w3.org/2001/XMLSchema"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x26

    move-object/from16 v16, v14

    invoke-direct/range {v15 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .line 224
    .local v15, "unsignedLongDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v20, 0x20

    const/16 v21, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    .line 225
    const-string v20, "unsignedLong"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    const-string v20, "4294967295"

    move-object/from16 v0, v20

    move-object/from16 v1, v54

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    .line 228
    new-instance v16, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "unsignedInt"

    const-string v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x27

    move-object/from16 v17, v15

    invoke-direct/range {v16 .. v23}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .line 229
    .local v16, "unsignedIntDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v20, 0x20

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v54

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    .line 230
    const-string v20, "unsignedInt"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    const-string v20, "65535"

    move-object/from16 v0, v20

    move-object/from16 v1, v54

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    .line 233
    new-instance v17, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v19, "unsignedShort"

    const-string v20, "http://www.w3.org/2001/XMLSchema"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x28

    move-object/from16 v18, v16

    invoke-direct/range {v17 .. v24}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .line 234
    .local v17, "unsignedShortDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v20, 0x20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v54

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    .line 235
    const-string v20, "unsignedShort"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    const-string v20, "255"

    move-object/from16 v0, v20

    move-object/from16 v1, v54

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    .line 238
    new-instance v18, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v20, "unsignedByte"

    const-string v21, "http://www.w3.org/2001/XMLSchema"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x29

    move-object/from16 v19, v17

    invoke-direct/range {v18 .. v25}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .line 239
    .local v18, "unsignedByteDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v20, 0x20

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v54

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    .line 240
    const-string v20, "unsignedByte"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    const-string v20, "1"

    move-object/from16 v0, v20

    move-object/from16 v1, v54

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    .line 243
    new-instance v19, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v21, "positiveInteger"

    const-string v22, "http://www.w3.org/2001/XMLSchema"

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x2a

    move-object/from16 v20, v14

    invoke-direct/range {v19 .. v26}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    .line 244
    .local v19, "positiveIntegerDV":Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    const/16 v20, 0x100

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v54

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    .line 245
    const-string v20, "positiveInteger"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    return-void
.end method


# virtual methods
.method public createTypeList(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "targetNamespace"    # Ljava/lang/String;
    .param p3, "finalSet"    # S
    .param p4, "itemType"    # Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .param p5, "annotations"    # Lmf/org/apache/xerces/xs/XSObjectList;

    .prologue
    .line 103
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object v4, p4

    check-cast v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;ZLmf/org/apache/xerces/xs/XSObjectList;)V

    return-object v0
.end method

.method public createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "targetNamespace"    # Ljava/lang/String;
    .param p3, "finalSet"    # S
    .param p4, "base"    # Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .param p5, "annotations"    # Lmf/org/apache/xerces/xs/XSObjectList;

    .prologue
    .line 86
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object v1, p4

    check-cast v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V

    return-object v0
.end method

.method public createTypeUnion(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "targetNamespace"    # Ljava/lang/String;
    .param p3, "finalSet"    # S
    .param p4, "memberTypes"    # [Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .param p5, "annotations"    # Lmf/org/apache/xerces/xs/XSObjectList;

    .prologue
    const/4 v0, 0x0

    .line 120
    array-length v6, p4

    .line 121
    .local v6, "typeNum":I
    new-array v4, v6, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 122
    .local v4, "mtypes":[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    invoke-static {p4, v0, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    return-object v0
.end method

.method public getBuiltInType(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/BaseDVFactory;->fBaseTypes:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object v0
.end method

.method public getBuiltInTypes()Lmf/org/apache/xerces/util/SymbolHash;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/BaseDVFactory;->fBaseTypes:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    return-object v0
.end method
