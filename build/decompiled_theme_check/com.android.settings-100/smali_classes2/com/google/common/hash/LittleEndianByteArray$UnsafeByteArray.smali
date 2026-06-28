.class abstract enum Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
.super Ljava/lang/Enum;
.source "LittleEndianByteArray.java"

# interfaces
.implements Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/LittleEndianByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "UnsafeByteArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;",
        ">;",
        "Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

.field private static final BYTE_ARRAY_BASE_OFFSET:I

.field public static final enum UNSAFE_BIG_ENDIAN:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

.field public static final enum UNSAFE_LITTLE_ENDIAN:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

.field private static final theUnsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 128
    const-class v0, [B

    new-instance v1, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$1;

    const/4 v2, 0x0

    const-string v3, "UNSAFE_LITTLE_ENDIAN"

    invoke-direct {v1, v3, v2}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$1;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->UNSAFE_LITTLE_ENDIAN:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    .line 139
    new-instance v1, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$2;

    const/4 v3, 0x1

    const-string v4, "UNSAFE_BIG_ENDIAN"

    invoke-direct {v1, v4, v3}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->UNSAFE_BIG_ENDIAN:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    .line 126
    sget-object v4, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->UNSAFE_LITTLE_ENDIAN:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    aput-object v4, v1, v2

    sget-object v2, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->UNSAFE_BIG_ENDIAN:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    aput-object v2, v1, v3

    sput-object v1, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->$VALUES:[Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    .line 195
    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->theUnsafe:Lsun/misc/Unsafe;

    .line 196
    sget-object v1, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    sput v1, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->BYTE_ARRAY_BASE_OFFSET:I

    .line 199
    sget-object v1, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    if-ne v0, v3, :cond_0

    return-void

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/hash/LittleEndianByteArray$1;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .line 126
    sget v0, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->BYTE_ARRAY_BASE_OFFSET:I

    return v0
.end method

.method static synthetic access$200()Lsun/misc/Unsafe;
    .locals 1

    .line 126
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->theUnsafe:Lsun/misc/Unsafe;

    return-object v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 3

    .line 169
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 174
    :catch_0
    :try_start_1
    new-instance v0, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$3;

    invoke-direct {v0}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 190
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Could not initialize intrinsics"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
    .locals 1

    .line 126
    const-class v0, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    return-object p0
.end method

.method public static values()[Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
    .locals 1

    .line 126
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->$VALUES:[Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    invoke-virtual {v0}, [Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    return-object v0
.end method
