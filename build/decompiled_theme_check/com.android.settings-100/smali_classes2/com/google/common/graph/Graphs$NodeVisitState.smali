.class final enum Lcom/google/common/graph/Graphs$NodeVisitState;
.super Ljava/lang/Enum;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NodeVisitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/graph/Graphs$NodeVisitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/graph/Graphs$NodeVisitState;

.field public static final enum COMPLETE:Lcom/google/common/graph/Graphs$NodeVisitState;

.field public static final enum PENDING:Lcom/google/common/graph/Graphs$NodeVisitState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 581
    new-instance v0, Lcom/google/common/graph/Graphs$NodeVisitState;

    const/4 v1, 0x0

    const-string v2, "PENDING"

    invoke-direct {v0, v2, v1}, Lcom/google/common/graph/Graphs$NodeVisitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/graph/Graphs$NodeVisitState;->PENDING:Lcom/google/common/graph/Graphs$NodeVisitState;

    .line 582
    new-instance v0, Lcom/google/common/graph/Graphs$NodeVisitState;

    const/4 v2, 0x1

    const-string v3, "COMPLETE"

    invoke-direct {v0, v3, v2}, Lcom/google/common/graph/Graphs$NodeVisitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/graph/Graphs$NodeVisitState;->COMPLETE:Lcom/google/common/graph/Graphs$NodeVisitState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/graph/Graphs$NodeVisitState;

    .line 580
    sget-object v3, Lcom/google/common/graph/Graphs$NodeVisitState;->PENDING:Lcom/google/common/graph/Graphs$NodeVisitState;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/common/graph/Graphs$NodeVisitState;->COMPLETE:Lcom/google/common/graph/Graphs$NodeVisitState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/graph/Graphs$NodeVisitState;->$VALUES:[Lcom/google/common/graph/Graphs$NodeVisitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 580
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/graph/Graphs$NodeVisitState;
    .locals 1

    .line 580
    const-class v0, Lcom/google/common/graph/Graphs$NodeVisitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/graph/Graphs$NodeVisitState;

    return-object p0
.end method

.method public static values()[Lcom/google/common/graph/Graphs$NodeVisitState;
    .locals 1

    .line 580
    sget-object v0, Lcom/google/common/graph/Graphs$NodeVisitState;->$VALUES:[Lcom/google/common/graph/Graphs$NodeVisitState;

    invoke-virtual {v0}, [Lcom/google/common/graph/Graphs$NodeVisitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/graph/Graphs$NodeVisitState;

    return-object v0
.end method
