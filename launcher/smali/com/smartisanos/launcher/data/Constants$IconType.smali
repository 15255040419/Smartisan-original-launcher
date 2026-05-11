.class public final enum Lcom/smartisanos/launcher/data/Constants$IconType;
.super Ljava/lang/Enum;
.source "Constants.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/data/Constants$IconType;

.field public static final enum RZ:Lcom/smartisanos/launcher/data/Constants$IconType;

.field public static final enum SZ:Lcom/smartisanos/launcher/data/Constants$IconType;

.field public static final enum TZ:Lcom/smartisanos/launcher/data/Constants$IconType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/data/Constants$IconType;

    const/4 v1, 0x0

    const-string v2, "Dark"

    invoke-direct {v0, v2, v1}, Lcom/smartisanos/launcher/data/Constants$IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/Constants$IconType;->RZ:Lcom/smartisanos/launcher/data/Constants$IconType;

    new-instance v0, Lcom/smartisanos/launcher/data/Constants$IconType;

    const/4 v2, 0x1

    const-string v3, "Light"

    invoke-direct {v0, v3, v2}, Lcom/smartisanos/launcher/data/Constants$IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/Constants$IconType;->SZ:Lcom/smartisanos/launcher/data/Constants$IconType;

    new-instance v0, Lcom/smartisanos/launcher/data/Constants$IconType;

    const/4 v3, 0x2

    const-string v4, "Transparent"

    invoke-direct {v0, v4, v3}, Lcom/smartisanos/launcher/data/Constants$IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/Constants$IconType;->TZ:Lcom/smartisanos/launcher/data/Constants$IconType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smartisanos/launcher/data/Constants$IconType;

    .line 2
    sget-object v4, Lcom/smartisanos/launcher/data/Constants$IconType;->RZ:Lcom/smartisanos/launcher/data/Constants$IconType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/smartisanos/launcher/data/Constants$IconType;->SZ:Lcom/smartisanos/launcher/data/Constants$IconType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/data/Constants$IconType;->TZ:Lcom/smartisanos/launcher/data/Constants$IconType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/smartisanos/launcher/data/Constants$IconType;->$VALUES:[Lcom/smartisanos/launcher/data/Constants$IconType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/data/Constants$IconType;
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/data/Constants$IconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/data/Constants$IconType;

    return-object p0
.end method

.method public static values()[Lcom/smartisanos/launcher/data/Constants$IconType;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/data/Constants$IconType;->$VALUES:[Lcom/smartisanos/launcher/data/Constants$IconType;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/data/Constants$IconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/data/Constants$IconType;

    return-object v0
.end method
