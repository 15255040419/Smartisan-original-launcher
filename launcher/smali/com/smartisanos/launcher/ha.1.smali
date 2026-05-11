.class Lcom/smartisanos/launcher/ha;
.super Landroid/app/IActivityObserver$Stub;
.source "ApplicationProxy.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/ja;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ja;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/ha;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-direct {p0}, Landroid/app/IActivityObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivitiesForeground(Ljava/lang/String;II)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "onActivitiesForeground return by activity name is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p3

    if-nez p3, :cond_1

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "mActivityObserverStub isActivityReady false"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    new-instance p3, Lcom/smartisanos/launcher/ga;

    const/16 v0, 0x64

    invoke-direct {p3, p0, v0, p1, p2}, Lcom/smartisanos/launcher/ga;-><init>(Lcom/smartisanos/launcher/ha;ILjava/lang/String;I)V

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mActivityObserverStub"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/smartisanos/smengine/n;->setName(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 6
    invoke-virtual {p3, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method
