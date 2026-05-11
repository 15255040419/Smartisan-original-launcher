.class Lcom/smartisanos/launcher/receiver/b;
.super Lcom/smartisanos/smengine/n;
.source "DataDumpReceiver.java"


# instance fields
.field final synthetic cE:I

.field final synthetic this$0:Lcom/smartisanos/launcher/receiver/DataDumpReceiver;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/receiver/b;->this$0:Lcom/smartisanos/launcher/receiver/DataDumpReceiver;

    iput p3, p0, Lcom/smartisanos/launcher/receiver/b;->cE:I

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/smartisanos/launcher/view/vc;->my:Z

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/receiver/b;->cE:I

    if-ltz v0, :cond_0

    .line 3
    sput v0, Lcom/smartisanos/launcher/view/vc;->ny:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    sput v0, Lcom/smartisanos/launcher/view/vc;->ny:I

    .line 5
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fbo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/smartisanos/launcher/view/vc;->ny:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " screencap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/launcher/receiver/b;->cE:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void
.end method
