.class final enum Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;
.super Ljava/lang/Enum;
.source "DataDumpReceiver.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

.field public static final enum Caa:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

.field public static final enum Daa:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    const/4 v1, 0x0

    const-string v2, "MAIN_THREAD"

    invoke-direct {v0, v2, v1}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->Caa:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    const/4 v2, 0x1

    const-string v3, "GL_THREAD"

    invoke-direct {v0, v3, v2}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->Daa:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    .line 3
    sget-object v3, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->Caa:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    aput-object v3, v0, v1

    sget-object v1, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->Daa:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    aput-object v1, v0, v2

    sput-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->$VALUES:[Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    return-object p0
.end method

.method public static values()[Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->$VALUES:[Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    return-object v0
.end method
