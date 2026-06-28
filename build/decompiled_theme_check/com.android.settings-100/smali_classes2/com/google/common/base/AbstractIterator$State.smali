.class final enum Lcom/google/common/base/AbstractIterator$State;
.super Ljava/lang/Enum;
.source "AbstractIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/AbstractIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/base/AbstractIterator$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/AbstractIterator$State;

.field public static final enum DONE:Lcom/google/common/base/AbstractIterator$State;

.field public static final enum FAILED:Lcom/google/common/base/AbstractIterator$State;

.field public static final enum NOT_READY:Lcom/google/common/base/AbstractIterator$State;

.field public static final enum READY:Lcom/google/common/base/AbstractIterator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 36
    new-instance v0, Lcom/google/common/base/AbstractIterator$State;

    const/4 v1, 0x0

    const-string v2, "READY"

    invoke-direct {v0, v2, v1}, Lcom/google/common/base/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/AbstractIterator$State;->READY:Lcom/google/common/base/AbstractIterator$State;

    .line 37
    new-instance v0, Lcom/google/common/base/AbstractIterator$State;

    const/4 v2, 0x1

    const-string v3, "NOT_READY"

    invoke-direct {v0, v3, v2}, Lcom/google/common/base/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/AbstractIterator$State;->NOT_READY:Lcom/google/common/base/AbstractIterator$State;

    .line 38
    new-instance v0, Lcom/google/common/base/AbstractIterator$State;

    const/4 v3, 0x2

    const-string v4, "DONE"

    invoke-direct {v0, v4, v3}, Lcom/google/common/base/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/AbstractIterator$State;->DONE:Lcom/google/common/base/AbstractIterator$State;

    .line 39
    new-instance v0, Lcom/google/common/base/AbstractIterator$State;

    const/4 v4, 0x3

    const-string v5, "FAILED"

    invoke-direct {v0, v5, v4}, Lcom/google/common/base/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/AbstractIterator$State;->FAILED:Lcom/google/common/base/AbstractIterator$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/common/base/AbstractIterator$State;

    .line 35
    sget-object v5, Lcom/google/common/base/AbstractIterator$State;->READY:Lcom/google/common/base/AbstractIterator$State;

    aput-object v5, v0, v1

    sget-object v1, Lcom/google/common/base/AbstractIterator$State;->NOT_READY:Lcom/google/common/base/AbstractIterator$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/AbstractIterator$State;->DONE:Lcom/google/common/base/AbstractIterator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/base/AbstractIterator$State;->FAILED:Lcom/google/common/base/AbstractIterator$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/common/base/AbstractIterator$State;->$VALUES:[Lcom/google/common/base/AbstractIterator$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/AbstractIterator$State;
    .locals 1

    .line 35
    const-class v0, Lcom/google/common/base/AbstractIterator$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/AbstractIterator$State;

    return-object p0
.end method

.method public static values()[Lcom/google/common/base/AbstractIterator$State;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->$VALUES:[Lcom/google/common/base/AbstractIterator$State;

    invoke-virtual {v0}, [Lcom/google/common/base/AbstractIterator$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/AbstractIterator$State;

    return-object v0
.end method
