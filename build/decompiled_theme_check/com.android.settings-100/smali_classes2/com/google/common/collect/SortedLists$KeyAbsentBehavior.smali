.class abstract enum Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;
.super Ljava/lang/Enum;
.source "SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/SortedLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "KeyAbsentBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

.field public static final enum INVERTED_INSERTION_INDEX:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

.field public static final enum NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

.field public static final enum NEXT_LOWER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 136
    new-instance v0, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior$1;

    const/4 v1, 0x0

    const-string v2, "NEXT_LOWER"

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 146
    new-instance v0, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior$2;

    const/4 v2, 0x1

    const-string v3, "NEXT_HIGHER"

    invoke-direct {v0, v3, v2}, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 164
    new-instance v0, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior$3;

    const/4 v3, 0x2

    const-string v4, "INVERTED_INSERTION_INDEX"

    invoke-direct {v0, v4, v3}, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->INVERTED_INSERTION_INDEX:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 131
    sget-object v4, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->INVERTED_INSERTION_INDEX:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->$VALUES:[Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/SortedLists$1;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;
    .locals 1

    .line 131
    const-class v0, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;
    .locals 1

    .line 131
    sget-object v0, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->$VALUES:[Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-virtual {v0}, [Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    return-object v0
.end method


# virtual methods
.method abstract resultIndex(I)I
.end method
