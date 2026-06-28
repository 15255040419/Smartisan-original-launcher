.class public final enum Lcom/google/common/io/RecursiveDeleteOption;
.super Ljava/lang/Enum;
.source "RecursiveDeleteOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/io/RecursiveDeleteOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/io/RecursiveDeleteOption;

.field public static final enum ALLOW_INSECURE:Lcom/google/common/io/RecursiveDeleteOption;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Lcom/google/common/io/RecursiveDeleteOption;

    const/4 v1, 0x0

    const-string v2, "ALLOW_INSECURE"

    invoke-direct {v0, v2, v1}, Lcom/google/common/io/RecursiveDeleteOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/io/RecursiveDeleteOption;->ALLOW_INSECURE:Lcom/google/common/io/RecursiveDeleteOption;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/io/RecursiveDeleteOption;

    .line 31
    sget-object v2, Lcom/google/common/io/RecursiveDeleteOption;->ALLOW_INSECURE:Lcom/google/common/io/RecursiveDeleteOption;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/io/RecursiveDeleteOption;->$VALUES:[Lcom/google/common/io/RecursiveDeleteOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/io/RecursiveDeleteOption;
    .locals 1

    .line 31
    const-class v0, Lcom/google/common/io/RecursiveDeleteOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/io/RecursiveDeleteOption;

    return-object p0
.end method

.method public static values()[Lcom/google/common/io/RecursiveDeleteOption;
    .locals 1

    .line 31
    sget-object v0, Lcom/google/common/io/RecursiveDeleteOption;->$VALUES:[Lcom/google/common/io/RecursiveDeleteOption;

    invoke-virtual {v0}, [Lcom/google/common/io/RecursiveDeleteOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/io/RecursiveDeleteOption;

    return-object v0
.end method
