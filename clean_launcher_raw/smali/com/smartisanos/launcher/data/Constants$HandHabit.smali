.class public final enum Lcom/smartisanos/launcher/data/Constants$HandHabit;
.super Ljava/lang/Enum;
.source "Constants.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/data/Constants$HandHabit;

.field public static final enum LEFT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

.field public static final enum RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/data/Constants$HandHabit;

    const/4 v1, 0x0

    const-string v2, "LEFT"

    invoke-direct {v0, v2, v1}, Lcom/smartisanos/launcher/data/Constants$HandHabit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/Constants$HandHabit;->LEFT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    new-instance v0, Lcom/smartisanos/launcher/data/Constants$HandHabit;

    const/4 v2, 0x1

    const-string v3, "RIGHT"

    invoke-direct {v0, v3, v2}, Lcom/smartisanos/launcher/data/Constants$HandHabit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smartisanos/launcher/data/Constants$HandHabit;

    .line 2
    sget-object v3, Lcom/smartisanos/launcher/data/Constants$HandHabit;->LEFT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    aput-object v3, v0, v1

    sget-object v1, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    aput-object v1, v0, v2

    sput-object v0, Lcom/smartisanos/launcher/data/Constants$HandHabit;->$VALUES:[Lcom/smartisanos/launcher/data/Constants$HandHabit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/data/Constants$HandHabit;
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/data/Constants$HandHabit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/data/Constants$HandHabit;

    return-object p0
.end method

.method public static values()[Lcom/smartisanos/launcher/data/Constants$HandHabit;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/data/Constants$HandHabit;->$VALUES:[Lcom/smartisanos/launcher/data/Constants$HandHabit;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/data/Constants$HandHabit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/data/Constants$HandHabit;

    return-object v0
.end method
