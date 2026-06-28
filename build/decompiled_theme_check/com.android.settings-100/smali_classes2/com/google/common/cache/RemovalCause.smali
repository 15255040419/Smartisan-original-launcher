.class public abstract enum Lcom/google/common/cache/RemovalCause;
.super Ljava/lang/Enum;
.source "RemovalCause.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/RemovalCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/cache/RemovalCause;

.field public static final enum COLLECTED:Lcom/google/common/cache/RemovalCause;

.field public static final enum EXPIRED:Lcom/google/common/cache/RemovalCause;

.field public static final enum EXPLICIT:Lcom/google/common/cache/RemovalCause;

.field public static final enum REPLACED:Lcom/google/common/cache/RemovalCause;

.field public static final enum SIZE:Lcom/google/common/cache/RemovalCause;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 35
    new-instance v0, Lcom/google/common/cache/RemovalCause$1;

    const/4 v1, 0x0

    const-string v2, "EXPLICIT"

    invoke-direct {v0, v2, v1}, Lcom/google/common/cache/RemovalCause$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    .line 48
    new-instance v0, Lcom/google/common/cache/RemovalCause$2;

    const/4 v2, 0x1

    const-string v3, "REPLACED"

    invoke-direct {v0, v3, v2}, Lcom/google/common/cache/RemovalCause$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    .line 60
    new-instance v0, Lcom/google/common/cache/RemovalCause$3;

    const/4 v3, 0x2

    const-string v4, "COLLECTED"

    invoke-direct {v0, v4, v3}, Lcom/google/common/cache/RemovalCause$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    .line 71
    new-instance v0, Lcom/google/common/cache/RemovalCause$4;

    const/4 v4, 0x3

    const-string v5, "EXPIRED"

    invoke-direct {v0, v5, v4}, Lcom/google/common/cache/RemovalCause$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    .line 82
    new-instance v0, Lcom/google/common/cache/RemovalCause$5;

    const/4 v5, 0x4

    const-string v6, "SIZE"

    invoke-direct {v0, v6, v5}, Lcom/google/common/cache/RemovalCause$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/RemovalCause;->SIZE:Lcom/google/common/cache/RemovalCause;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/common/cache/RemovalCause;

    .line 28
    sget-object v6, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    aput-object v6, v0, v1

    sget-object v1, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/cache/RemovalCause;->SIZE:Lcom/google/common/cache/RemovalCause;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/common/cache/RemovalCause;->$VALUES:[Lcom/google/common/cache/RemovalCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/cache/RemovalCause$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/common/cache/RemovalCause;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/RemovalCause;
    .locals 1

    .line 28
    const-class v0, Lcom/google/common/cache/RemovalCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/RemovalCause;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/RemovalCause;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/common/cache/RemovalCause;->$VALUES:[Lcom/google/common/cache/RemovalCause;

    invoke-virtual {v0}, [Lcom/google/common/cache/RemovalCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/RemovalCause;

    return-object v0
.end method


# virtual methods
.method abstract wasEvicted()Z
.end method
