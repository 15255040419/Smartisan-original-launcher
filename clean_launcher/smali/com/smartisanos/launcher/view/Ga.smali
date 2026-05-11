.class Lcom/smartisanos/launcher/view/Ga;
.super Ljava/lang/Object;
.source "DragLayer.java"


# static fields
.field private static final lv:Lcom/smartisanos/launcher/view/Ha;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/Ha;

    const-string v1, "root"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/view/Ha;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/Da;)V

    sput-object v0, Lcom/smartisanos/launcher/view/Ga;->lv:Lcom/smartisanos/launcher/view/Ha;

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/view/Ha;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/Ga;->lv:Lcom/smartisanos/launcher/view/Ha;

    return-object v0
.end method
