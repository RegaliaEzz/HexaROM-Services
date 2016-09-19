.class public Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;
.super Ljava/lang/Object;
.source "XSAttributeChecker.java"


# static fields
.field public static final ATTIDX_ABSTRACT:I

.field public static final ATTIDX_AFORMDEFAULT:I

.field public static final ATTIDX_BASE:I

.field public static final ATTIDX_BLOCK:I

.field public static final ATTIDX_BLOCKDEFAULT:I

.field private static ATTIDX_COUNT:I = 0x0

.field public static final ATTIDX_DEFAULT:I

.field public static final ATTIDX_EFORMDEFAULT:I

.field public static final ATTIDX_ENUMNSDECLS:I

.field public static final ATTIDX_FINAL:I

.field public static final ATTIDX_FINALDEFAULT:I

.field public static final ATTIDX_FIXED:I

.field public static final ATTIDX_FORM:I

.field public static final ATTIDX_FROMDEFAULT:I

.field public static final ATTIDX_ID:I

.field public static final ATTIDX_ISRETURNED:I

.field public static final ATTIDX_ITEMTYPE:I

.field public static final ATTIDX_MAXOCCURS:I

.field public static final ATTIDX_MEMBERTYPES:I

.field public static final ATTIDX_MINOCCURS:I

.field public static final ATTIDX_MIXED:I

.field public static final ATTIDX_NAME:I

.field public static final ATTIDX_NAMESPACE:I

.field public static final ATTIDX_NAMESPACE_LIST:I

.field public static final ATTIDX_NILLABLE:I

.field public static final ATTIDX_NONSCHEMA:I

.field public static final ATTIDX_PROCESSCONTENTS:I

.field public static final ATTIDX_PUBLIC:I

.field public static final ATTIDX_REF:I

.field public static final ATTIDX_REFER:I

.field public static final ATTIDX_SCHEMALOCATION:I

.field public static final ATTIDX_SOURCE:I

.field public static final ATTIDX_SUBSGROUP:I

.field public static final ATTIDX_SYSTEM:I

.field public static final ATTIDX_TARGETNAMESPACE:I

.field public static final ATTIDX_TYPE:I

.field public static final ATTIDX_USE:I

.field public static final ATTIDX_VALUE:I

.field public static final ATTIDX_VERSION:I

.field public static final ATTIDX_XML_LANG:I

.field public static final ATTIDX_XPATH:I

.field private static final ATTRIBUTE_N:Ljava/lang/String; = "attribute_n"

.field private static final ATTRIBUTE_R:Ljava/lang/String; = "attribute_r"

.field protected static final DT_ANYURI:I = 0x0

.field protected static final DT_BLOCK:I = -0x1

.field protected static final DT_BLOCK1:I = -0x2

.field protected static final DT_BOOLEAN:I = -0xf

.field protected static final DT_COUNT:I = 0x9

.field protected static final DT_FINAL:I = -0x3

.field protected static final DT_FINAL1:I = -0x4

.field protected static final DT_FINAL2:I = -0x5

.field protected static final DT_FORM:I = -0x6

.field protected static final DT_ID:I = 0x1

.field protected static final DT_LANGUAGE:I = 0x8

.field protected static final DT_MAXOCCURS:I = -0x7

.field protected static final DT_MAXOCCURS1:I = -0x8

.field protected static final DT_MEMBERTYPES:I = -0x9

.field protected static final DT_MINOCCURS1:I = -0xa

.field protected static final DT_NAMESPACE:I = -0xb

.field protected static final DT_NCNAME:I = 0x5

.field protected static final DT_NONNEGINT:I = -0x10

.field protected static final DT_POSINT:I = -0x11

.field protected static final DT_PROCESSCONTENTS:I = -0xc

.field protected static final DT_QNAME:I = 0x2

.field protected static final DT_STRING:I = 0x3

.field protected static final DT_TOKEN:I = 0x4

.field protected static final DT_USE:I = -0xd

.field protected static final DT_WHITESPACE:I = -0xe

.field protected static final DT_XPATH:I = 0x6

.field protected static final DT_XPATH1:I = 0x7

.field private static final ELEMENT_N:Ljava/lang/String; = "element_n"

.field private static final ELEMENT_R:Ljava/lang/String; = "element_r"

.field static final INC_POOL_SIZE:I = 0xa

.field static final INIT_POOL_SIZE:I = 0xa

.field private static final INT_ANY_ANY:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_LAX:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_LIST:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_NOT:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_SKIP:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_STRICT:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_EMPTY_SET:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_QUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_UNBOUNDED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_USE_OPTIONAL:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_USE_PROHIBITED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_USE_REQUIRED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_WS_COLLAPSE:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_WS_PRESERVE:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_WS_REPLACE:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final fEleAttrsMapG:Ljava/util/Hashtable;

.field private static final fEleAttrsMapL:Ljava/util/Hashtable;

.field private static final fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field private static fSeenTemp:[Z

.field private static fTempArray:[Ljava/lang/Object;

.field private static final fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;


# instance fields
.field fArrayPool:[[Ljava/lang/Object;

.field protected fNamespaceList:Ljava/util/Vector;

.field protected fNonSchemaAttrs:Ljava/util/Hashtable;

.field fPoolPos:I

.field protected fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

.field protected fSeen:[Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 62

    .prologue
    .line 82
    const/16 v56, 0x0

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    .line 83
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ABSTRACT:I

    .line 84
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_AFORMDEFAULT:I

    .line 85
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    .line 86
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    .line 87
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCKDEFAULT:I

    .line 88
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    .line 89
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_EFORMDEFAULT:I

    .line 90
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    .line 91
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINALDEFAULT:I

    .line 92
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    .line 93
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FORM:I

    .line 94
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ID:I

    .line 95
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ITEMTYPE:I

    .line 96
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    .line 97
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MEMBERTYPES:I

    .line 98
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    .line 99
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    .line 100
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    .line 101
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    .line 102
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    .line 103
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NILLABLE:I

    .line 104
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    .line 105
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PROCESSCONTENTS:I

    .line 106
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PUBLIC:I

    .line 107
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    .line 108
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REFER:I

    .line 109
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    .line 110
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SOURCE:I

    .line 111
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SUBSGROUP:I

    .line 112
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SYSTEM:I

    .line 113
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TARGETNAMESPACE:I

    .line 114
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TYPE:I

    .line 115
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_USE:I

    .line 116
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    .line 117
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ENUMNSDECLS:I

    .line 118
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VERSION:I

    .line 119
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XML_LANG:I

    .line 120
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    .line 121
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    .line 123
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    .line 125
    new-instance v56, Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-direct/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;-><init>()V

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    .line 127
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_QUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 128
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 129
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_EMPTY_SET:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 130
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_STRICT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 131
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x3

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_LAX:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 132
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x2

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_SKIP:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 133
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_ANY:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 134
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x3

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_LIST:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 135
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x2

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_NOT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 136
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_OPTIONAL:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 137
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_REQUIRED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 138
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x2

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_PROHIBITED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 139
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_PRESERVE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 140
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_REPLACE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 141
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, 0x2

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_COLLAPSE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 142
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v57, -0x1

    invoke-virtual/range {v56 .. v57}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v56

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNBOUNDED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 146
    new-instance v56, Ljava/util/Hashtable;

    const/16 v57, 0x1d

    invoke-direct/range {v56 .. v57}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    .line 148
    new-instance v56, Ljava/util/Hashtable;

    const/16 v57, 0x4f

    invoke-direct/range {v56 .. v57}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    .line 167
    const/16 v56, 0x9

    move/from16 v0, v56

    new-array v0, v0, [Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v56, v0

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 170
    sget-object v55, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    .line 172
    .local v55, "grammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    sget-object v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v58, 0x0

    const-string v56, "anyURI"

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v56

    check-cast v56, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v56, v57, v58

    .line 174
    sget-object v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v58, 0x1

    const-string v56, "ID"

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v56

    check-cast v56, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v56, v57, v58

    .line 176
    sget-object v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v58, 0x2

    const-string v56, "QName"

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v56

    check-cast v56, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v56, v57, v58

    .line 178
    sget-object v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v58, 0x3

    const-string v56, "string"

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v56

    check-cast v56, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v56, v57, v58

    .line 180
    sget-object v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v58, 0x4

    const-string v56, "token"

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v56

    check-cast v56, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v56, v57, v58

    .line 182
    sget-object v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v58, 0x5

    const-string v56, "NCName"

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v56

    check-cast v56, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v56, v57, v58

    .line 184
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v57, 0x6

    sget-object v58, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v59, 0x3

    aget-object v58, v58, v59

    aput-object v58, v56, v57

    .line 186
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v57, 0x6

    sget-object v58, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v59, 0x3

    aget-object v58, v58, v59

    aput-object v58, v56, v57

    .line 188
    sget-object v57, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v58, 0x8

    const-string v56, "language"

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v56

    check-cast v56, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v56, v57, v58

    .line 211
    const/16 v52, 0x0

    .line 212
    .local v52, "attCount":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .local v53, "attCount":I
    move/from16 v3, v52

    .line 213
    .local v3, "ATT_ABSTRACT_D":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v4, v53

    .line 214
    .local v4, "ATT_ATTRIBUTE_FD_D":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v6, v52

    .line 215
    .local v6, "ATT_BASE_R":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v5, v53

    .line 216
    .local v5, "ATT_BASE_N":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v9, v52

    .line 217
    .local v9, "ATT_BLOCK_N":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v7, v53

    .line 218
    .local v7, "ATT_BLOCK1_N":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v8, v52

    .line 219
    .local v8, "ATT_BLOCK_D_D":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v10, v53

    .line 220
    .local v10, "ATT_DEFAULT_N":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v11, v52

    .line 221
    .local v11, "ATT_ELEMENT_FD_D":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v14, v53

    .line 222
    .local v14, "ATT_FINAL_N":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v12, v52

    .line 223
    .local v12, "ATT_FINAL1_N":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v13, v53

    .line 224
    .local v13, "ATT_FINAL_D_D":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v16, v52

    .line 225
    .local v16, "ATT_FIXED_N":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v15, v53

    .line 226
    .local v15, "ATT_FIXED_D":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v17, v52

    .line 227
    .local v17, "ATT_FORM_N":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v18, v53

    .line 228
    .local v18, "ATT_ID_N":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v19, v52

    .line 229
    .local v19, "ATT_ITEMTYPE_N":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v21, v53

    .line 230
    .local v21, "ATT_MAXOCCURS_D":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v20, v52

    .line 231
    .local v20, "ATT_MAXOCCURS1_D":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v22, v53

    .line 232
    .local v22, "ATT_MEMBER_T_N":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v24, v52

    .line 233
    .local v24, "ATT_MINOCCURS_D":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v23, v53

    .line 234
    .local v23, "ATT_MINOCCURS1_D":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v25, v52

    .line 235
    .local v25, "ATT_MIXED_D":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v26, v53

    .line 236
    .local v26, "ATT_MIXED_N":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v29, v52

    .line 237
    .local v29, "ATT_NAME_R":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v27, v53

    .line 238
    .local v27, "ATT_NAMESPACE_D":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v28, v52

    .line 239
    .local v28, "ATT_NAMESPACE_N":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v30, v53

    .line 240
    .local v30, "ATT_NILLABLE_D":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v31, v52

    .line 241
    .local v31, "ATT_PROCESS_C_D":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v32, v53

    .line 242
    .local v32, "ATT_PUBLIC_R":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v34, v52

    .line 243
    .local v34, "ATT_REF_R":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v33, v53

    .line 244
    .local v33, "ATT_REFER_R":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v36, v52

    .line 245
    .local v36, "ATT_SCHEMA_L_R":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v35, v53

    .line 246
    .local v35, "ATT_SCHEMA_L_N":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v37, v52

    .line 247
    .local v37, "ATT_SOURCE_N":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v38, v53

    .line 248
    .local v38, "ATT_SUBSTITUTION_G_N":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v39, v52

    .line 249
    .local v39, "ATT_SYSTEM_N":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v40, v53

    .line 250
    .local v40, "ATT_TARGET_N_N":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v41, v52

    .line 251
    .local v41, "ATT_TYPE_N":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v42, v53

    .line 252
    .local v42, "ATT_USE_D":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v43, v52

    .line 253
    .local v43, "ATT_VALUE_NNI_N":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v44, v53

    .line 254
    .local v44, "ATT_VALUE_PI_N":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v45, v52

    .line 255
    .local v45, "ATT_VALUE_STR_N":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v46, v53

    .line 256
    .local v46, "ATT_VALUE_WS_N":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v47, v52

    .line 257
    .local v47, "ATT_VERSION_N":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v48, v53

    .line 258
    .local v48, "ATT_XML_LANG":I
    add-int/lit8 v53, v52, 0x1

    .end local v52    # "attCount":I
    .restart local v53    # "attCount":I
    move/from16 v50, v52

    .line 259
    .local v50, "ATT_XPATH_R":I
    add-int/lit8 v52, v53, 0x1

    .end local v53    # "attCount":I
    .restart local v52    # "attCount":I
    move/from16 v49, v53

    .line 262
    .local v49, "ATT_XPATH1_R":I
    move/from16 v0, v52

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    move-object/from16 v51, v0

    .line 263
    .local v51, "allAttrs":[Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ABSTRACT:Ljava/lang/String;

    .line 264
    const/16 v58, -0xf

    .line 265
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ABSTRACT:I

    .line 266
    sget-object v60, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 263
    aput-object v56, v51, v3

    .line 267
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ATTRIBUTEFORMDEFAULT:Ljava/lang/String;

    .line 268
    const/16 v58, -0x6

    .line 269
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_AFORMDEFAULT:I

    .line 270
    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 267
    aput-object v56, v51, v4

    .line 271
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    .line 272
    const/16 v58, 0x2

    .line 273
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    .line 274
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 271
    aput-object v56, v51, v6

    .line 275
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    .line 276
    const/16 v58, 0x2

    .line 277
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    .line 278
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 275
    aput-object v56, v51, v5

    .line 279
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    .line 280
    const/16 v58, -0x1

    .line 281
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    .line 282
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 279
    aput-object v56, v51, v9

    .line 283
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    .line 284
    const/16 v58, -0x2

    .line 285
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    .line 286
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 283
    aput-object v56, v51, v7

    .line 287
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCKDEFAULT:Ljava/lang/String;

    .line 288
    const/16 v58, -0x1

    .line 289
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCKDEFAULT:I

    .line 290
    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_EMPTY_SET:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 287
    aput-object v56, v51, v8

    .line 291
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    .line 292
    const/16 v58, 0x3

    .line 293
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    .line 294
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 291
    aput-object v56, v51, v10

    .line 295
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ELEMENTFORMDEFAULT:Ljava/lang/String;

    .line 296
    const/16 v58, -0x6

    .line 297
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_EFORMDEFAULT:I

    .line 298
    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 295
    aput-object v56, v51, v11

    .line 299
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    .line 300
    const/16 v58, -0x3

    .line 301
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    .line 302
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 299
    aput-object v56, v51, v14

    .line 303
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    .line 304
    const/16 v58, -0x4

    .line 305
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    .line 306
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 303
    aput-object v56, v51, v12

    .line 307
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINALDEFAULT:Ljava/lang/String;

    .line 308
    const/16 v58, -0x5

    .line 309
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINALDEFAULT:I

    .line 310
    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_EMPTY_SET:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 307
    aput-object v56, v51, v13

    .line 311
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    .line 312
    const/16 v58, 0x3

    .line 313
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    .line 314
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 311
    aput-object v56, v51, v16

    .line 315
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    .line 316
    const/16 v58, -0xf

    .line 317
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    .line 318
    sget-object v60, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 315
    aput-object v56, v51, v15

    .line 319
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FORM:Ljava/lang/String;

    .line 320
    const/16 v58, -0x6

    .line 321
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FORM:I

    .line 322
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 319
    aput-object v56, v51, v17

    .line 323
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    .line 324
    const/16 v58, 0x1

    .line 325
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ID:I

    .line 326
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 323
    aput-object v56, v51, v18

    .line 327
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ITEMTYPE:Ljava/lang/String;

    .line 328
    const/16 v58, 0x2

    .line 329
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ITEMTYPE:I

    .line 330
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 327
    aput-object v56, v51, v19

    .line 331
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    .line 332
    const/16 v58, -0x7

    .line 333
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    .line 334
    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v60

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 331
    aput-object v56, v51, v21

    .line 335
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    .line 336
    const/16 v58, -0x8

    .line 337
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    .line 338
    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v60

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 335
    aput-object v56, v51, v20

    .line 339
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MEMBERTYPES:Ljava/lang/String;

    .line 340
    const/16 v58, -0x9

    .line 341
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MEMBERTYPES:I

    .line 342
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 339
    aput-object v56, v51, v22

    .line 343
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    .line 344
    const/16 v58, -0x10

    .line 345
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    .line 346
    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v60

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 343
    aput-object v56, v51, v24

    .line 347
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    .line 348
    const/16 v58, -0xa

    .line 349
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    .line 350
    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v60

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 347
    aput-object v56, v51, v23

    .line 351
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    .line 352
    const/16 v58, -0xf

    .line 353
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    .line 354
    sget-object v60, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 351
    aput-object v56, v51, v25

    .line 355
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    .line 356
    const/16 v58, -0xf

    .line 357
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    .line 358
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 355
    aput-object v56, v51, v26

    .line 359
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    .line 360
    const/16 v58, 0x5

    .line 361
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    .line 362
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 359
    aput-object v56, v51, v29

    .line 363
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    .line 364
    const/16 v58, -0xb

    .line 365
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    .line 366
    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_ANY:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 363
    aput-object v56, v51, v27

    .line 367
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    .line 368
    const/16 v58, 0x0

    .line 369
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    .line 370
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 367
    aput-object v56, v51, v28

    .line 371
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NILLABLE:Ljava/lang/String;

    .line 372
    const/16 v58, -0xf

    .line 373
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NILLABLE:I

    .line 374
    sget-object v60, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 371
    aput-object v56, v51, v30

    .line 375
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PROCESSCONTENTS:Ljava/lang/String;

    .line 376
    const/16 v58, -0xc

    .line 377
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PROCESSCONTENTS:I

    .line 378
    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_STRICT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 375
    aput-object v56, v51, v31

    .line 379
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PUBLIC:Ljava/lang/String;

    .line 380
    const/16 v58, 0x4

    .line 381
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PUBLIC:I

    .line 382
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 379
    aput-object v56, v51, v32

    .line 383
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    .line 384
    const/16 v58, 0x2

    .line 385
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    .line 386
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 383
    aput-object v56, v51, v34

    .line 387
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REFER:Ljava/lang/String;

    .line 388
    const/16 v58, 0x2

    .line 389
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REFER:I

    .line 390
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 387
    aput-object v56, v51, v33

    .line 391
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SCHEMALOCATION:Ljava/lang/String;

    .line 392
    const/16 v58, 0x0

    .line 393
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    .line 394
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 391
    aput-object v56, v51, v36

    .line 395
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SCHEMALOCATION:Ljava/lang/String;

    .line 396
    const/16 v58, 0x0

    .line 397
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    .line 398
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 395
    aput-object v56, v51, v35

    .line 399
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    .line 400
    const/16 v58, 0x0

    .line 401
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SOURCE:I

    .line 402
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 399
    aput-object v56, v51, v37

    .line 403
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SUBSTITUTIONGROUP:Ljava/lang/String;

    .line 404
    const/16 v58, 0x2

    .line 405
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SUBSGROUP:I

    .line 406
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 403
    aput-object v56, v51, v38

    .line 407
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SYSTEM:Ljava/lang/String;

    .line 408
    const/16 v58, 0x0

    .line 409
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SYSTEM:I

    .line 410
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 407
    aput-object v56, v51, v39

    .line 411
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TARGETNAMESPACE:Ljava/lang/String;

    .line 412
    const/16 v58, 0x0

    .line 413
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TARGETNAMESPACE:I

    .line 414
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 411
    aput-object v56, v51, v40

    .line 415
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    .line 416
    const/16 v58, 0x2

    .line 417
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TYPE:I

    .line 418
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 415
    aput-object v56, v51, v41

    .line 419
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_USE:Ljava/lang/String;

    .line 420
    const/16 v58, -0xd

    .line 421
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_USE:I

    .line 422
    sget-object v60, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_OPTIONAL:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 419
    aput-object v56, v51, v42

    .line 423
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    .line 424
    const/16 v58, -0x10

    .line 425
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    .line 426
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 423
    aput-object v56, v51, v43

    .line 427
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    .line 428
    const/16 v58, -0x11

    .line 429
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    .line 430
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 427
    aput-object v56, v51, v44

    .line 431
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    .line 432
    const/16 v58, 0x3

    .line 433
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    .line 434
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 431
    aput-object v56, v51, v45

    .line 435
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    .line 436
    const/16 v58, -0xe

    .line 437
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    .line 438
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 435
    aput-object v56, v51, v46

    .line 439
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VERSION:Ljava/lang/String;

    .line 440
    const/16 v58, 0x4

    .line 441
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VERSION:I

    .line 442
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 439
    aput-object v56, v51, v47

    .line 443
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    .line 444
    const/16 v58, 0x8

    .line 445
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XML_LANG:I

    .line 446
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 443
    aput-object v56, v51, v48

    .line 447
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    .line 448
    const/16 v58, 0x6

    .line 449
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    .line 450
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 447
    aput-object v56, v51, v50

    .line 451
    new-instance v56, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    .line 452
    const/16 v58, 0x7

    .line 453
    sget v59, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    .line 454
    const/16 v60, 0x0

    invoke-direct/range {v56 .. v60}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 451
    aput-object v56, v51, v49

    .line 460
    const/16 v56, 0x5

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 462
    .local v54, "attrList":Lmf/org/apache/xerces/impl/xs/traversers/Container;
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v57, v51, v10

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 464
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v57, v51, v16

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 466
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 468
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 470
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    aget-object v57, v51, v41

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 471
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const/16 v56, 0x7

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 476
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v57, v51, v10

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 478
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v57, v51, v16

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 480
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FORM:Ljava/lang/String;

    aget-object v57, v51, v17

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 482
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 484
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 486
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    aget-object v57, v51, v41

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 488
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_USE:Ljava/lang/String;

    aget-object v57, v51, v42

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 489
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const-string v57, "attribute_n"

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const/16 v56, 0x5

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 494
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v57, v51, v10

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 496
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v57, v51, v16

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 498
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 500
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    aget-object v57, v51, v34

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 502
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_USE:Ljava/lang/String;

    aget-object v57, v51, v42

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 503
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const-string v57, "attribute_r"

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const/16 v56, 0xa

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 508
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ABSTRACT:Ljava/lang/String;

    aget-object v57, v51, v3

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 510
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    aget-object v57, v51, v9

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 512
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v57, v51, v10

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 514
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    aget-object v57, v51, v14

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 516
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v57, v51, v16

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 518
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 520
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 522
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NILLABLE:Ljava/lang/String;

    aget-object v57, v51, v30

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 524
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SUBSTITUTIONGROUP:Ljava/lang/String;

    aget-object v57, v51, v38

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 526
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    aget-object v57, v51, v41

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 527
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const/16 v56, 0xa

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 532
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    aget-object v57, v51, v9

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 534
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v57, v51, v10

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 536
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v57, v51, v16

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 538
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FORM:Ljava/lang/String;

    aget-object v57, v51, v17

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 540
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 542
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v57, v51, v21

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 544
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v57, v51, v24

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 546
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 548
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NILLABLE:Ljava/lang/String;

    aget-object v57, v51, v30

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 550
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    aget-object v57, v51, v41

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 551
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const-string v57, "element_n"

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const/16 v56, 0x4

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 556
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 558
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v57, v51, v21

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 560
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v57, v51, v24

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 562
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    aget-object v57, v51, v34

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 563
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const-string v57, "element_r"

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const/16 v56, 0x6

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 568
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ABSTRACT:Ljava/lang/String;

    aget-object v57, v51, v3

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 570
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    aget-object v57, v51, v7

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 572
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    aget-object v57, v51, v14

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 574
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 576
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    aget-object v57, v51, v25

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 578
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 579
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const/16 v56, 0x4

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 584
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 586
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 588
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PUBLIC:Ljava/lang/String;

    aget-object v57, v51, v32

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 590
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SYSTEM:Ljava/lang/String;

    aget-object v57, v51, v39

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 591
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_NOTATION:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 597
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 599
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    aget-object v57, v51, v25

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 600
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const/16 v56, 0x1

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 605
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 606
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLECONTENT:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 611
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    aget-object v57, v51, v5

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 613
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 614
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 619
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    aget-object v57, v51, v6

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 621
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 622
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_EXTENSION:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 627
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 629
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    aget-object v57, v51, v34

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 630
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const/16 v56, 0x3

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 635
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 637
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    aget-object v57, v51, v27

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 639
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PROCESSCONTENTS:Ljava/lang/String;

    aget-object v57, v51, v31

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 640
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANYATTRIBUTE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 645
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 647
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    aget-object v57, v51, v26

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 648
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXCONTENT:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 653
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 655
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 656
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 661
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 663
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 664
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    const/16 v56, 0x4

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 669
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 671
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v57, v51, v21

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 673
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v57, v51, v24

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 675
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    aget-object v57, v51, v34

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 676
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    const/16 v56, 0x3

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 681
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 683
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v57, v51, v20

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 685
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v57, v51, v23

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 686
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ALL:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const/16 v56, 0x3

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 691
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 693
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v57, v51, v21

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 695
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v57, v51, v24

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 696
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    const/16 v56, 0x5

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 703
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 705
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v57, v51, v21

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 707
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v57, v51, v24

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 709
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    aget-object v57, v51, v27

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 711
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PROCESSCONTENTS:Ljava/lang/String;

    aget-object v57, v51, v31

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 712
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANY:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 717
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 719
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 720
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNIQUE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEY:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    const/16 v56, 0x3

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 727
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 729
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 731
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REFER:Ljava/lang/String;

    aget-object v57, v51, v33

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 732
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 737
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 739
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    aget-object v57, v51, v50

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 740
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 745
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 747
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    aget-object v57, v51, v49

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 748
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    const/16 v56, 0x1

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 753
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 754
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    const/16 v56, 0x1

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 761
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    aget-object v57, v51, v37

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 762
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 768
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    aget-object v57, v51, v37

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 770
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    aget-object v57, v51, v48

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 771
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const/16 v56, 0x3

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 777
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    aget-object v57, v51, v12

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 779
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 781
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v57, v51, v29

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 782
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 787
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    aget-object v57, v51, v12

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 789
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 790
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 798
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 800
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ITEMTYPE:Ljava/lang/String;

    aget-object v57, v51, v19

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 801
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_LIST:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 806
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 808
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MEMBERTYPES:Ljava/lang/String;

    aget-object v57, v51, v22

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 809
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNION:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const/16 v56, 0x8

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 814
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ATTRIBUTEFORMDEFAULT:Ljava/lang/String;

    aget-object v57, v51, v4

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 816
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCKDEFAULT:Ljava/lang/String;

    aget-object v57, v51, v8

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 818
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ELEMENTFORMDEFAULT:Ljava/lang/String;

    aget-object v57, v51, v11

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 820
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINALDEFAULT:Ljava/lang/String;

    aget-object v57, v51, v13

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 822
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 824
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TARGETNAMESPACE:Ljava/lang/String;

    aget-object v57, v51, v40

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 826
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VERSION:Ljava/lang/String;

    aget-object v57, v51, v47

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 828
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    aget-object v57, v51, v48

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 829
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 834
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 836
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SCHEMALOCATION:Ljava/lang/String;

    aget-object v57, v51, v36

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 837
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_INCLUDE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const/16 v56, 0x3

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 844
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 846
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    aget-object v57, v51, v28

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 848
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SCHEMALOCATION:Ljava/lang/String;

    aget-object v57, v51, v35

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 849
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_IMPORT:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    const/16 v56, 0x3

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 854
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 856
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v57, v51, v43

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 858
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v57, v51, v15

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 859
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_LENGTH:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINLENGTH:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXLENGTH:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FRACTIONDIGITS:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    const/16 v56, 0x3

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 870
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 872
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v57, v51, v44

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 874
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v57, v51, v15

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 875
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_TOTALDIGITS:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 880
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 882
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v57, v51, v45

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 883
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_PATTERN:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    const/16 v56, 0x2

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 888
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 890
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v57, v51, v45

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 891
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ENUMERATION:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    const/16 v56, 0x3

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 896
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 898
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v57, v51, v46

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 900
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v57, v51, v15

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 901
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_WHITESPACE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    const/16 v56, 0x3

    invoke-static/range {v56 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v54

    .line 906
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v57, v51, v18

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 908
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v57, v51, v45

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 910
    sget-object v56, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v57, v51, v15

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    .line 911
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXINCLUSIVE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXEXCLUSIVE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MININCLUSIVE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    sget-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v57, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINEXCLUSIVE:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    move/from16 v0, v56

    new-array v0, v0, [Z

    move-object/from16 v56, v0

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeenTemp:[Z

    .line 1641
    sget v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    move/from16 v0, v56

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v56, v0

    sput-object v56, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fTempArray:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;)V
    .locals 2
    .param p1, "schemaHandler"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    .prologue
    const/4 v0, 0x0

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 921
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    .line 924
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 927
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNonSchemaAttrs:Ljava/util/Hashtable;

    .line 930
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    .line 933
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    .line 1638
    const/16 v0, 0xa

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    .line 1643
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    .line 938
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    .line 939
    return-void
.end method

.method public static normalize(Ljava/lang/String;S)Ljava/lang/String;
    .locals 10
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "ws"    # S

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xa

    const/16 v7, 0x9

    const/16 v6, 0x20

    .line 1584
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .line 1585
    .local v3, "len":I
    :goto_0
    if-eqz v3, :cond_0

    if-nez p1, :cond_2

    .line 1625
    .end local p0    # "content":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p0

    .line 1584
    .end local v3    # "len":I
    .restart local p0    # "content":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    .line 1588
    .restart local v3    # "len":I
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1589
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v5, 0x1

    if-ne p1, v5, :cond_6

    .line 1592
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-lt v1, v3, :cond_4

    .line 1625
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1593
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1594
    .local v0, "ch":C
    if-eq v0, v7, :cond_5

    if-eq v0, v8, :cond_5

    if-eq v0, v9, :cond_5

    .line 1595
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1592
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1597
    :cond_5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1602
    .end local v0    # "ch":C
    .end local v1    # "i":I
    :cond_6
    const/4 v2, 0x1

    .line 1604
    .local v2, "isLeading":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v3, :cond_3

    .line 1605
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1607
    .restart local v0    # "ch":C
    if-eq v0, v7, :cond_a

    if-eq v0, v8, :cond_a

    if-eq v0, v9, :cond_a

    if-eq v0, v6, :cond_a

    .line 1608
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1609
    const/4 v2, 0x0

    .line 1604
    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1614
    :cond_8
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1615
    if-eq v0, v7, :cond_9

    if-eq v0, v8, :cond_9

    if-eq v0, v9, :cond_9

    if-eq v0, v6, :cond_9

    .line 1619
    :goto_6
    add-int/lit8 v5, v3, -0x1

    if-ge v1, v5, :cond_7

    if-nez v2, :cond_7

    .line 1620
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 1613
    :cond_9
    add-int/lit8 v1, v1, 0x1

    :cond_a
    add-int/lit8 v5, v3, -0x1

    if-lt v1, v5, :cond_8

    goto :goto_6
.end method

.method private validate([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/Object;
    .locals 19
    .param p1, "attrValues"    # [Ljava/lang/Object;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "ivalue"    # Ljava/lang/String;
    .param p4, "dvIndex"    # I
    .param p5, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    .line 1187
    if-nez p3, :cond_1

    .line 1188
    const/4 v14, 0x0

    .line 1524
    :cond_0
    :goto_0
    return-object v14

    .line 1195
    :cond_1
    invoke-static/range {p3 .. p3}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1196
    .local v4, "value":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1200
    .local v14, "retValue":Ljava/lang/Object;
    packed-switch p4, :pswitch_data_0

    goto :goto_0

    .line 1225
    :pswitch_0
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_2

    .line 1226
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1227
    :cond_2
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    move-object v1, v14

    .line 1231
    check-cast v1, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1232
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "positiveInteger"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1202
    .local v14, "retValue":Ljava/lang/Object;
    :pswitch_1
    const-string v1, "false"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1203
    const-string v1, "0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1204
    :cond_3
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1205
    .local v14, "retValue":Ljava/lang/Boolean;
    goto :goto_0

    .local v14, "retValue":Ljava/lang/Object;
    :cond_4
    const-string v1, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1206
    const-string v1, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1207
    :cond_5
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1208
    .local v14, "retValue":Ljava/lang/Boolean;
    goto :goto_0

    .line 1209
    .local v14, "retValue":Ljava/lang/Object;
    :cond_6
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "boolean"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1214
    :pswitch_2
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_7

    .line 1215
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1216
    :cond_7
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    move-object v1, v14

    .line 1220
    check-cast v1, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    .line 1221
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "nonNegativeInteger"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1217
    .local v14, "retValue":Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 1218
    .local v8, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "nonNegativeInteger"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1228
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v8

    .line 1229
    .restart local v8    # "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "positiveInteger"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1236
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :pswitch_3
    const/4 v7, 0x0

    .line 1237
    .local v7, "choice":I
    const-string v1, "#all"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1238
    const/16 v7, 0x1f

    .line 1261
    :cond_8
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v14

    .line 1262
    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    goto/16 :goto_0

    .line 1243
    .local v14, "retValue":Ljava/lang/Object;
    :cond_9
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v1, " \n\t\r"

    invoke-direct {v15, v4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    .local v15, "t":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1245
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 1247
    .local v17, "token":Ljava/lang/String;
    const-string v1, "extension"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1248
    or-int/lit8 v7, v7, 0x1

    .line 1249
    goto :goto_1

    .line 1250
    :cond_a
    const-string v1, "restriction"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1251
    or-int/lit8 v7, v7, 0x2

    .line 1252
    goto :goto_1

    .line 1253
    :cond_b
    const-string v1, "substitution"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1254
    or-int/lit8 v7, v7, 0x4

    .line 1255
    goto :goto_1

    .line 1257
    :cond_c
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.3"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(#all | List of (extension | restriction | substitution))"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1267
    .end local v7    # "choice":I
    .end local v15    # "t":Ljava/util/StringTokenizer;
    .end local v17    # "token":Ljava/lang/String;
    :pswitch_4
    const/4 v7, 0x0

    .line 1268
    .restart local v7    # "choice":I
    const-string v1, "#all"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1280
    const/16 v7, 0x1f

    .line 1300
    :cond_d
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v14

    .line 1301
    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    goto/16 :goto_0

    .line 1285
    .local v14, "retValue":Ljava/lang/Object;
    :cond_e
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v1, " \n\t\r"

    invoke-direct {v15, v4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    .restart local v15    # "t":Ljava/util/StringTokenizer;
    :goto_2
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1287
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 1289
    .restart local v17    # "token":Ljava/lang/String;
    const-string v1, "extension"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1290
    or-int/lit8 v7, v7, 0x1

    .line 1291
    goto :goto_2

    .line 1292
    :cond_f
    const-string v1, "restriction"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1293
    or-int/lit8 v7, v7, 0x2

    .line 1294
    goto :goto_2

    .line 1296
    :cond_10
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.3"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(#all | List of (extension | restriction))"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1304
    .end local v7    # "choice":I
    .end local v15    # "t":Ljava/util/StringTokenizer;
    .end local v17    # "token":Ljava/lang/String;
    :pswitch_5
    const/4 v7, 0x0

    .line 1305
    .restart local v7    # "choice":I
    const-string v1, "#all"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1312
    const/16 v7, 0x1f

    .line 1335
    :cond_11
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v14

    .line 1336
    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    goto/16 :goto_0

    .line 1317
    .local v14, "retValue":Ljava/lang/Object;
    :cond_12
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v1, " \n\t\r"

    invoke-direct {v15, v4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    .restart local v15    # "t":Ljava/util/StringTokenizer;
    :goto_3
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1319
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 1321
    .restart local v17    # "token":Ljava/lang/String;
    const-string v1, "list"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1322
    or-int/lit8 v7, v7, 0x10

    .line 1323
    goto :goto_3

    .line 1324
    :cond_13
    const-string v1, "union"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1325
    or-int/lit8 v7, v7, 0x8

    .line 1326
    goto :goto_3

    .line 1327
    :cond_14
    const-string v1, "restriction"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1328
    or-int/lit8 v7, v7, 0x2

    .line 1329
    goto :goto_3

    .line 1331
    :cond_15
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.3"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(#all | List of (list | union | restriction))"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1339
    .end local v7    # "choice":I
    .end local v15    # "t":Ljava/util/StringTokenizer;
    .end local v17    # "token":Ljava/lang/String;
    :pswitch_6
    const/4 v7, 0x0

    .line 1340
    .restart local v7    # "choice":I
    const-string v1, "#all"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1347
    const/16 v7, 0x1f

    .line 1373
    :cond_16
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v14

    .line 1374
    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    goto/16 :goto_0

    .line 1352
    .local v14, "retValue":Ljava/lang/Object;
    :cond_17
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v1, " \n\t\r"

    invoke-direct {v15, v4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    .restart local v15    # "t":Ljava/util/StringTokenizer;
    :goto_4
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1354
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 1356
    .restart local v17    # "token":Ljava/lang/String;
    const-string v1, "extension"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1357
    or-int/lit8 v7, v7, 0x1

    .line 1358
    goto :goto_4

    .line 1359
    :cond_18
    const-string v1, "restriction"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1360
    or-int/lit8 v7, v7, 0x2

    .line 1361
    goto :goto_4

    .line 1362
    :cond_19
    const-string v1, "list"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1363
    or-int/lit8 v7, v7, 0x10

    .line 1364
    goto :goto_4

    .line 1365
    :cond_1a
    const-string v1, "union"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1366
    or-int/lit8 v7, v7, 0x8

    .line 1367
    goto :goto_4

    .line 1369
    :cond_1b
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.3"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(#all | List of (extension | restriction | list | union))"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1377
    .end local v7    # "choice":I
    .end local v15    # "t":Ljava/util/StringTokenizer;
    .end local v17    # "token":Ljava/lang/String;
    :pswitch_7
    const-string v1, "qualified"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1378
    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_QUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    goto/16 :goto_0

    .line 1379
    .local v14, "retValue":Ljava/lang/Object;
    :cond_1c
    const-string v1, "unqualified"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1380
    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    goto/16 :goto_0

    .line 1382
    .local v14, "retValue":Ljava/lang/Object;
    :cond_1d
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-enumeration-valid"

    .line 1383
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(qualified | unqualified)"

    aput-object v6, v3, v5

    .line 1382
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1387
    :pswitch_8
    const-string v1, "unbounded"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1388
    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNBOUNDED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 1389
    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    goto/16 :goto_0

    .line 1391
    .local v14, "retValue":Ljava/lang/Object;
    :cond_1e
    const/16 v5, -0x10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->validate([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v14

    goto/16 :goto_0

    .line 1392
    :catch_2
    move-exception v8

    .line 1393
    .restart local v8    # "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.3"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(nonNegativeInteger | unbounded)"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1399
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :pswitch_9
    const-string v1, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1400
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v14

    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    goto/16 :goto_0

    .line 1402
    .local v14, "retValue":Ljava/lang/Object;
    :cond_1f
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-enumeration-valid"

    .line 1403
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(1)"

    aput-object v6, v3, v5

    .line 1402
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1407
    :pswitch_a
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 1409
    .local v11, "memberType":Ljava/util/Vector;
    :try_start_3
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v1, " \n\t\r"

    invoke-direct {v15, v4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    .restart local v15    # "t":Ljava/util/StringTokenizer;
    :goto_5
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_20

    .line 1418
    move-object v14, v11

    .local v14, "retValue":Ljava/util/Vector;
    goto/16 :goto_0

    .line 1411
    .local v14, "retValue":Ljava/lang/Object;
    :cond_20
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 1412
    .restart local v17    # "token":Ljava/lang/String;
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    move-object/from16 v0, p5

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v2, v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmf/org/apache/xerces/xni/QName;

    .line 1414
    .local v13, "qname":Lmf/org/apache/xerces/xni/QName;
    iget-object v1, v13, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v1, v2, :cond_21

    iget-object v1, v13, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v1, :cond_21

    move-object/from16 v0, p5

    iget-boolean v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fIsChameleonSchema:Z

    if-eqz v1, :cond_21

    .line 1415
    move-object/from16 v0, p5

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v1, v13, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 1416
    :cond_21
    invoke-virtual {v11, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    .line 1420
    .end local v13    # "qname":Lmf/org/apache/xerces/xni/QName;
    .end local v15    # "t":Ljava/util/StringTokenizer;
    .end local v17    # "token":Ljava/lang/String;
    :catch_3
    move-exception v9

    .line 1421
    .local v9, "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.2"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(List of QName)"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1426
    .end local v9    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    .end local v11    # "memberType":Ljava/util/Vector;
    :pswitch_b
    const-string v1, "0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1427
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v14

    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    goto/16 :goto_0

    .line 1428
    .local v14, "retValue":Ljava/lang/Object;
    :cond_22
    const-string v1, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1429
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v14

    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    goto/16 :goto_0

    .line 1431
    .local v14, "retValue":Ljava/lang/Object;
    :cond_23
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-enumeration-valid"

    .line 1432
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(0 | 1)"

    aput-object v6, v3, v5

    .line 1431
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1436
    :pswitch_c
    const-string v1, "##any"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1438
    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_ANY:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 1439
    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    goto/16 :goto_0

    .local v14, "retValue":Ljava/lang/Object;
    :cond_24
    const-string v1, "##other"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1441
    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_NOT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 1442
    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    const/4 v1, 0x2

    new-array v10, v1, [Ljava/lang/String;

    .line 1443
    .local v10, "list":[Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p5

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    aput-object v2, v10, v1

    .line 1444
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v10, v1

    .line 1445
    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    aput-object v10, p1, v1

    goto/16 :goto_0

    .line 1448
    .end local v10    # "list":[Ljava/lang/String;
    .local v14, "retValue":Ljava/lang/Object;
    :cond_25
    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_LIST:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .line 1450
    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 1453
    new-instance v18, Ljava/util/StringTokenizer;

    const-string v1, " \n\t\r"

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    .local v18, "tokens":Ljava/util/StringTokenizer;
    :cond_26
    :goto_6
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_4
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v1

    if-nez v1, :cond_27

    .line 1480
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v12

    .line 1481
    .local v12, "num":I
    new-array v10, v12, [Ljava/lang/String;

    .line 1482
    .restart local v10    # "list":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v1, v10}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1483
    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    aput-object v10, p1, v1

    goto/16 :goto_0

    .line 1458
    .end local v10    # "list":[Ljava/lang/String;
    .end local v12    # "num":I
    :cond_27
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 1459
    .restart local v17    # "token":Ljava/lang/String;
    const-string v1, "##local"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1460
    const/16 v16, 0x0

    .line 1471
    .local v16, "tempNamespace":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1472
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_5
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .line 1475
    .end local v16    # "tempNamespace":Ljava/lang/String;
    .end local v17    # "token":Ljava/lang/String;
    :catch_4
    move-exception v9

    .line 1476
    .restart local v9    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.3"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "((##any | ##other) | List of (anyURI | (##targetNamespace | ##local)) )"

    aput-object v6, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1461
    .end local v9    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    .restart local v17    # "token":Ljava/lang/String;
    :cond_28
    :try_start_6
    const-string v1, "##targetNamespace"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1462
    move-object/from16 v0, p5

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1463
    .restart local v16    # "tempNamespace":Ljava/lang/String;
    goto :goto_7

    .line 1466
    .end local v16    # "tempNamespace":Ljava/lang/String;
    :cond_29
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p5

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v2, v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    .line 1467
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v16

    .restart local v16    # "tempNamespace":Ljava/lang/String;
    goto :goto_7

    .line 1488
    .end local v16    # "tempNamespace":Ljava/lang/String;
    .end local v17    # "token":Ljava/lang/String;
    .end local v18    # "tokens":Ljava/util/StringTokenizer;
    .local v14, "retValue":Ljava/lang/Object;
    :pswitch_d
    const-string v1, "strict"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1489
    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_STRICT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    goto/16 :goto_0

    .line 1490
    .local v14, "retValue":Ljava/lang/Object;
    :cond_2a
    const-string v1, "lax"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1491
    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_LAX:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    goto/16 :goto_0

    .line 1492
    .local v14, "retValue":Ljava/lang/Object;
    :cond_2b
    const-string v1, "skip"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1493
    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_SKIP:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    goto/16 :goto_0

    .line 1495
    .local v14, "retValue":Ljava/lang/Object;
    :cond_2c
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-enumeration-valid"

    .line 1496
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(lax | skip | strict)"

    aput-object v6, v3, v5

    .line 1495
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1500
    :pswitch_e
    const-string v1, "optional"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1501
    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_OPTIONAL:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    goto/16 :goto_0

    .line 1502
    .local v14, "retValue":Ljava/lang/Object;
    :cond_2d
    const-string v1, "required"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1503
    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_REQUIRED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    goto/16 :goto_0

    .line 1504
    .local v14, "retValue":Ljava/lang/Object;
    :cond_2e
    const-string v1, "prohibited"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1505
    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_PROHIBITED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    goto/16 :goto_0

    .line 1507
    .local v14, "retValue":Ljava/lang/Object;
    :cond_2f
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-enumeration-valid"

    .line 1508
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(optional | prohibited | required)"

    aput-object v6, v3, v5

    .line 1507
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1512
    :pswitch_f
    const-string v1, "preserve"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1513
    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_PRESERVE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    goto/16 :goto_0

    .line 1514
    .local v14, "retValue":Ljava/lang/Object;
    :cond_30
    const-string v1, "replace"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1515
    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_REPLACE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    goto/16 :goto_0

    .line 1516
    .local v14, "retValue":Ljava/lang/Object;
    :cond_31
    const-string v1, "collapse"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1517
    sget-object v14, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_COLLAPSE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    .local v14, "retValue":Lmf/org/apache/xerces/impl/xs/util/XInt;
    goto/16 :goto_0

    .line 1519
    .local v14, "retValue":Ljava/lang/Object;
    :cond_32
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-enumeration-valid"

    .line 1520
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    const-string v6, "(preserve | replace | collapse)"

    aput-object v6, v3, v5

    .line 1519
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1200
    :pswitch_data_0
    .packed-switch -0x11
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;
    .locals 1
    .param p1, "element"    # Lmf/org/w3c/dom/Element;
    .param p2, "isGlobal"    # Z
    .param p3, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .prologue
    .line 958
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Z)[Ljava/lang/Object;
    .locals 31
    .param p1, "element"    # Lmf/org/w3c/dom/Element;
    .param p2, "isGlobal"    # Z
    .param p3, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .param p4, "enumAsQName"    # Z

    .prologue
    .line 977
    if-nez p1, :cond_1

    .line 978
    const/4 v3, 0x0

    .line 1182
    :cond_0
    :goto_0
    return-object v3

    .line 981
    :cond_1
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrs(Lmf/org/w3c/dom/Element;)[Lmf/org/w3c/dom/Attr;

    move-result-object v11

    .line 984
    .local v11, "attrs":[Lmf/org/w3c/dom/Attr;
    move-object/from16 v0, p3

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->resolveNamespace(Lmf/org/w3c/dom/Element;[Lmf/org/w3c/dom/Attr;Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    .line 986
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNamespaceURI(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v28

    .line 987
    .local v28, "uri":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v14

    .line 989
    .local v14, "elName":Ljava/lang/String;
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 990
    const-string v2, "s4s-elt-schema-ns"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v6, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 993
    :cond_2
    sget-object v15, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    .line 994
    .local v15, "eleAttrsMap":Ljava/util/Hashtable;
    move-object/from16 v21, v14

    .line 1000
    .local v21, "lookupName":Ljava/lang/String;
    if-nez p2, :cond_3

    .line 1001
    sget-object v15, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    .line 1002
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1003
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lmf/org/apache/xerces/util/DOMUtil;->getAttr(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1004
    const-string v21, "element_r"

    .line 1016
    :cond_3
    :goto_1
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/impl/xs/traversers/Container;

    .line 1017
    .local v8, "attrList":Lmf/org/apache/xerces/impl/xs/traversers/Container;
    if-nez v8, :cond_7

    .line 1021
    const-string v2, "s4s-elt-invalid"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v6, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 1022
    const/4 v3, 0x0

    goto :goto_0

    .line 1006
    .end local v8    # "attrList":Lmf/org/apache/xerces/impl/xs/traversers/Container;
    :cond_4
    const-string v21, "element_n"

    .line 1007
    goto :goto_1

    :cond_5
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1008
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lmf/org/apache/xerces/util/DOMUtil;->getAttr(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1009
    const-string v21, "attribute_r"

    goto :goto_1

    .line 1011
    :cond_6
    const-string v21, "attribute_n"

    goto :goto_1

    .line 1026
    .restart local v8    # "attrList":Lmf/org/apache/xerces/impl/xs/traversers/Container;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->getAvailableArray()[Ljava/lang/Object;

    move-result-object v3

    .line 1028
    .local v3, "attrValues":[Ljava/lang/Object;
    const-wide/16 v16, 0x0

    .line 1031
    .local v16, "fromDefault":J
    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeenTemp:[Z

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    const/16 v29, 0x0

    sget v30, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v2, v6, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1034
    array-length v0, v11

    move/from16 v20, v0

    .line 1035
    .local v20, "length":I
    const/16 v27, 0x0

    .line 1036
    .local v27, "sattr":Lmf/org/w3c/dom/Attr;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_8

    .line 1151
    iget-object v0, v8, Lmf/org/apache/xerces/impl/xs/traversers/Container;->values:[Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    move-object/from16 v26, v0

    .line 1152
    .local v26, "reqAttrs":[Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;
    const/16 v18, 0x0

    :goto_3
    move-object/from16 v0, v26

    array-length v2, v0

    move/from16 v0, v18

    if-lt v0, v2, :cond_15

    .line 1164
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    new-instance v6, Ljava/lang/Long;

    move-wide/from16 v0, v16

    invoke-direct {v6, v0, v1}, Ljava/lang/Long;-><init>(J)V

    aput-object v6, v3, v2

    .line 1169
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v2, v3, v2

    if-eqz v2, :cond_0

    .line 1170
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v2, v3, v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v23

    .line 1171
    .local v23, "min":I
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v2, v3, v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v22

    .line 1172
    .local v22, "max":I
    const/4 v2, -0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_0

    .line 1173
    move/from16 v0, v23

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    .line 1174
    const-string v2, "p-props-correct.2.1"

    .line 1175
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    const/4 v7, 0x1

    sget v29, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v29, v3, v29

    aput-object v29, v6, v7

    const/4 v7, 0x2

    sget v29, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v29, v3, v29

    aput-object v29, v6, v7

    .line 1174
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v6, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 1177
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    sget v6, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v6, v3, v6

    aput-object v6, v3, v2

    goto/16 :goto_0

    .line 1037
    .end local v22    # "max":I
    .end local v23    # "min":I
    .end local v26    # "reqAttrs":[Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;
    :cond_8
    aget-object v27, v11, v18

    .line 1040
    invoke-interface/range {v27 .. v27}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1041
    .local v4, "attrName":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lmf/org/apache/xerces/util/DOMUtil;->getNamespaceURI(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    .line 1042
    .local v10, "attrURI":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lmf/org/apache/xerces/util/DOMUtil;->getValue(Lmf/org/w3c/dom/Attr;)Ljava/lang/String;

    move-result-object v5

    .line 1044
    .local v5, "attrVal":Ljava/lang/String;
    const-string v2, "xml"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1045
    invoke-static/range {v27 .. v27}, Lmf/org/apache/xerces/util/DOMUtil;->getPrefix(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    .line 1047
    .local v9, "attrPrefix":Ljava/lang/String;
    const-string v2, "xmlns"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "xmlns"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1036
    .end local v9    # "attrPrefix":Ljava/lang/String;
    :cond_9
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 1053
    .restart local v9    # "attrPrefix":Ljava/lang/String;
    :cond_a
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1054
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1055
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1056
    :cond_b
    const/4 v10, 0x0

    .line 1062
    .end local v9    # "attrPrefix":Ljava/lang/String;
    :cond_c
    if-eqz v10, :cond_f

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_f

    .line 1065
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1066
    const-string v2, "s4s-att-not-allowed"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v6, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_4

    .line 1069
    :cond_d
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v2, v3, v2

    if-nez v2, :cond_e

    .line 1071
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    new-instance v6, Ljava/util/Vector;

    const/4 v7, 0x4

    const/16 v29, 0x2

    move/from16 v0, v29

    invoke-direct {v6, v7, v0}, Ljava/util/Vector;-><init>(II)V

    aput-object v6, v3, v2

    .line 1073
    :cond_e
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v2, v3, v2

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1074
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v2, v3, v2

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    .line 1098
    :cond_f
    invoke-virtual {v8, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->get(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    move-result-object v24

    .line 1099
    .local v24, "oneAttr":Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;
    if-nez v24, :cond_10

    .line 1100
    const-string v2, "s4s-att-not-allowed"

    .line 1101
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    .line 1100
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v6, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_4

    .line 1107
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    move-object/from16 v0, v24

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 1114
    :try_start_0
    move-object/from16 v0, v24

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    if-ltz v2, :cond_14

    .line 1115
    move-object/from16 v0, v24

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    const/4 v6, 0x3

    if-eq v2, v6, :cond_13

    .line 1116
    move-object/from16 v0, v24

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    const/4 v6, 0x6

    if-eq v2, v6, :cond_13

    .line 1117
    move-object/from16 v0, v24

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    const/4 v6, 0x7

    if-eq v2, v6, :cond_13

    .line 1118
    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, v24

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    aget-object v13, v2, v6

    .line 1119
    .local v13, "dv":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    move-object/from16 v0, p3

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    const/4 v6, 0x0

    invoke-interface {v13, v5, v2, v6}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v12

    .line 1121
    .local v12, "avalue":Ljava/lang/Object;
    move-object/from16 v0, v24

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_11

    .line 1122
    move-object v0, v12

    check-cast v0, Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v25, v0

    .line 1123
    .local v25, "qname":Lmf/org/apache/xerces/xni/QName;
    move-object/from16 v0, v25

    iget-object v2, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v2, v6, :cond_11

    move-object/from16 v0, v25

    iget-object v2, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v2, :cond_11

    move-object/from16 v0, p3

    iget-boolean v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fIsChameleonSchema:Z

    if-eqz v2, :cond_11

    .line 1124
    move-object/from16 v0, p3

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v2, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 1126
    .end local v25    # "qname":Lmf/org/apache/xerces/xni/QName;
    :cond_11
    move-object/from16 v0, v24

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    aput-object v12, v3, v2
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    .end local v12    # "avalue":Ljava/lang/Object;
    .end local v13    # "dv":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    :cond_12
    :goto_5
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ENUMERATION:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz p4, :cond_9

    .line 1146
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ENUMNSDECLS:I

    new-instance v6, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    move-object/from16 v0, p3

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v6, v7}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;-><init>(Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    aput-object v6, v3, v2

    goto/16 :goto_4

    .line 1128
    :cond_13
    :try_start_1
    move-object/from16 v0, v24

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    aput-object v5, v3, v2
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 1134
    :catch_0
    move-exception v19

    .line 1135
    .local v19, "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    const-string v2, "s4s-att-invalid-value"

    .line 1136
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    invoke-virtual/range {v19 .. v19}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getMessage()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v6, v7

    .line 1135
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v6, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 1138
    move-object/from16 v0, v24

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    if-eqz v2, :cond_12

    .line 1140
    move-object/from16 v0, v24

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    move-object/from16 v0, v24

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    aput-object v6, v3, v2

    goto :goto_5

    .line 1132
    .end local v19    # "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    :cond_14
    :try_start_2
    move-object/from16 v0, v24

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    move/from16 v29, v0

    move-object/from16 v0, v24

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->validate([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v29
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 1153
    .end local v4    # "attrName":Ljava/lang/String;
    .end local v5    # "attrVal":Ljava/lang/String;
    .end local v10    # "attrURI":Ljava/lang/String;
    .end local v24    # "oneAttr":Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;
    .restart local v26    # "reqAttrs":[Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;
    :cond_15
    aget-object v24, v26, v18

    .line 1157
    .restart local v24    # "oneAttr":Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;
    move-object/from16 v0, v24

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    move-object/from16 v0, v24

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    aget-boolean v2, v2, v6

    if-nez v2, :cond_16

    .line 1159
    move-object/from16 v0, v24

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    move-object/from16 v0, v24

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    aput-object v6, v3, v2

    .line 1160
    const/4 v2, 0x1

    move-object/from16 v0, v24

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    shl-int/2addr v2, v6

    int-to-long v6, v2

    or-long v16, v16, v6

    .line 1152
    :cond_16
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3
.end method

.method public checkNonSchemaAttributes(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;)V
    .locals 22
    .param p1, "grammarBucket"    # Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    .prologue
    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNonSchemaAttrs:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1539
    .local v12, "entries":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_1

    .line 1580
    return-void

    .line 1540
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 1542
    .local v13, "entry":Ljava/util/Map$Entry;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1543
    .local v7, "attrRName":Ljava/lang/String;
    const/16 v18, 0x0

    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1544
    .local v8, "attrURI":Ljava/lang/String;
    const/16 v18, 0x2c

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1546
    .local v5, "attrLocal":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v16

    .line 1547
    .local v16, "sGrammar":Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    if-eqz v16, :cond_0

    .line 1551
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v4

    .line 1552
    .local v4, "attrDecl":Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    if-eqz v4, :cond_0

    .line 1555
    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1556
    .local v10, "dv":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    if-eqz v10, :cond_0

    .line 1561
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Vector;

    .line 1563
    .local v17, "values":Ljava/util/Vector;
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1565
    .local v6, "attrName":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v9

    .line 1566
    .local v9, "count":I
    const/4 v14, 0x1

    .local v14, "i":I
    :goto_0
    if-ge v14, v9, :cond_0

    .line 1567
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1572
    .local v11, "elName":Ljava/lang/String;
    add-int/lit8 v18, v14, 0x1

    :try_start_0
    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v10, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1566
    :goto_1
    add-int/lit8 v14, v14, 0x2

    goto :goto_0

    .line 1573
    :catch_0
    move-exception v15

    .line 1574
    .local v15, "ide":Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
    const-string v18, "s4s-att-invalid-value"

    .line 1575
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v11, v19, v20

    const/16 v20, 0x1

    aput-object v6, v19, v20

    const/16 v20, 0x2

    invoke-virtual {v15}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    .line 1576
    const/16 v20, 0x0

    .line 1574
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1
.end method

.method protected getAvailableArray()[Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1648
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    array-length v2, v2

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    if-ne v2, v3, :cond_0

    .line 1650
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    add-int/lit8 v2, v2, 0xa

    new-array v2, v2, [[Ljava/lang/Object;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    .line 1652
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 1656
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    aget-object v1, v2, v3

    .line 1659
    .local v1, "retArray":[Ljava/lang/Object;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 1663
    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fTempArray:[Ljava/lang/Object;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1664
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    .line 1666
    return-object v1

    .line 1653
    .end local v1    # "retArray":[Ljava/lang/Object;
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v3, v2, v0

    .line 1652
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "ele"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 1528
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    .line 1529
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    .line 942
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 943
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNonSchemaAttrs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 944
    return-void
.end method

.method public resolveNamespace(Lmf/org/w3c/dom/Element;[Lmf/org/w3c/dom/Attr;Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V
    .locals 8
    .param p1, "element"    # Lmf/org/w3c/dom/Element;
    .param p2, "attrs"    # [Lmf/org/w3c/dom/Attr;
    .param p3, "nsSupport"    # Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    .prologue
    .line 1697
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->pushContext()V

    .line 1700
    array-length v1, p2

    .line 1701
    .local v1, "length":I
    const/4 v4, 0x0

    .line 1703
    .local v4, "sattr":Lmf/org/w3c/dom/Attr;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 1716
    return-void

    .line 1704
    :cond_0
    aget-object v4, p2, v0

    .line 1705
    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 1706
    .local v3, "rawname":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1707
    .local v2, "prefix":Ljava/lang/String;
    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1708
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 1711
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 1712
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getValue(Lmf/org/w3c/dom/Attr;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1713
    .local v5, "uri":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    .end local v5    # "uri":Ljava/lang/String;
    :goto_2
    invoke-virtual {p3, v2, v5}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1703
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1709
    :cond_3
    const-string v6, "xmlns:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1710
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1713
    .restart local v5    # "uri":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V
    .locals 2
    .param p1, "attrArray"    # [Ljava/lang/Object;
    .param p2, "schemaDoc"    # Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    .prologue
    .line 1672
    if-eqz p2, :cond_0

    .line 1673
    iget-object v0, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->popContext()V

    .line 1678
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    if-eqz v0, :cond_1

    .line 1679
    if-eqz p1, :cond_1

    .line 1680
    array-length v0, p1

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    if-ne v0, v1, :cond_1

    .line 1681
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1692
    :cond_1
    :goto_0
    return-void

    .line 1686
    :cond_2
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, p1, v0

    .line 1688
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v0, p1, v0

    if-eqz v0, :cond_3

    .line 1689
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v0, p1, v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1691
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    aput-object p1, v0, v1

    goto :goto_0
.end method
