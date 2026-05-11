.class public final enum Lcom/smartisanos/launcher/view/TrashView$STATUS;
.super Ljava/lang/Enum;
.source "TrashView.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/view/TrashView$STATUS;

.field public static final enum Qaa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

.field public static final enum Raa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

.field public static final enum Saa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

.field public static final enum Taa:Lcom/smartisanos/launcher/view/TrashView$STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;

    const/4 v1, 0x0

    const-string v2, "FLOAT_UP"

    invoke-direct {v0, v2, v1}, Lcom/smartisanos/launcher/view/TrashView$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Qaa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;

    const/4 v2, 0x1

    const-string v3, "APPEAR"

    invoke-direct {v0, v3, v2}, Lcom/smartisanos/launcher/view/TrashView$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Raa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;

    const/4 v3, 0x2

    const-string v4, "OBJECT_IN_TRASH"

    invoke-direct {v0, v4, v3}, Lcom/smartisanos/launcher/view/TrashView$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Saa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    .line 4
    new-instance v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;

    const/4 v4, 0x3

    const-string v5, "TOUCH_UP_AND_OBJECT_IN_TRASH"

    invoke-direct {v0, v5, v4}, Lcom/smartisanos/launcher/view/TrashView$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Taa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smartisanos/launcher/view/TrashView$STATUS;

    .line 5
    sget-object v5, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Qaa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    aput-object v5, v0, v1

    sget-object v1, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Raa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Saa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Taa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->$VALUES:[Lcom/smartisanos/launcher/view/TrashView$STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/view/TrashView$STATUS;
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/TrashView$STATUS;

    return-object p0
.end method

.method public static values()[Lcom/smartisanos/launcher/view/TrashView$STATUS;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->$VALUES:[Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/view/TrashView$STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/view/TrashView$STATUS;

    return-object v0
.end method
