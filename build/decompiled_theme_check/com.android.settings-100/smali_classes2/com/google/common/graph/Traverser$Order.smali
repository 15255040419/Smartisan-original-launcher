.class final enum Lcom/google/common/graph/Traverser$Order;
.super Ljava/lang/Enum;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/graph/Traverser$Order;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/graph/Traverser$Order;

.field public static final enum POSTORDER:Lcom/google/common/graph/Traverser$Order;

.field public static final enum PREORDER:Lcom/google/common/graph/Traverser$Order;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 659
    new-instance v0, Lcom/google/common/graph/Traverser$Order;

    const/4 v1, 0x0

    const-string v2, "PREORDER"

    invoke-direct {v0, v2, v1}, Lcom/google/common/graph/Traverser$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/graph/Traverser$Order;->PREORDER:Lcom/google/common/graph/Traverser$Order;

    .line 660
    new-instance v0, Lcom/google/common/graph/Traverser$Order;

    const/4 v2, 0x1

    const-string v3, "POSTORDER"

    invoke-direct {v0, v3, v2}, Lcom/google/common/graph/Traverser$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/graph/Traverser$Order;->POSTORDER:Lcom/google/common/graph/Traverser$Order;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/graph/Traverser$Order;

    .line 658
    sget-object v3, Lcom/google/common/graph/Traverser$Order;->PREORDER:Lcom/google/common/graph/Traverser$Order;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/common/graph/Traverser$Order;->POSTORDER:Lcom/google/common/graph/Traverser$Order;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/graph/Traverser$Order;->$VALUES:[Lcom/google/common/graph/Traverser$Order;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 658
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/graph/Traverser$Order;
    .locals 1

    .line 658
    const-class v0, Lcom/google/common/graph/Traverser$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/graph/Traverser$Order;

    return-object p0
.end method

.method public static values()[Lcom/google/common/graph/Traverser$Order;
    .locals 1

    .line 658
    sget-object v0, Lcom/google/common/graph/Traverser$Order;->$VALUES:[Lcom/google/common/graph/Traverser$Order;

    invoke-virtual {v0}, [Lcom/google/common/graph/Traverser$Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/graph/Traverser$Order;

    return-object v0
.end method
