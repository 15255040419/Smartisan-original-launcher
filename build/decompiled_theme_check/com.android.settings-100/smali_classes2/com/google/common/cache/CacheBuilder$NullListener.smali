.class final enum Lcom/google/common/cache/CacheBuilder$NullListener;
.super Ljava/lang/Enum;
.source "CacheBuilder.java"

# interfaces
.implements Lcom/google/common/cache/RemovalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NullListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/CacheBuilder$NullListener;",
        ">;",
        "Lcom/google/common/cache/RemovalListener<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/cache/CacheBuilder$NullListener;

.field public static final enum INSTANCE:Lcom/google/common/cache/CacheBuilder$NullListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 196
    new-instance v0, Lcom/google/common/cache/CacheBuilder$NullListener;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/google/common/cache/CacheBuilder$NullListener;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/CacheBuilder$NullListener;->INSTANCE:Lcom/google/common/cache/CacheBuilder$NullListener;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/cache/CacheBuilder$NullListener;

    .line 195
    sget-object v2, Lcom/google/common/cache/CacheBuilder$NullListener;->INSTANCE:Lcom/google/common/cache/CacheBuilder$NullListener;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/cache/CacheBuilder$NullListener;->$VALUES:[Lcom/google/common/cache/CacheBuilder$NullListener;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/CacheBuilder$NullListener;
    .locals 1

    .line 195
    const-class v0, Lcom/google/common/cache/CacheBuilder$NullListener;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/CacheBuilder$NullListener;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/CacheBuilder$NullListener;
    .locals 1

    .line 195
    sget-object v0, Lcom/google/common/cache/CacheBuilder$NullListener;->$VALUES:[Lcom/google/common/cache/CacheBuilder$NullListener;

    invoke-virtual {v0}, [Lcom/google/common/cache/CacheBuilder$NullListener;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/CacheBuilder$NullListener;

    return-object v0
.end method


# virtual methods
.method public onRemoval(Lcom/google/common/cache/RemovalNotification;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/RemovalNotification<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
