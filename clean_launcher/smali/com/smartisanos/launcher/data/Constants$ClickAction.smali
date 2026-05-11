.class public final enum Lcom/smartisanos/launcher/data/Constants$ClickAction;
.super Ljava/lang/Enum;
.source "Constants.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/data/Constants$ClickAction;

.field public static final enum OZ:Lcom/smartisanos/launcher/data/Constants$ClickAction;

.field public static final enum PZ:Lcom/smartisanos/launcher/data/Constants$ClickAction;

.field public static final enum QZ:Lcom/smartisanos/launcher/data/Constants$ClickAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/data/Constants$ClickAction;

    const/4 v1, 0x0

    const-string v2, "OPEN_APP"

    invoke-direct {v0, v2, v1}, Lcom/smartisanos/launcher/data/Constants$ClickAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/Constants$ClickAction;->OZ:Lcom/smartisanos/launcher/data/Constants$ClickAction;

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/data/Constants$ClickAction;

    const/4 v2, 0x1

    const-string v3, "SWITCH_PAGE"

    invoke-direct {v0, v3, v2}, Lcom/smartisanos/launcher/data/Constants$ClickAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/Constants$ClickAction;->PZ:Lcom/smartisanos/launcher/data/Constants$ClickAction;

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/data/Constants$ClickAction;

    const/4 v3, 0x2

    const-string v4, "MULTI_SELECT"

    invoke-direct {v0, v4, v3}, Lcom/smartisanos/launcher/data/Constants$ClickAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/Constants$ClickAction;->QZ:Lcom/smartisanos/launcher/data/Constants$ClickAction;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smartisanos/launcher/data/Constants$ClickAction;

    .line 4
    sget-object v4, Lcom/smartisanos/launcher/data/Constants$ClickAction;->OZ:Lcom/smartisanos/launcher/data/Constants$ClickAction;

    aput-object v4, v0, v1

    sget-object v1, Lcom/smartisanos/launcher/data/Constants$ClickAction;->PZ:Lcom/smartisanos/launcher/data/Constants$ClickAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/data/Constants$ClickAction;->QZ:Lcom/smartisanos/launcher/data/Constants$ClickAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/smartisanos/launcher/data/Constants$ClickAction;->$VALUES:[Lcom/smartisanos/launcher/data/Constants$ClickAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/data/Constants$ClickAction;
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/data/Constants$ClickAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/data/Constants$ClickAction;

    return-object p0
.end method

.method public static values()[Lcom/smartisanos/launcher/data/Constants$ClickAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/data/Constants$ClickAction;->$VALUES:[Lcom/smartisanos/launcher/data/Constants$ClickAction;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/data/Constants$ClickAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/data/Constants$ClickAction;

    return-object v0
.end method
