.class public final enum Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;
.super Ljava/lang/Enum;
.source "ThreadVerify.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

.field public static final enum MAIN:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

.field public static final enum NY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

.field public static final enum OY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

.field public static final enum PY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    const/4 v1, 0x0

    const-string v2, "GL"

    invoke-direct {v0, v2, v1}, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->NY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    const/4 v2, 0x1

    const-string v3, "DB"

    invoke-direct {v0, v3, v2}, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->OY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    const/4 v3, 0x2

    const-string v4, "MAIN"

    invoke-direct {v0, v4, v3}, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->MAIN:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    .line 4
    new-instance v0, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    const/4 v4, 0x3

    const-string v5, "NET"

    invoke-direct {v0, v5, v4}, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->PY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    .line 5
    sget-object v5, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->NY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    aput-object v5, v0, v1

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->OY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->MAIN:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->PY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    aput-object v1, v0, v4

    sput-object v0, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->$VALUES:[Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    return-object p0
.end method

.method public static values()[Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->$VALUES:[Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    return-object v0
.end method
