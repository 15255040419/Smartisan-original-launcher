.class public final enum Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;
.super Ljava/lang/Enum;
.source "DotView.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

.field public static final enum Jaa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

.field public static final enum Kaa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

.field public static final enum Laa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

.field public static final enum Maa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

.field public static final enum Naa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    const/4 v1, 0x0

    const-string v2, "DOT_APPEAR"

    invoke-direct {v0, v2, v1}, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Jaa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    const/4 v2, 0x1

    const-string v3, "DOT_SINK"

    invoke-direct {v0, v3, v2}, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Kaa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    const/4 v3, 0x2

    const-string v4, "DOT_UP"

    invoke-direct {v0, v4, v3}, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Laa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .line 4
    new-instance v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    const/4 v4, 0x3

    const-string v5, "DOT_DISAPPEAR"

    invoke-direct {v0, v5, v4}, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Maa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    const/4 v5, 0x4

    const-string v6, "DOT_SLIDE"

    invoke-direct {v0, v6, v5}, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Naa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .line 6
    sget-object v6, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Jaa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    aput-object v6, v0, v1

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Kaa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Laa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Maa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Naa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    aput-object v1, v0, v5

    sput-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->$VALUES:[Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    return-object p0
.end method

.method public static values()[Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->$VALUES:[Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    return-object v0
.end method
