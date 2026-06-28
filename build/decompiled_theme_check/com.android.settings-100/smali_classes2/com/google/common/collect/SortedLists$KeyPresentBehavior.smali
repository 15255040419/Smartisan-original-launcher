.class abstract enum Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
.super Ljava/lang/Enum;
.source "SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/SortedLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "KeyPresentBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/SortedLists$KeyPresentBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

.field public static final enum ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

.field public static final enum FIRST_AFTER:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

.field public static final enum FIRST_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

.field public static final enum LAST_BEFORE:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

.field public static final enum LAST_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 49
    new-instance v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$1;

    const/4 v1, 0x0

    const-string v2, "ANY_PRESENT"

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    .line 57
    new-instance v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$2;

    const/4 v2, 0x1

    const-string v3, "LAST_PRESENT"

    invoke-direct {v0, v3, v2}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->LAST_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    .line 79
    new-instance v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$3;

    const/4 v3, 0x2

    const-string v4, "FIRST_PRESENT"

    invoke-direct {v0, v4, v3}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    .line 105
    new-instance v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$4;

    const/4 v4, 0x3

    const-string v5, "FIRST_AFTER"

    invoke-direct {v0, v5, v4}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    .line 116
    new-instance v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$5;

    const/4 v5, 0x4

    const-string v6, "LAST_BEFORE"

    invoke-direct {v0, v6, v5}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->LAST_BEFORE:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    .line 44
    sget-object v6, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    aput-object v6, v0, v1

    sget-object v1, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->LAST_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->LAST_BEFORE:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->$VALUES:[Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/SortedLists$1;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
    .locals 1

    .line 44
    const-class v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
    .locals 1

    .line 44
    sget-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->$VALUES:[Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    invoke-virtual {v0}, [Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    return-object v0
.end method


# virtual methods
.method abstract resultIndex(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;",
            "Ljava/util/List<",
            "+TE;>;I)I"
        }
    .end annotation
.end method
