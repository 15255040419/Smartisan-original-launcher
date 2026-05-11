.class Lcom/smartisanos/launcher/view/activeicon/l;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/activeicon/m;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/activeicon/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/l;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/activeicon/k;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/activeicon/k;-><init>(Lcom/smartisanos/launcher/view/activeicon/l;I)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method
