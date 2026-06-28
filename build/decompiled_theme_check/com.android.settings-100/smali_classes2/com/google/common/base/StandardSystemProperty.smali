.class public final enum Lcom/google/common/base/StandardSystemProperty;
.super Ljava/lang/Enum;
.source "StandardSystemProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/base/StandardSystemProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/StandardSystemProperty;

.field public static final enum FILE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_CLASS_PATH:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_CLASS_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_COMPILER:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_EXT_DIRS:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_HOME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_IO_TMPDIR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_LIBRARY_PATH:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VENDOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VENDOR_URL:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_NAME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_VENDOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum JAVA_VM_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum LINE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum OS_ARCH:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum OS_NAME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum OS_VERSION:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum PATH_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum USER_DIR:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum USER_HOME:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum USER_NAME:Lcom/google/common/base/StandardSystemProperty;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 30
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/4 v1, 0x0

    const-string v2, "JAVA_VERSION"

    const-string v3, "java.version"

    invoke-direct {v0, v2, v1, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 33
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/4 v2, 0x1

    const-string v3, "JAVA_VENDOR"

    const-string v4, "java.vendor"

    invoke-direct {v0, v3, v2, v4}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    .line 36
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/4 v3, 0x2

    const-string v4, "JAVA_VENDOR_URL"

    const-string v5, "java.vendor.url"

    invoke-direct {v0, v4, v3, v5}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VENDOR_URL:Lcom/google/common/base/StandardSystemProperty;

    .line 39
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/4 v4, 0x3

    const-string v5, "JAVA_HOME"

    const-string v6, "java.home"

    invoke-direct {v0, v5, v4, v6}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_HOME:Lcom/google/common/base/StandardSystemProperty;

    .line 42
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/4 v5, 0x4

    const-string v6, "JAVA_VM_SPECIFICATION_VERSION"

    const-string v7, "java.vm.specification.version"

    invoke-direct {v0, v6, v5, v7}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 45
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/4 v6, 0x5

    const-string v7, "JAVA_VM_SPECIFICATION_VENDOR"

    const-string v8, "java.vm.specification.vendor"

    invoke-direct {v0, v7, v6, v8}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    .line 48
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/4 v7, 0x6

    const-string v8, "JAVA_VM_SPECIFICATION_NAME"

    const-string v9, "java.vm.specification.name"

    invoke-direct {v0, v8, v7, v9}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

    .line 51
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/4 v8, 0x7

    const-string v9, "JAVA_VM_VERSION"

    const-string v10, "java.vm.version"

    invoke-direct {v0, v9, v8, v10}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 54
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v9, 0x8

    const-string v10, "JAVA_VM_VENDOR"

    const-string v11, "java.vm.vendor"

    invoke-direct {v0, v10, v9, v11}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    .line 57
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v10, 0x9

    const-string v11, "JAVA_VM_NAME"

    const-string v12, "java.vm.name"

    invoke-direct {v0, v11, v10, v12}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_NAME:Lcom/google/common/base/StandardSystemProperty;

    .line 60
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v11, 0xa

    const-string v12, "JAVA_SPECIFICATION_VERSION"

    const-string v13, "java.specification.version"

    invoke-direct {v0, v12, v11, v13}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 63
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v12, 0xb

    const-string v13, "JAVA_SPECIFICATION_VENDOR"

    const-string v14, "java.specification.vendor"

    invoke-direct {v0, v13, v12, v14}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    .line 66
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v13, 0xc

    const-string v14, "JAVA_SPECIFICATION_NAME"

    const-string v15, "java.specification.name"

    invoke-direct {v0, v14, v13, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

    .line 69
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v14, 0xd

    const-string v15, "JAVA_CLASS_VERSION"

    const-string v13, "java.class.version"

    invoke-direct {v0, v15, v14, v13}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_CLASS_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 72
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const/16 v13, 0xe

    const-string v15, "JAVA_CLASS_PATH"

    const-string v14, "java.class.path"

    invoke-direct {v0, v15, v13, v14}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_CLASS_PATH:Lcom/google/common/base/StandardSystemProperty;

    .line 75
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v14, "JAVA_LIBRARY_PATH"

    const/16 v15, 0xf

    const-string v13, "java.library.path"

    invoke-direct {v0, v14, v15, v13}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_LIBRARY_PATH:Lcom/google/common/base/StandardSystemProperty;

    .line 78
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v13, "JAVA_IO_TMPDIR"

    const/16 v14, 0x10

    const-string v15, "java.io.tmpdir"

    invoke-direct {v0, v13, v14, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_IO_TMPDIR:Lcom/google/common/base/StandardSystemProperty;

    .line 81
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v13, "JAVA_COMPILER"

    const/16 v14, 0x11

    const-string v15, "java.compiler"

    invoke-direct {v0, v13, v14, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_COMPILER:Lcom/google/common/base/StandardSystemProperty;

    .line 84
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v13, "JAVA_EXT_DIRS"

    const/16 v14, 0x12

    const-string v15, "java.ext.dirs"

    invoke-direct {v0, v13, v14, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->JAVA_EXT_DIRS:Lcom/google/common/base/StandardSystemProperty;

    .line 87
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v13, "OS_NAME"

    const/16 v14, 0x13

    const-string v15, "os.name"

    invoke-direct {v0, v13, v14, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->OS_NAME:Lcom/google/common/base/StandardSystemProperty;

    .line 90
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v13, "OS_ARCH"

    const/16 v14, 0x14

    const-string v15, "os.arch"

    invoke-direct {v0, v13, v14, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->OS_ARCH:Lcom/google/common/base/StandardSystemProperty;

    .line 93
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v13, "OS_VERSION"

    const/16 v14, 0x15

    const-string v15, "os.version"

    invoke-direct {v0, v13, v14, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->OS_VERSION:Lcom/google/common/base/StandardSystemProperty;

    .line 96
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v13, "FILE_SEPARATOR"

    const/16 v14, 0x16

    const-string v15, "file.separator"

    invoke-direct {v0, v13, v14, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->FILE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    .line 99
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v13, "PATH_SEPARATOR"

    const/16 v14, 0x17

    const-string v15, "path.separator"

    invoke-direct {v0, v13, v14, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->PATH_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    .line 102
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v13, "LINE_SEPARATOR"

    const/16 v14, 0x18

    const-string v15, "line.separator"

    invoke-direct {v0, v13, v14, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->LINE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    .line 105
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v13, "USER_NAME"

    const/16 v14, 0x19

    const-string v15, "user.name"

    invoke-direct {v0, v13, v14, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->USER_NAME:Lcom/google/common/base/StandardSystemProperty;

    .line 108
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v13, "USER_HOME"

    const/16 v14, 0x1a

    const-string v15, "user.home"

    invoke-direct {v0, v13, v14, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->USER_HOME:Lcom/google/common/base/StandardSystemProperty;

    .line 111
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v13, "USER_DIR"

    const/16 v14, 0x1b

    const-string v15, "user.dir"

    invoke-direct {v0, v13, v14, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->USER_DIR:Lcom/google/common/base/StandardSystemProperty;

    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/google/common/base/StandardSystemProperty;

    .line 26
    sget-object v13, Lcom/google/common/base/StandardSystemProperty;->JAVA_VERSION:Lcom/google/common/base/StandardSystemProperty;

    aput-object v13, v0, v1

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_VENDOR_URL:Lcom/google/common/base/StandardSystemProperty;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_HOME:Lcom/google/common/base/StandardSystemProperty;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_VERSION:Lcom/google/common/base/StandardSystemProperty;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_VM_NAME:Lcom/google/common/base/StandardSystemProperty;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_VERSION:Lcom/google/common/base/StandardSystemProperty;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_VENDOR:Lcom/google/common/base/StandardSystemProperty;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_SPECIFICATION_NAME:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_CLASS_VERSION:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_CLASS_PATH:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_LIBRARY_PATH:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_IO_TMPDIR:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_COMPILER:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->JAVA_EXT_DIRS:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->OS_NAME:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->OS_ARCH:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->OS_VERSION:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->FILE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->PATH_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->LINE_SEPARATOR:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->USER_NAME:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->USER_HOME:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->USER_DIR:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->$VALUES:[Lcom/google/common/base/StandardSystemProperty;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput-object p3, p0, Lcom/google/common/base/StandardSystemProperty;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/StandardSystemProperty;
    .locals 1

    .line 26
    const-class v0, Lcom/google/common/base/StandardSystemProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/StandardSystemProperty;

    return-object p0
.end method

.method public static values()[Lcom/google/common/base/StandardSystemProperty;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/common/base/StandardSystemProperty;->$VALUES:[Lcom/google/common/base/StandardSystemProperty;

    invoke-virtual {v0}, [Lcom/google/common/base/StandardSystemProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/StandardSystemProperty;

    return-object v0
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/google/common/base/StandardSystemProperty;->key:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/common/base/StandardSystemProperty;->key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/base/StandardSystemProperty;->value()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public value()Ljava/lang/String;
    .locals 0
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 130
    iget-object p0, p0, Lcom/google/common/base/StandardSystemProperty;->key:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
