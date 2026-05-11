.class public final enum Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;
.super Ljava/lang/Enum;
.source "TrashAnimation.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

.field public static final enum KZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

.field public static final enum LZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

.field public static final enum MZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

.field public static final enum NZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    const/4 v1, 0x0

    const-string v2, "TRASH_APPEAR"

    invoke-direct {v0, v2, v1}, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->KZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    const/4 v2, 0x1

    const-string v3, "TRASH_FALL"

    invoke-direct {v0, v3, v2}, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->LZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    const/4 v3, 0x2

    const-string v4, "TRASH_FLOAT_UP"

    invoke-direct {v0, v4, v3}, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->MZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    .line 4
    new-instance v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    const/4 v4, 0x3

    const-string v5, "TRASH_REDUCE"

    invoke-direct {v0, v5, v4}, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->NZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    .line 5
    sget-object v5, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->KZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    aput-object v5, v0, v1

    sget-object v1, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->LZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->MZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->NZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    aput-object v1, v0, v4

    sput-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->$VALUES:[Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    return-object p0
.end method

.method public static values()[Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->$VALUES:[Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    return-object v0
.end method
