.class public abstract enum Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;
.super Ljava/lang/Enum;
.source "CycleDetectingLockFactory.java"

# interfaces
.implements Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Policies"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;",
        ">;",
        "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

.field public static final enum DISABLED:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

.field public static final enum THROW:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

.field public static final enum WARN:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 201
    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies$1;

    const/4 v1, 0x0

    const-string v2, "THROW"

    invoke-direct {v0, v2, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->THROW:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    .line 213
    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies$2;

    const/4 v2, 0x1

    const-string v3, "WARN"

    invoke-direct {v0, v3, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->WARN:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    .line 228
    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies$3;

    const/4 v3, 0x2

    const-string v4, "DISABLED"

    invoke-direct {v0, v4, v3}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->DISABLED:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    .line 194
    sget-object v4, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->THROW:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->WARN:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->DISABLED:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->$VALUES:[Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V
    .locals 0

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;
    .locals 1

    .line 194
    const-class v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    return-object p0
.end method

.method public static values()[Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;
    .locals 1

    .line 194
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->$VALUES:[Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    return-object v0
.end method
