.class final enum Lcom/google/common/graph/GraphConstants$Presence;
.super Ljava/lang/Enum;
.source "GraphConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/GraphConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Presence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/graph/GraphConstants$Presence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/graph/GraphConstants$Presence;

.field public static final enum EDGE_EXISTS:Lcom/google/common/graph/GraphConstants$Presence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    new-instance v0, Lcom/google/common/graph/GraphConstants$Presence;

    const/4 v1, 0x0

    const-string v2, "EDGE_EXISTS"

    invoke-direct {v0, v2, v1}, Lcom/google/common/graph/GraphConstants$Presence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/graph/GraphConstants$Presence;->EDGE_EXISTS:Lcom/google/common/graph/GraphConstants$Presence;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/graph/GraphConstants$Presence;

    .line 54
    sget-object v2, Lcom/google/common/graph/GraphConstants$Presence;->EDGE_EXISTS:Lcom/google/common/graph/GraphConstants$Presence;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/graph/GraphConstants$Presence;->$VALUES:[Lcom/google/common/graph/GraphConstants$Presence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/graph/GraphConstants$Presence;
    .locals 1

    .line 54
    const-class v0, Lcom/google/common/graph/GraphConstants$Presence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/graph/GraphConstants$Presence;

    return-object p0
.end method

.method public static values()[Lcom/google/common/graph/GraphConstants$Presence;
    .locals 1

    .line 54
    sget-object v0, Lcom/google/common/graph/GraphConstants$Presence;->$VALUES:[Lcom/google/common/graph/GraphConstants$Presence;

    invoke-virtual {v0}, [Lcom/google/common/graph/GraphConstants$Presence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/graph/GraphConstants$Presence;

    return-object v0
.end method
